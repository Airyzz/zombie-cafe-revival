package file_types

import (
	"io"
)

type CharacterArt struct {
	PiecesPerString byte
	Strings         []string
}

func ReadCharacterArt(file io.Reader) CharacterArt {
	data := CharacterArt{}
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

func WriteCharacterArt(file io.Writer, characters CharacterArt) {
	writeByte(file, byte(characters.PiecesPerString))
	for _, v := range characters.Strings {
		writeString(file, v)
	}

	writeString(file, "")
}
