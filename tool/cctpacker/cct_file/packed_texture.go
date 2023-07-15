package cct_file

import (
	"encoding/json"
	"errors"
	"file_types"
	"fmt"
	"image"
	"image/color"
	"io"
	"log"
	"math"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"tool/resource_manager/utils"

	"github.com/disintegration/imaging"
)

type TextureMetadata struct {
	XOffset  int16
	YOffset  int16
	XOffset2 int16
	YOffset2 int16
	Index    int
}

type TextureResult struct {
	Image    image.Image
	Name     string
	Offset   file_types.Offset
	Metadata TextureMetadata
}

func isNumeric(s string) bool {
	_, err := strconv.ParseFloat(s, 64)
	return err == nil
}

func getLeadingNumber(s string) (int64, error) {
	lastDigit := -1
	for i := 0; i < len(s); i++ {
		if !isNumeric(string(s[i])) {
			lastDigit = i
			break
		}
	}

	if lastDigit == -1 {
		return 0, errors.New("No leading digit")
	}

	return strconv.ParseInt(s[0:lastDigit], 10, 64)
}

func ReadPackedTextures(cctFile io.Reader, offsetsFile io.Reader, scale float32) []TextureResult {
	_, packed_image := ReadCCTexture(cctFile)
	offsets := file_types.ReadImageOffsets(offsetsFile)

	result := []TextureResult{}

	for image_index := range offsets.Offsets {
		image_entry := offsets.Offsets[image_index]
		width := int(math.Round(float64(image_entry.W) * float64(scale)))
		height := int(math.Round(float64(image_entry.H) * float64(scale)))
		image := imaging.New(width, height, color.Transparent)

		for x := 0; x < width; x++ {
			for y := 0; y < height; y++ {

				source_x := x + int(math.Round(float64(image_entry.X)*float64(scale)))
				source_y := y + int(math.Round(float64(image_entry.Y)*float64(scale)))

				color := packed_image.NRGBAAt(source_x, source_y)
				image.SetNRGBA(x, y, color)
			}
		}

		name := image_entry.Name

		if image_entry.Name == "" {
			name = fmt.Sprintf("%d.png", image_index)

		}

		result = append(result, TextureResult{
			image,
			name,
			image_entry,
			TextureMetadata{
				Index:    image_index,
				XOffset:  image_entry.XOffset,
				YOffset:  image_entry.YOffset,
				XOffset2: image_entry.XOffsetFlipped,
				YOffset2: image_entry.YOffsetFlipped,
			},
		})
	}

	return result
}

func WritePackedTexture(images []string, scale float32, sortByName bool, xOffset int16) (*image.NRGBA, file_types.ImageOffsets) {
	rects := []utils.Rect{}

	data := file_types.ImageOffsets{}
	data.Offsets = make([]file_types.Offset, len(images))
	if sortByName {

		sort.Slice(images, func(i, j int) bool {
			str1 := images[i]
			str2 := images[j]

			str1 = filepath.Base(str1)
			str2 = filepath.Base(str2)

			num1, err := getLeadingNumber(str1)
			if err != nil {
				return str1 < str2
			}

			num2, err := getLeadingNumber(str2)
			if err != nil {
				return str1 < str2
			}

			return num1 < num2
		})
	}

	fmt.Print(images)

	padding := 4

	for i, file := range images {
		var entryData file_types.Offset
		var metaData TextureMetadata
		b, err := os.ReadFile(file + ".json")

		fmt.Println(file)

		if err != nil {
			fmt.Println("Could not find json file: " + file + ".json, continuing with no offsets")
		} else {
			json.Unmarshal([]byte(b), &metaData)
		}

		img, err := imaging.Open(file)
		var rect utils.Rect

		if err != nil {
			rect = utils.Rect{W: 1, H: 1, OriginalIndex: i}
		} else {
			bound := img.Bounds()
			rect = utils.Rect{
				W:             bound.Size().X + padding,
				H:             bound.Size().Y + padding,
				OriginalIndex: i,
			}
		}

		entryData.XOffset = metaData.XOffset
		entryData.YOffset = metaData.YOffset
		entryData.XOffsetFlipped = metaData.XOffset2
		entryData.YOffsetFlipped = metaData.YOffset2
		fmt.Println("Initial rect:")
		fmt.Print(entryData)
		data.Offsets[i] = entryData

		rects = append(rects, rect)
	}

	utils.PackRectangles(rects, 2048, 2048)

	num_not_packed := 0
	for _, rect := range rects {
		if !rect.WasPacked {
			fmt.Printf("Could not pack: %d\n", rect.OriginalIndex)
			num_not_packed += 1
		}
	}

	fmt.Printf("Num rects not packed: %d\n", num_not_packed)

	if num_not_packed > 0 {
		log.Fatal("Could not pack all images :(")
	}

	img := imaging.New(2048, 2048, color.Transparent)

	for _, rect := range rects {
		img_path := images[rect.OriginalIndex]
		data.Offsets[rect.OriginalIndex].X = int16(math.Round(float64(rect.X)*(1/float64(scale)))) + xOffset
		data.Offsets[rect.OriginalIndex].Y = int16(math.Round(float64(rect.Y) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].W = int16(math.Round(float64(rect.W-padding) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].H = int16(math.Round(float64(rect.H-padding) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].Name = filepath.Base(img_path)

		if rect.W-padding <= 1 && rect.H-padding <= 6 {
			continue
		}

		src_img, err := imaging.Open(img_path)
		if err != nil {
			continue
		}

		bound := src_img.Bounds().Size()

		src, ok := src_img.(*image.NRGBA)

		if !ok {
			log.Fatal("Could not cast image to NRGBA")
		}

		for x := 0; x < bound.X; x++ {
			for y := 0; y < bound.Y; y++ {
				col := src.NRGBAAt(x, y)

				img.SetNRGBA(rect.X+x, rect.Y+y, color.NRGBA{
					R: uint8(col.R),
					G: uint8(col.G),
					B: uint8(col.B),
					A: uint8(col.A),
				})
			}
		}
	}

	return img, data
}
