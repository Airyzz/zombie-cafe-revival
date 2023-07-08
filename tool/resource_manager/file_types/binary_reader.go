package file_types

import (
	"encoding/binary"
	"log"
	"math"
	"os"
)

func isAtEnd(file *os.File) bool {
	bytes := make([]byte, 1)

	n, _ := file.Read(bytes)

	if n == 0 {
		return true
	}

	file.Seek(-1, 1)
	return false
}

func readUint16(file *os.File) uint16 {
	data := readNextBytes(file, 2)
	return binary.BigEndian.Uint16(data)
}

func readUint32(file *os.File) uint32 {
	data := readNextBytes(file, 4)
	return binary.BigEndian.Uint32(data)
}

func readUint32LittleEndian(file *os.File) uint32 {
	data := readNextBytes(file, 4)
	return binary.LittleEndian.Uint32(data)
}

func readInt16(file *os.File) int16 {
	data := readNextBytes(file, 2)
	return int16(binary.BigEndian.Uint16(data))
}

func readInt32(file *os.File) int32 {
	data := readNextBytes(file, 4)
	return int32(binary.BigEndian.Uint32(data))
}

func readInt32LittleEndian(file *os.File) int32 {
	data := readNextBytes(file, 4)
	return int32(binary.LittleEndian.Uint32(data))
}

func readFloat(file *os.File) float32 {
	data := readNextBytes(file, 4)
	return math.Float32frombits(binary.LittleEndian.Uint32(data))
}

func readByte(file *os.File) byte {
	data := readNextBytes(file, 1)
	return data[0]
}

func readBool(file *os.File) bool {
	data := readNextBytes(file, 1)
	return data[0] == 1
}

func readString(file *os.File) string {
	length := readInt16(file)
	data := readNextBytes(file, int(length))
	return string(data)
}

func readNextBytes(file *os.File, number int) []byte {
	bytes := make([]byte, number)

	_, err := file.Read(bytes)
	if err != nil {
		log.Fatal(err)
	}

	return bytes
}
