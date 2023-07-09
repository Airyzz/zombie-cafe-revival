package file_types

import (
	"io"
)

type characterArtData struct {
	PiecesPerString byte
	Strings         []string
}

func readCharacterArtData(file io.Reader) characterArtData {
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

func writeCharacterArtData(file io.Writer, characters characterArtData) {
	writeByte(file, byte(characters.PiecesPerString))
	for _, v := range characters.Strings {
		writeString(file, v)
	}

	writeString(file, "")
}
