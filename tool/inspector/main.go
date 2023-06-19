package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main() {
	fmt.Println(len(os.Args), os.Args)

	if len(os.Args) < 2 {
		log.Fatal("Specify data folder")
	}

	folder := os.Args[1]
	path := filepath.Join(folder, "furnitureData.bin.mid")

	f, err := os.Open(path)
	if err != nil {
		log.Fatal(err)
	}

	data := readFurnitureData(f)

	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(string(b))
}
