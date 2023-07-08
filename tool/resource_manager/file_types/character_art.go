package file_types

import (
	"os"
)

type characterArtData struct {
	PiecesPerString byte
	Strings         []string
}

func readCharacterArtData(file *os.File) characterArtData {
	data := characterArtData{}
	data.PiecesPerString = readByte(file)
	data.Strings = []string{}

	for {
		str := readString(file)

		if str == "" {
			break
		}

		data.Strings = append(data.Strings, str)
	}

	return data
}

func writeCharacterArtData(file *os.File, characters characterArtData) {
	writeByte(file, byte(characters.PiecesPerString))
	for _, v := range characters.Strings {
		writeString(file, v)
	}

	writeString(file, "")
}
