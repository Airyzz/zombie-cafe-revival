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
	data.Form = ReadByte(file)
	data.Type = ReadByte(file)
	data.Direction = ReadByte(file)
	data.AnimationFile = ReadString(file)
	return data
}

func ReadAnimationData(file io.Reader) []AnimationData {
	data := []AnimationData{}

	length := ReadByte(file)

	for i := 0; i < int(length); i++ {
		data = append(data, readSingleAnimationData(file))
	}

	return data
}
