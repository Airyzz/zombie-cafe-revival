package serialization

import (
	"cctpacker/cct_file"
	"encoding/json"
	"file_types"
	"fmt"
	"log"
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
	data := file_types.ReadFurnitureData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeFood(file *os.File, out_path string) {
	data := file_types.ReadFoods(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCharacters(file *os.File, out_path string) {
	data := file_types.ReadCharacters(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCharactersJP(file *os.File, out_path string) {
	data := file_types.ReadCharactersJP(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCharacterArt(file *os.File, out_path string) {
	data := file_types.ReadCharacterArt(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeOffsets(file *os.File, out_path string) {
	data := file_types.ReadImageOffsets(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func DeserializeCCTexture(file *os.File, out_path string) {
	data, image := cct_file.ReadCCTexture(file)
	b, err := json.MarshalIndent(data, "", "    ")

	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
	imaging.Save(image, out_path+".png")
}

func DeserializeAnimationData(file *os.File, out_path string) {
	data := file_types.ReadAnimationData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	writeJson(b, out_path)
}

func SerializeFurniture(file *os.File, jsonData string) {
	var data []file_types.Furniture
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	file_types.WriteFurnitureData(file, data)
}

func SerializeFood(file *os.File, jsonData string) {
	var data []file_types.Food
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	file_types.WriteFoods(file, data)
}

func SerializeCharacters(file *os.File, jsonData string) {
	var data []file_types.Character
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	file_types.WriteCharacters(file, data)
}

func SerializeCharacterArt(file *os.File, jsonData string) {
	var data file_types.CharacterArt
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	file_types.WriteCharacterArt(file, data)
}

func SerializeOffsets(file *os.File, jsonData string) {
	var data file_types.ImageOffsets
	err := json.Unmarshal([]byte(jsonData), &data)
	if err != nil {
		fmt.Println(err)
	}

	file_types.WriteImageOffsets(file, data)
}

type PackedTextureData struct {
	offsetsName string
	scale       float32
}

type PackedCharacterData struct {
	textureData      PackedTextureData
	characterArtFile string
}

func PackCharacters(in_directory string, out_directory string, out_data_directory string) {
	entries, _ := os.ReadDir(in_directory)
	files := []string{}
	folders := []string{}

	fmt.Println(filepath.Base(in_directory))
	file_map := map[string]PackedCharacterData{
		"characterParts":  {PackedTextureData{"characterOffsets.bin.mid", 0.75}, "characterArt.bin.mid"},
		"characterParts2": {PackedTextureData{"characterOffsets2.bin.mid", 0.75}, "characterArt2.bin.mid"},
	}

	folder_name := filepath.Base(in_directory)
	out_data := file_map[folder_name]

	piecesPerPack := -1

	for _, entry := range entries {
		if entry.IsDir() {
			folders = append(folders, entry.Name())

			folder_path := filepath.Join(in_directory, entry.Name())
			dir_files, _ := os.ReadDir(folder_path)
			numImages := 0
			for _, file := range dir_files {
				if !file.IsDir() {
					if !strings.HasSuffix(file.Name(), ".png") {
						continue
					}
					numImages += 1
					file_path := filepath.Join(folder_path, file.Name())
					files = append(files, file_path)
					fmt.Println(file_path)
				}
			}

			if piecesPerPack == -1 {
				piecesPerPack = numImages
			} else if numImages != piecesPerPack {
				log.Fatal("Inconsistent number of textures per image pack")
			}
		}
	}

	fmt.Printf("Num pieces per pack: %d\n", piecesPerPack)

	img, offsets := cct_file.WritePackedTexture(files, out_data.textureData.scale, false, 0, 4, 2)
	offsets.Type = 2
	out_offsets_path := filepath.Join(out_directory, out_data.textureData.offsetsName)
	f, err := os.Create(out_offsets_path)

	if err != nil {
		log.Fatal(err)
	}

	file_types.WriteImageOffsets(f, offsets)
	f.Close()

	out_character_art_path := filepath.Join(out_data_directory, out_data.characterArtFile)
	characterArtData := file_types.CharacterArt{}

	characterArtData.PiecesPerString = byte(piecesPerPack)
	characterArtData.Strings = folders

	f, err = os.Create(out_character_art_path)

	if err != nil {
		log.Fatal(err)
	}

	file_types.WriteCharacterArt(f, characterArtData)

	cct := cct_file.CCTexture{}
	cct.Magic = "CCTX"
	cct.U1 = 2
	cct.Width = int32(img.Bounds().Size().X)
	cct.Height = int32(img.Bounds().Size().Y)

	out_cct_path := filepath.Join(out_directory, folder_name+".cct.mid")
	f, err = os.Create(out_cct_path)

	if err != nil {
		log.Fatal(err)
	}

	cct_file.WriteCCTexture(f, cct, img)
	imaging.Save(img, out_cct_path+".png")
	f.Close()

}

func PackTextures(in_directory string, out_directory string) {
	entries, _ := os.ReadDir(in_directory)
	files := []string{}

	fmt.Println(filepath.Base(in_directory))
	file_map := map[string]PackedTextureData{
		"recipeImages":    {"recipeOffsets.bin.mid", .5},
		"recipeImages2":   {"recipeOffsets2.bin.mid", .5},
		"mapTiles":        {"mapTilesOffsets.bin.mid", 1},
		"furniture":       {"furnitureOffsets.bin.mid", 1},
		"furniture2":      {"furnitureOffsets2.bin.mid", 0.75},
		"furniture3":      {"furnitureOffsets3.bin.mid", 1},
		"ingameUiImages":  {"ingameUiOffsets.bin.mid", 1},
		"menuImages":      {"menuOffsets.bin.mid", 1},
		"menuTitleImages": {"menuTitleOffsets.bin.mid", 1},
	}

	folder_name := filepath.Base(in_directory)
	out_data := file_map[folder_name]

	for _, entry := range entries {
		if entry.IsDir() {
			continue
		}

		if !strings.HasSuffix(entry.Name(), ".png") {
			continue
		}

		file_path := filepath.Join(in_directory, entry.Name())
		files = append(files, file_path)
	}

	img, offsets := cct_file.WritePackedTexture(files, out_data.scale, true, -1, 2, 0)
	offsets.Type = 2
	out_offsets_path := filepath.Join(out_directory, out_data.offsetsName)
	f, err := os.Create(out_offsets_path)

	if err != nil {
		log.Fatal(err)
	}

	file_types.WriteImageOffsets(f, offsets)
	f.Close()

	cct := cct_file.CCTexture{}
	cct.Magic = "CCTX"
	cct.U1 = 2
	cct.Width = int32(img.Bounds().Size().X)
	cct.Height = int32(img.Bounds().Size().Y)

	out_cct_path := filepath.Join(out_directory, folder_name+".cct.mid")
	f, err = os.Create(out_cct_path)

	imaging.Save(img, out_cct_path+".png")

	if err != nil {
		log.Fatal(err)
	}

	cct_file.WriteCCTexture(f, cct, img)
	f.Close()
}

func tryWriteUnpackedData(result cct_file.TextureResult, index int, out_path string) {
	if result.Offset.XOffset != 0 || result.Offset.YOffset != 0 || result.Offset.XOffsetFlipped != 0 || result.Offset.YOffsetFlipped != 0 {

		// result.Metadata.XOffset = int16(float32(result.Metadata.XOffset) * 0.75)
		// result.Metadata.XOffset2 = int16(float32(result.Metadata.XOffset) * 0.75)
		// result.Metadata.YOffset = int16(float32(result.Metadata.YOffset) * 0.75)
		// result.Metadata.YOffset2 = int16(float32(result.Metadata.YOffset2) * 0.75)

		b, _ := json.MarshalIndent(result.Metadata, "", "    ")
		writeJson(b, out_path)
	}
}

func UnpackCharacters(in_directory string, out_directory string, data_directory string, is_jp bool) {
	file_map := map[string]PackedCharacterData{
		"characterParts.cct.mid":  {PackedTextureData{"characterOffsets.bin.mid", 0.75}, "characterArt.bin.mid"},
		"characterParts2.cct.mid": {PackedTextureData{"characterOffsets2.bin.mid", 0.75}, "characterArt2.bin.mid"},
	}

	if is_jp {
		file_map = map[string]PackedCharacterData{
			"characterParts.cct.mid":  {PackedTextureData{"characterOffsets.bin.mid", 1}, "characterArt.bin.mid"},
			"characterParts2.cct.mid": {PackedTextureData{"characterOffsets2.bin.mid", 1}, "characterArt2.bin.mid"},
			"characterParts3.cct.mid": {PackedTextureData{"characterOffsets3.bin.mid", 1}, "characterArt3.bin.mid"},
			"characterParts4.cct.mid": {PackedTextureData{"characterOffsets4.bin.mid", 1}, "characterArt4.bin.mid"},
			"characterParts5.cct.mid": {PackedTextureData{"characterOffsets5.bin.mid", 1}, "characterArt5.bin.mid"},
		}
	}

	for cct, data := range file_map {
		path := filepath.Join(in_directory, cct)
		offsets_path := filepath.Join(in_directory, data.textureData.offsetsName)
		character_art_path := filepath.Join(data_directory, data.characterArtFile)

		file, err := os.Open(path)
		if err != nil {
			log.Println(err)
			continue
		}

		offsets_file, err := os.Open(offsets_path)
		if err != nil {
			log.Println(err)
			continue
		}

		art_file, err := os.Open(character_art_path)
		if err != nil {
			log.Println(err)
			continue
		}

		textures := cct_file.ReadPackedTextures(file, offsets_file, data.textureData.scale)
		character_art_strings := file_types.ReadCharacterArt(art_file)

		piecesPerCharacter := int(character_art_strings.PiecesPerString)
		for character_index := range character_art_strings.Strings {
			out_folder := filepath.Join(out_directory, strings.Split(cct, ".")[0], character_art_strings.Strings[character_index])
			os.MkdirAll(out_folder, os.ModePerm)
			fmt.Println("Saving: " + character_art_strings.Strings[character_index])

			for i := 0; i < piecesPerCharacter; i++ {
				index := (character_index * piecesPerCharacter) + i
				texture := textures[index]
				file_path := filepath.Join(out_folder, texture.Name)
				imaging.Save(texture.Image, file_path)
				tryWriteUnpackedData(texture, i, file_path)
			}
		}
	}
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
		"ingameUiImages.cct.mid":  {"ingameUiOffsets.bin.mid", 1},
		"menuImages.cct.mid":      {"menuOffsets.bin.mid", 1},
		"menuTitleImages.cct.mid": {"menuTitleOffsets.bin.mid", 1},
	}

	for cct, data := range file_map {
		path := filepath.Join(in_directory, cct)
		offsets_path := filepath.Join(in_directory, data.offsetsName)

		file, err := os.Open(path)
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
		os.MkdirAll(out_folder, os.ModePerm)

		textures := cct_file.ReadPackedTextures(file, offsets_file, data.scale)

		for i := range textures {
			result := textures[i]
			out_path := filepath.Join(out_folder, result.Name)
			// /fmt.Println("Writing: " + out_path)
			imaging.Save(result.Image, out_path)
			tryWriteUnpackedData(result, i, out_path)
		}
	}
}

func DeserializeFiles(in_directory string, out_directory string, is_jp bool) {

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

	if is_jp {
		deserialize_map = map[string]func(*os.File, string){
			"characterData.bin.mid":   DeserializeCharactersJP,
			"characterParts.cct.mid":  DeserializeCCTexture,
			"characterParts2.cct.mid": DeserializeCCTexture,
			"characterParts3.cct.mid": DeserializeCCTexture,
			"characterParts4.cct.mid": DeserializeCCTexture,
			"characterParts5.cct.mid": DeserializeCCTexture,
		}
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
