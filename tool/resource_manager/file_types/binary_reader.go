package file_types

import (
	"encoding/binary"
	"io"
	"log"
	"math"
)

func readUint16(file io.Reader) uint16 {
	data := readNextBytes(file, 2)
	return binary.BigEndian.Uint16(data)
}

func readUint32(file io.Reader) uint32 {
	data := readNextBytes(file, 4)
	return binary.BigEndian.Uint32(data)
}

func readUint32LittleEndian(file io.Reader) uint32 {
	data := readNextBytes(file, 4)
	return binary.LittleEndian.Uint32(data)
}

func readInt16(file io.Reader) int16 {
	data := readNextBytes(file, 2)
	return int16(binary.BigEndian.Uint16(data))
}

func readInt32(file io.Reader) int32 {
	data := readNextBytes(file, 4)
	return int32(binary.BigEndian.Uint32(data))
}

func readInt32LittleEndian(file io.Reader) int32 {
	data := readNextBytes(file, 4)
	return int32(binary.LittleEndian.Uint32(data))
}

func readFloat(file io.Reader) float32 {
	data := readNextBytes(file, 4)
	return math.Float32frombits(binary.LittleEndian.Uint32(data))
}

func readByte(file io.Reader) byte {
	data := readNextBytes(file, 1)
	return data[0]
}

func readBool(file io.Reader) bool {
	data := readNextBytes(file, 1)
	return data[0] == 1
}

func readString(file io.Reader) string {
	length := readInt16(file)
	data := readNextBytes(file, int(length))
	return string(data)
}

func readNextBytes(file io.Reader, number int) []byte {
	bytes := make([]byte, number)

	_, err := file.Read(bytes)
	if err != nil {
		log.Fatal(err)
	}

	return bytes
}
