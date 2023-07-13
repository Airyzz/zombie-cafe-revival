package file_types

import (
	"fmt"
	"image"
	"image/color"
	"io"
	"math"

	"github.com/disintegration/imaging"
)

type TextureResult struct {
	Image  image.Image
	Name   string
	Offset Offset
}

func ReadPackedTextures(cctFile io.Reader, offsetsFile io.Reader, scale float32) []TextureResult {
	_, packed_image := ReadCCTexture(cctFile)
	offsets := ReadImageOffsets(offsetsFile)

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
		})
	}

	return result
}

/*func WritePackedTexture(images []string, scale float32) (*image.NRGBA, ImageOffsets) {
	rects := []utils.Rect{}

	data := ImageOffsets{}
	data.Offsets = make([]Offset, len(images))

	for i, file := range images {
		var entryData Offset
		b, err := os.ReadFile(file + ".json")

		if err != nil {
			log.Fatal("Could not find json file: " + file + ".json")
		}

		json.Unmarshal([]byte(b), &entryData)

		img, _ := imaging.Open(file)
		bound := img.Bounds()
		rect := utils.Rect{
			W:             bound.Size().X + 3,
			H:             bound.Size().Y + 3,
			OriginalIndex: i,
		}

		data.Offsets[i] = entryData

		rects = append(rects, rect)
	}

	utils.PackRectangles(rects, 2048, 2048)

	num_not_packed := 0
	for _, rect := range rects {
		if !rect.WasPacked {
			num_not_packed += 1
		}
	}

	fmt.Printf("Num rects not packed: %d\n", num_not_packed)

	img := imaging.New(2048, 2048, color.Transparent)

	for _, rect := range rects {
		img_path := images[rect.OriginalIndex]
		src_img, _ := imaging.Open(img_path)

		src, _ := src_img.(*image.NRGBA)

		data.Offsets[rect.OriginalIndex].X = int16(math.Round(float64(rect.X) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].Y = int16(math.Round(float64(rect.Y) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].W = int16(math.Round(float64(rect.W) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].H = int16(math.Round(float64(rect.H) * (1 / float64(scale))))
		data.Offsets[rect.OriginalIndex].Name = filepath.Base(img_path)

		for x := 0; x < rect.W; x++ {
			for y := 0; y < rect.H; y++ {
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
}*/
