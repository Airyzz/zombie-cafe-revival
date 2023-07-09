package file_types

import (
	"encoding/binary"
	"io"
	"math"
)

func writeUint16(file io.Writer, value uint16) {
	b := make([]byte, 2)
	binary.BigEndian.PutUint16(b, value)
	file.Write(b)
}

func writeUint32(file io.Writer, value uint32) {
	b := make([]byte, 4)
	binary.BigEndian.PutUint32(b, value)
	file.Write(b)
}

func writeUint32LittleEndian(file io.Writer, value uint32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, value)
	file.Write(b)
}

func writeInt16(file io.Writer, value int16) {
	b := make([]byte, 2)
	binary.BigEndian.PutUint16(b, uint16(value))
	file.Write(b)
}

func writeInt32(file io.Writer, value int32) {
	b := make([]byte, 4)
	binary.BigEndian.PutUint32(b, uint32(value))
	file.Write(b)
}

func writeInt32LittleEndian(file io.Writer, value int32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, uint32(value))
	file.Write(b)
}

func writeFloat(file io.Writer, value float32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, math.Float32bits(value))
	file.Write(b)
}

func writeByte(file io.Writer, value byte) {
	file.Write([]byte{value})
}

func writeBool(file io.Writer, value bool) {
	if value {
		file.Write([]byte{1})
	} else {
		file.Write([]byte{0})
	}
}

func writeString(file io.Writer, value string) {
	writeInt16(file, int16(len(value)))
	file.Write([]byte(value))
}
