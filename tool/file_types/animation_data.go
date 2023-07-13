package file_types

import (
	"io"
)

type AnimationData struct {
	Form          byte
	Type          byte
	Direction     byte
	AnimationFile string
}

func readSingleAnimationData(file io.Reader) AnimationData {
	data := AnimationData{}
	data.Form = readByte(file)
	data.Type = readByte(file)
	data.Direction = readByte(file)
	data.AnimationFile = readString(file)
	return data
}

func ReadAnimationData(file io.Reader) []AnimationData {
	data := []AnimationData{}

	length := readByte(file)

	for i := 0; i < int(length); i++ {
		data = append(data, readSingleAnimationData(file))
	}

	return data
}
