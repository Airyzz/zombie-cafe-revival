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
		d.Name = ReadString(file)
	}

	d.X = ReadInt16(file)
	d.Y = ReadInt16(file)
	d.W = ReadInt16(file)
	d.H = ReadInt16(file)

	if fileType == 2 {
		d.XOffset = ReadInt16(file)
		d.YOffset = ReadInt16(file)
		d.XOffsetFlipped = ReadInt16(file)
		d.YOffsetFlipped = ReadInt16(file)
	}

	return d
}

func writeSingleOffset(file io.Writer, data Offset, fileType int) {

	if fileType == 2 {
		WriteString(file, data.Name)
	}

	WriteInt16(file, data.X)
	WriteInt16(file, data.Y)
	WriteInt16(file, data.W)
	WriteInt16(file, data.H)

	if fileType == 2 {
		WriteInt16(file, data.XOffset)
		WriteInt16(file, data.YOffset)
		WriteInt16(file, data.XOffsetFlipped)
		WriteInt16(file, data.YOffsetFlipped)
	}
}

func ReadImageOffsets(file io.Reader) ImageOffsets {
	data := ImageOffsets{}

	data.Type = ReadByte(file)

	num := int(ReadInt16(file))

	data.Offsets = []Offset{}

	for i := 0; i < num; i++ {
		data.Offsets = append(data.Offsets, readSingleOffset(file, int(data.Type)))
	}

	return data
}

func WriteImageOffsets(file io.Writer, data ImageOffsets) {
	WriteByte(file, data.Type)
	WriteInt16(file, int16(len(data.Offsets)))

	for _, v := range data.Offsets {
		writeSingleOffset(file, v, int(data.Type))
	}
}
