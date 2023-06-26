package file_types

import (
	"os"
)

type imageOffsets struct {
	Type    byte
	Offsets []imageOffset
}

type imageOffset struct {
	Name string
	X    int16
	Y    int16
	W    int16
	H    int16

	U5 int16
	U6 int16
	U7 int16
	U8 int16
}

func readSingleOffset(file *os.File, fileType int) imageOffset {
	var d imageOffset

	if fileType == 2 {
		d.Name = readString(file)
	}

	d.X = readInt16(file)
	d.Y = readInt16(file)
	d.W = readInt16(file)
	d.H = readInt16(file)

	if fileType == 2 {
		d.U5 = readInt16(file)
		d.U6 = readInt16(file)
		d.U7 = readInt16(file)
		d.U8 = readInt16(file)
	}

	return d
}

func writeSingleOffset(file *os.File, data imageOffset, fileType int) {

	if fileType == 2 {
		writeString(file, data.Name)
	}

	writeInt16(file, data.X)
	writeInt16(file, data.Y)
	writeInt16(file, data.W)
	writeInt16(file, data.H)

	if fileType == 2 {
		writeInt16(file, data.U5)
		writeInt16(file, data.U6)
		writeInt16(file, data.U7)
		writeInt16(file, data.U8)
	}
}

func readImageOffsets(file *os.File) imageOffsets {
	data := imageOffsets{}

	data.Type = readByte(file)

	num := int(readInt16(file))

	data.Offsets = []imageOffset{}

	for i := 0; i < num; i++ {
		data.Offsets = append(data.Offsets, readSingleOffset(file, int(data.Type)))
	}

	return data
}

func writeImageOffsets(file *os.File, data imageOffsets) {
	writeByte(file, data.Type)
	writeInt16(file, int16(len(data.Offsets)))

	for _, v := range data.Offsets {
		writeSingleOffset(file, v, int(data.Type))
	}
}
