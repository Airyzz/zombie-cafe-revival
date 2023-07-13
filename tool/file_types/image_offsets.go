package file_types

import (
	"io"
)

type ImageOffsets struct {
	Type    byte
	Offsets []Offset
}

type Offset struct {
	Name string
	X    int16
	Y    int16
	W    int16
	H    int16

	XOffset        int16
	YOffset        int16
	XOffsetFlipped int16
	YOffsetFlipped int16
}

func readSingleOffset(file io.Reader, fileType int) Offset {
	var d Offset

	if fileType == 2 {
		d.Name = readString(file)
	}

	d.X = readInt16(file)
	d.Y = readInt16(file)
	d.W = readInt16(file)
	d.H = readInt16(file)

	if fileType == 2 {
		d.XOffset = readInt16(file)
		d.YOffset = readInt16(file)
		d.XOffsetFlipped = readInt16(file)
		d.YOffsetFlipped = readInt16(file)
	}

	return d
}

func writeSingleOffset(file io.Writer, data Offset, fileType int) {

	if fileType == 2 {
		writeString(file, data.Name)
	}

	writeInt16(file, data.X)
	writeInt16(file, data.Y)
	writeInt16(file, data.W)
	writeInt16(file, data.H)

	if fileType == 2 {
		writeInt16(file, data.XOffset)
		writeInt16(file, data.YOffset)
		writeInt16(file, data.XOffsetFlipped)
		writeInt16(file, data.YOffsetFlipped)
	}
}

func ReadImageOffsets(file io.Reader) ImageOffsets {
	data := ImageOffsets{}

	data.Type = readByte(file)

	num := int(readInt16(file))

	data.Offsets = []Offset{}

	for i := 0; i < num; i++ {
		data.Offsets = append(data.Offsets, readSingleOffset(file, int(data.Type)))
	}

	return data
}

func WriteImageOffsets(file io.Writer, data ImageOffsets) {
	writeByte(file, data.Type)
	writeInt16(file, int16(len(data.Offsets)))

	for _, v := range data.Offsets {
		writeSingleOffset(file, v, int(data.Type))
	}
}
