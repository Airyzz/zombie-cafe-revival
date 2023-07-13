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

func readInt64(file io.Reader) int64 {
	data := readNextBytes(file, 8)
	return int64(binary.BigEndian.Uint64(data))
}

func readInt32LittleEndian(file io.Reader) int32 {
	data := readNextBytes(file, 4)
	return int32(binary.LittleEndian.Uint32(data))
}

func readFloat(file io.Reader) float32 {
	data := readNextBytes(file, 4)
	return math.Float32frombits(binary.LittleEndian.Uint32(data))
}

func readFloat64(file io.Reader) float64 {
	data := readNextBytes(file, 8)
	return math.Float64frombits(binary.LittleEndian.Uint64(data))
}

func readByte(file io.Reader) byte {
	data := readNextBytes(file, 1)
	return data[0]
}

func readBool(file io.Reader) bool {
	data := readNextBytes(file, 1)
	if data[0] > 1 {
		log.Panicln("Read bool read a byte that was not 0 or 1")
	}

	return data[0] == 1
}

func readString(file io.Reader) string {
	length := readInt16(file)
	data := readNextBytes(file, int(length))
	return string(data)
}

type Date struct {
	Year   int16
	Month  byte
	Day    byte
	Hour   byte
	Minute byte
	Second byte
}

func readDate(file io.Reader) Date {
	var d Date
	d.Year = readInt16(file)
	d.Month = readByte(file)
	d.Day = readByte(file)
	d.Hour = readByte(file)
	d.Minute = readByte(file)
	d.Second = readByte(file)

	return d
}

func readNextBytes(file io.Reader, number int) []byte {
	bytes := make([]byte, number)

	_, err := file.Read(bytes)
	if err != nil {
		log.Fatal(err)
	}

	return bytes
}
