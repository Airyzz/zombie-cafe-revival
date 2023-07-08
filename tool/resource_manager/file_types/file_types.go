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
