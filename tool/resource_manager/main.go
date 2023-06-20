package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"path/filepath"
	filetypes "resource_manager/file_types"
)

func main() {
	fmt.Println(len(os.Args), os.Args)

	var mode string
	flag.StringVar(&mode, "m", "mode", "Controls if files should be packed or unpacked")

	var in_directory string
	flag.StringVar(&in_directory, "i", "input", "Path of input directory")

	var out_directory string
	flag.StringVar(&out_directory, "o", "output", "Path of output directory")

	flag.Parse()

	fmt.Println(mode)

	deserialize_map := map[string]func(*os.File) string{
		"furnitureData.bin.mid": filetypes.DeserializeFurniture,
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

		fmt.Println(deserialized)
	}
}
