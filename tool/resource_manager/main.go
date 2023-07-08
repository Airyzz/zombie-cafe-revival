package main

import (
	"flag"
	"log"
	"tool/resource_manager/file_types"
)

func main() {
	var mode string
	flag.StringVar(&mode, "m", "", "Controls if files should be packed or unpacked")

	var in_directory string
	flag.StringVar(&in_directory, "i", "", "Path of input directory")

	var out_directory string
	flag.StringVar(&out_directory, "o", "", "Path of output directory")

	flag.Parse()

	if mode == "" {
		log.Fatal("Please specify a mode with -m (pack or unpack)")
	}

	if mode == "unpack" {
		file_types.DeserializeFiles(in_directory, out_directory)
	} else if mode == "pack" {
		file_types.SerializeFiles(in_directory, out_directory)
	} else if mode == "unpack_textures" {
		file_types.UnpackTextures(in_directory, out_directory)
	}
}
