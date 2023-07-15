package main

import (
	"file_types"
	"flag"
	"fmt"
	"log"
	"os"
	"tool/resource_manager/serialization"
)

func main() {
	var mode string
	flag.StringVar(&mode, "m", "", "Controls if files should be packed or unpacked")

	var in_directory string
	flag.StringVar(&in_directory, "i", "", "Path of input directory")

	var out_directory string
	flag.StringVar(&out_directory, "o", "", "Path of output directory")

	var data_directory string
	flag.StringVar(&data_directory, "d", "", "Path of data directory")

	flag.Parse()

	if mode == "" {
		log.Fatal("Please specify a mode with -m (pack or unpack)")
	}

	if mode == "unpack" {
		serialization.DeserializeFiles(in_directory, out_directory)
	} else if mode == "pack" {
		serialization.SerializeFiles(in_directory, out_directory)
	} else if mode == "unpack_textures" {
		serialization.UnpackTextures(in_directory, out_directory)
	} else if mode == "pack_textures" {
		serialization.PackTextures(in_directory, out_directory)
	} else if mode == "unpack_characters" {
		serialization.UnpackCharacters(in_directory, out_directory, data_directory)
	} else if mode == "pack_characters" {
		serialization.PackCharacters(in_directory, out_directory, out_directory)
	} else if mode == "validate_save" {
		file_types.ValidateSave(in_directory)
	} else if mode == "validate_cafe" {
		file_types.ValidateCafe(in_directory)
	} else if mode == "validate_friend_data" {
		f, err := os.Open(in_directory)
		if err != nil {
			fmt.Println("Could not open file")
		}
		result := file_types.ValidateFriendData(f)
		if result {
			fmt.Println("File is valid!")
		} else {
			fmt.Println("File is not valid :(")
		}
	}
}
