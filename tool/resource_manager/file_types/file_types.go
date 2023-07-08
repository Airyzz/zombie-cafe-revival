package file_types

import (
	"encoding/json"
	"fmt"
	"image/color"
	"log"
	"math"
	"os"
	"path/filepath"
	"strings"

	"github.com/disintegration/imaging"
)

func writeJson(data []byte, out_path string) {
	f, err := os.Create(out_path + ".json")
	if err != nil {
		log.Fatal(err)
	}

	new_data := strings.ReplaceAll(string(data), "\r\n", "\n")

	f.Write([]byte(new_data))
	f.Close()
}

func DeserializeFurniture(file *os.File, out_path string) {
	data := readFurnitureData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeFood(file *os.File, out_path string) {
	data := readFoodData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCharacters(file *os.File, out_path string) {
	data := readCharacterData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCharacterArt(file *os.File, out_path string) {
	data := readCharacterArtData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeOffsets(file *os.File, out_path string) {
	data := readImageOffsets(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCCTexture(file *os.File, out_path string) {
	data, image := readCCTexture(file)
	b, err := json.MarshalIndent(data, "", "    ")

	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
	imaging.Save(image, out_path+".png")
}

func DeserializeAnimationData(file *os.File, out_path string) {
	data := readAnimationData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func SerializeFurniture(file *os.File, jsonData string) {
	var data []furnitureData
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	writeFurnitureData(file, data)
}

func SerializeFood(file *os.File, jsonData string) {
	var data []foodData
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	writeFoodData(file, data)
}

func SerializeCharacters(file *os.File, jsonData string) {
	var data []characterData
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	writeCharacterData(file, data)
}

func SerializeCharacterArt(file *os.File, jsonData string) {
	var data characterArtData
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	writeCharacterArtData(file, data)
}

func SerializeOffsets(file *os.File, jsonData string) {
	var data imageOffsets
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	writeImageOffsets(file, data)
}

type PackedTextureData struct {
	offsetsName string
	scale       float32
}

func UnpackTextures(in_directory string, out_directory string) {

	// for some reason the developers hard coded some scaling factors...
	file_map := map[string]PackedTextureData{
		"recipeImages.cct.mid":    {"recipeOffsets.bin.mid", .5},
		"recipeImages2.cct.mid":   {"recipeOffsets2.bin.mid", .5},
		"mapTiles.cct.mid":        {"mapTilesOffsets.bin.mid", 1},
		"furniture.cct.mid":       {"furnitureOffsets.bin.mid", 1},
		"furniture2.cct.mid":      {"furnitureOffsets2.bin.mid", 0.75},
		"furniture3.cct.mid":      {"furnitureOffsets3.bin.mid", 1},
		"characterParts.cct.mid":  {"characterOffsets.bin.mid", 0.75},
		"characterParts2.cct.mid": {"characterOffsets2.bin.mid", 0.75},
		"ingameUiImages.cct.mid":  {"ingameUiOffsets.bin.mid", 1},
		"menuImages.cct.mid":      {"menuOffsets.bin.mid", 1},
		"menuTitleImages.cct.mid": {"menuTitleOffsets.bin.mid", 1},
	}

	for cct, data := range file_map {
		path := filepath.Join(in_directory, cct)
		offsets_path := filepath.Join(in_directory, data.offsetsName)

		cct_file, err := os.Open(path)
		if err != nil {
			log.Println(err)
			continue
		}

		offsets_file, err := os.Open(offsets_path)
		if err != nil {
			log.Println(err)
			continue
		}

		out_folder := filepath.Join(out_directory, strings.Split(cct, ".")[0])
		os.MkdirAll(out_folder, os.ModeAppend)

		_, packed_image := readCCTexture(cct_file)
		offsets := readImageOffsets(offsets_file)

		scale := data.scale

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

			name := fmt.Sprintf("%d_%s.png", image_index, image_entry.Name)

			if image_entry.Name == "" {
				name = fmt.Sprintf("%d.png", image_index)

			}
			out_path := filepath.Join(out_folder, name)
			fmt.Println("Writing: " + out_path)
			imaging.Save(image, out_path)
		}
	}
}

func DeserializeFiles(in_directory string, out_directory string) {

	deserialize_map := map[string]func(*os.File, string){
		"furnitureData.bin.mid":          DeserializeFurniture,
		"foodData.bin.mid":               DeserializeFood,
		"characterData.bin.mid":          DeserializeCharacters,
		"characterArt.bin.mid":           DeserializeCharacterArt,
		"characterArt2.bin.mid":          DeserializeCharacterArt,
		"characterOffsets.bin.mid":       DeserializeOffsets,
		"characterOffsets2.bin.mid":      DeserializeOffsets,
		"cafeUiOffsets.bin.mid":          DeserializeOffsets,
		"dialogOffsets.bin.mid":          DeserializeOffsets,
		"furnitureOffsets.bin.mid":       DeserializeOffsets,
		"furnitureOffsets2.bin.mid":      DeserializeOffsets,
		"furnitureOffsets3.bin.mid":      DeserializeOffsets,
		"ingameUiOffsets.bin.mid":        DeserializeOffsets,
		"ipad_CookBookUiOffsets.bin.mid": DeserializeOffsets,
		"ipad_ZukanUiOffsets.bin.mid":    DeserializeOffsets,
		"mapTilesOffsets.bin.mid":        DeserializeOffsets,
		"menuOffsets.bin.mid":            DeserializeOffsets,
		"menuTitleOffsets.bin.mid":       DeserializeOffsets,
		"recipeOffsets.bin.mid":          DeserializeOffsets,
		"recipeOffsets2.bin.mid":         DeserializeOffsets,
		"zcOffsets.bin.mid":              DeserializeOffsets,
		"characterParts.cct.mid":         DeserializeCCTexture,
		"characterParts2.cct.mid":        DeserializeCCTexture,
		"characterParts3.cct.mid":        DeserializeCCTexture,
		"characterParts4.cct.mid":        DeserializeCCTexture,
		"characterParts5.cct.mid":        DeserializeCCTexture,
		"furniture.cct.mid":              DeserializeCCTexture,
		"furniture2.cct.mid":             DeserializeCCTexture,
		"furniture3.cct.mid":             DeserializeCCTexture,
		"ingameUiImages.cct.mid":         DeserializeCCTexture,
		"loading.cct.mid":                DeserializeCCTexture,
		"mapTiles.cct.mid":               DeserializeCCTexture,
		"menuImages.cct.mid":             DeserializeCCTexture,
		"menuTitleImages.cct.mid":        DeserializeCCTexture,
		"recipeImages.cct.mid":           DeserializeCCTexture,
		"recipeImages2.cct.mid":          DeserializeCCTexture,
		"animationData.bin.mid":          DeserializeAnimationData,
	}

	for key, deserializer := range deserialize_map {
		path := filepath.Join(in_directory, key)

		fmt.Println(path)
		f, err := os.Open(path)
		if err != nil {
			log.Println(err)
			continue
		}

		outpath := filepath.Join(out_directory, key)
		deserializer(f, outpath)
		f.Close()
	}
}

func SerializeFiles(in_directory string, out_directory string) {

	log.Println("Serializing data files: " + in_directory)

	deserialize_map := map[string]func(*os.File, string){
		"furnitureData.bin.mid":          SerializeFurniture,
		"foodData.bin.mid":               SerializeFood,
		"characterData.bin.mid":          SerializeCharacters,
		"characterArt.bin.mid":           SerializeCharacterArt,
		"characterArt2.bin.mid":          SerializeCharacterArt,
		"characterOffsets.bin.mid":       SerializeOffsets,
		"characterOffsets2.bin.mid":      SerializeOffsets,
		"cafeUiOffsets.bin.mid":          SerializeOffsets,
		"dialogOffsets.bin.mid":          SerializeOffsets,
		"furnitureOffsets.bin.mid":       SerializeOffsets,
		"furnitureOffsets2.bin.mid":      SerializeOffsets,
		"furnitureOffsets3.bin.mid":      SerializeOffsets,
		"ingameUiOffsets.bin.mid":        SerializeOffsets,
		"ipad_CookBookUiOffsets.bin.mid": SerializeOffsets,
		"ipad_ZukanUiOffsets.bin.mid":    SerializeOffsets,
		"mapTilesOffsets.bin.mid":        SerializeOffsets,
		"menuOffsets.bin.mid":            SerializeOffsets,
		"menuTitleOffsets.bin.mid":       SerializeOffsets,
		"recipeOffsets.bin.mid":          SerializeOffsets,
		"recipeOffsets2.bin.mid":         SerializeOffsets,
		"zcOffsets.bin.mid":              SerializeOffsets,
	}

	for key, value := range deserialize_map {
		path := filepath.Join(in_directory, key+".json")

		b, err := os.ReadFile(path)

		if err != nil {
			continue
		}

		outpath := filepath.Join(out_directory, key)
		os.MkdirAll(filepath.Dir(outpath), os.ModePerm)

		f, err := os.Create(outpath)

		if err != nil {
			log.Fatal(err)
		}

		log.Println("Writing to " + outpath)

		value(f, string(b))
	}
}
