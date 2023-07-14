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
	data.PiecesPerString = ReadByte(file)
	data.Strings = []string{}

	for {
		str := ReadString(file)

		if str == "" {
			break
		}

		data.Strings = append(data.Strings, str)
	}

	return data
}

func WriteCharacterArt(file io.Writer, characters CharacterArt) {
	WriteByte(file, byte(characters.PiecesPerString))
	for _, v := range characters.Strings {
		WriteString(file, v)
	}

	WriteString(file, "")
}
