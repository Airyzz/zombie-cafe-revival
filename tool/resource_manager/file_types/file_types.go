package file_types

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func DeserializeFurniture(file *os.File) string {
	data := readFurnitureData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	return string(b)
}

func DeserializeFood(file *os.File) string {
	data := readFoodData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	return string(b)
}

func DeserializeCharacters(file *os.File) string {
	data := readCharacterData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	return string(b)
}

func DeserializeCharacterArt(file *os.File) string {
	data := readCharacterArtData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	return string(b)
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

func DeserializeFiles(in_directory string, out_directory string) {

	deserialize_map := map[string]func(*os.File) string{
		"furnitureData.bin.mid": DeserializeFurniture,
		"foodData.bin.mid":      DeserializeFood,
		"characterData.bin.mid": DeserializeCharacters,
		"characterArt.bin.mid":  DeserializeCharacterArt,
		"characterArt2.bin.mid": DeserializeCharacterArt,
	}

	for key, value := range deserialize_map {
		path := filepath.Join(in_directory, key)

		fmt.Println(path)
		f, err := os.Open(path)
		if err != nil {
			log.Println(err)
			continue
		}

		deserialized := value(f)
		f.Close()

		outpath := filepath.Join(out_directory, key+".json")

		f, err = os.Create(outpath)
		if err != nil {
			log.Fatal(err)
		}

		f.Write([]byte(deserialized))
		f.Close()

	}
}

func SerializeFiles(in_directory string, out_directory string) {

	log.Println("Serializing data files: " + in_directory)

	deserialize_map := map[string]func(*os.File, string){
		"furnitureData.bin.mid": SerializeFurniture,
		"foodData.bin.mid":      SerializeFood,
		"characterData.bin.mid": SerializeCharacters,
		"characterArt.bin.mid":  SerializeCharacterArt,
		"characterArt2.bin.mid": SerializeCharacterArt,
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
