package file_types

import (
	"encoding/binary"
	"math"
	"os"
)

func writeUint16(file *os.File, value uint16) {
	b := make([]byte, 2)
	binary.BigEndian.PutUint16(b, value)
	file.Write(b)
}

func writeUint32(file *os.File, value uint32) {
	b := make([]byte, 4)
	binary.BigEndian.PutUint32(b, value)
	file.Write(b)
}

func writeInt16(file *os.File, value int16) {
	b := make([]byte, 2)
	binary.BigEndian.PutUint16(b, uint16(value))
	file.Write(b)
}

func writeInt32(file *os.File, value int32) {
	b := make([]byte, 4)
	binary.BigEndian.PutUint32(b, uint32(value))
	file.Write(b)
}

func writeFloat(file *os.File, value float32) {
	b := make([]byte, 4)
	binary.LittleEndian.PutUint32(b, math.Float32bits(value))
	file.Write(b)
}

func writeByte(file *os.File, value byte) {
	file.Write([]byte{value})
}

func writeBool(file *os.File, value bool) {
	if value {
		file.Write([]byte{1})
	} else {
		file.Write([]byte{0})
	}
}

func writeString(file *os.File, value string) {
	writeInt16(file, int16(len(value)))
	file.Write([]byte(value))
}
