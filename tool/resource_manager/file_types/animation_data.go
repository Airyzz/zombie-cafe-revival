package file_types

import (
	"os"
)

type animationData struct {
	Form          byte
	Type          byte
	Direction     byte
	AnimationFile string
}

func readSingleAnimationData(file *os.File) animationData {
	data := animationData{}
	data.Form = readByte(file)
	data.Type = readByte(file)
	data.Direction = readByte(file)
	data.AnimationFile = readString(file)
	return data
}

func readAnimationData(file *os.File) []animationData {
	data := []animationData{}

	length := readByte(file)

	for i := 0; i < int(length); i++ {
		data = append(data, readSingleAnimationData(file))
	}

	return data
}
