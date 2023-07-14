package file_types

import (
	"encoding/binary"
	"io"
	"math"
)

func WriteUint16(file io.Writer, value uint16) {
	b := make([]byte, 2)
	binary.BigEndian.PutUint16(b, value)
	file.Write(b)
}

func WriteUint32(file io.Writer, value uint32) {
	b := make([]byte, 4)
	binary.BigEndian.PutUint32(b, value)
	file.Write(b)
}

func WriteUint32LittleEndian(file io.Writer, value uint32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, value)
	file.Write(b)
}

func WriteInt16(file io.Writer, value int16) {
	b := make([]byte, 2)
	binary.BigEndian.PutUint16(b, uint16(value))
	file.Write(b)
}

func WriteInt32(file io.Writer, value int32) {
	b := make([]byte, 4)
	binary.BigEndian.PutUint32(b, uint32(value))
	file.Write(b)
}

func WriteInt32LittleEndian(file io.Writer, value int32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, uint32(value))
	file.Write(b)
}

func WriteFloat(file io.Writer, value float32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, math.Float32bits(value))
	file.Write(b)
}

func WriteByte(file io.Writer, value byte) {
	file.Write([]byte{value})
}

func WriteBool(file io.Writer, value bool) {
	if value {
		file.Write([]byte{1})
	} else {
		file.Write([]byte{0})
	}
}

func WriteString(file io.Writer, value string) {
	WriteInt16(file, int16(len(value)))
	file.Write([]byte(value))
}
