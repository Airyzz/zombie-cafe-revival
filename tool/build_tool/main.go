package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"strings"
	"tool/build_tool/copylist"
	"tool/resource_manager/file_types"
)

func main() {
	var in_directory string
	flag.StringVar(&in_directory, "i", "", "Path of source")

	var out_directory string
	flag.StringVar(&out_directory, "o", "", "Path of output directory")

	flag.Parse()

	if in_directory == "" {
		log.Fatalln("In directory not specified")
	}

	if out_directory == "" {
		log.Fatalln("Out directory not specified")
	}

	os.RemoveAll(out_directory)
	copyFiles(in_directory, out_directory)

	file_types.SerializeFiles(filepath.Join(in_directory, "assets", "data"), filepath.Join(out_directory, "assets", "data"))
}

func copyFiles(in_directory, out_directory string) {
	files := copylist.GetCopyFiles()

	for _, file := range files {
		log.Println("Copying file: " + file)
		in_path := filepath.Join(in_directory, file)
		out_path := filepath.Join(out_directory, file)
		filepath.Dir(out_path)
		log.Println(in_path + " -> " + out_path)

		os.MkdirAll(filepath.Dir(out_path), os.ModePerm)

		bytesRead, err := ioutil.ReadFile(in_path)

		if err != nil {
			log.Fatal(err)
		}

		err = ioutil.WriteFile(out_path, bytesRead, 0644)

		if err != nil {
			log.Fatal(err)
		}
	}
}

func makeList(in_directory string) {
	err := filepath.Walk(in_directory,
		func(path string, info os.FileInfo, err error) error {
			if err != nil {
				return err
			}
			if !info.IsDir() {

				fmt.Println("\"" + strings.Replace(path, "../../src/", "", 1) + "\",")
			}

			return nil
		})
	if err != nil {
		log.Println(err)
	}
}
