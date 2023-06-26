package file_types

import (
	"os"
)

type characterArtData struct {
	U1      byte
	Strings []string
}

func readCharacterArtData(file *os.File) characterArtData {
	data := characterArtData{}
	data.U1 = readByte(file)
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
	writeByte(file, characters.U1)
	for _, v := range characters.Strings {
		writeString(file, v)
	}

	writeString(file, "")
}
