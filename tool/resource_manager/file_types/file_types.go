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

func SerializeFurniture(file *os.File, jsonData string) {
	var data []furnitureData
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	writeFurnitureData(file, data)
}

func DeserializeFiles(in_directory string, out_directory string) {
	deserialize_map := map[string]func(*os.File) string{
		"furnitureData.bin.mid": DeserializeFurniture,
	}

	for key, value := range deserialize_map {
		path := filepath.Join(in_directory, key)
		fmt.Println(path)
		f, err := os.Open(path)
		if err != nil {
			log.Fatal(err)
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
	}

	for key, value := range deserialize_map {
		path := filepath.Join(in_directory, key+".json")

		b, err := os.ReadFile(path)

		if err != nil {
			log.Fatal(err)
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
