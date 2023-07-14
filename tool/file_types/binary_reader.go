package file_types

import (
	"encoding/binary"
	"io"
	"log"
	"math"
)

func ReadUint16(file io.Reader) uint16 {
	data := ReadNextBytes(file, 2)
	return binary.BigEndian.Uint16(data)
}

func ReadUint32(file io.Reader) uint32 {
	data := ReadNextBytes(file, 4)
	return binary.BigEndian.Uint32(data)
}

func ReadUint32LittleEndian(file io.Reader) uint32 {
	data := ReadNextBytes(file, 4)
	return binary.LittleEndian.Uint32(data)
}

func ReadInt16(file io.Reader) int16 {
	data := ReadNextBytes(file, 2)
	return int16(binary.BigEndian.Uint16(data))
}

func ReadInt32(file io.Reader) int32 {
	data := ReadNextBytes(file, 4)
	return int32(binary.BigEndian.Uint32(data))
}

func ReadInt64(file io.Reader) int64 {
	data := ReadNextBytes(file, 8)
	return int64(binary.BigEndian.Uint64(data))
}

func ReadInt32LittleEndian(file io.Reader) int32 {
	data := ReadNextBytes(file, 4)
	return int32(binary.LittleEndian.Uint32(data))
}

func ReadFloat(file io.Reader) float32 {
	data := ReadNextBytes(file, 4)
	return math.Float32frombits(binary.LittleEndian.Uint32(data))
}

func ReadFloat64(file io.Reader) float64 {
	data := ReadNextBytes(file, 8)
	return math.Float64frombits(binary.LittleEndian.Uint64(data))
}

func ReadByte(file io.Reader) byte {
	data := ReadNextBytes(file, 1)
	return data[0]
}

func ReadBool(file io.Reader) bool {
	data := ReadNextBytes(file, 1)
	if data[0] > 1 {
		log.Panicln("Read bool read a byte that was not 0 or 1")
	}

	return data[0] == 1
}

func ReadString(file io.Reader) string {
	length := ReadInt16(file)
	data := ReadNextBytes(file, int(length))
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

func ReadDate(file io.Reader) Date {
	var d Date
	d.Year = ReadInt16(file)
	d.Month = ReadByte(file)
	d.Day = ReadByte(file)
	d.Hour = ReadByte(file)
	d.Minute = ReadByte(file)
	d.Second = ReadByte(file)

	return d
}

func ReadNextBytes(file io.Reader, number int) []byte {
	bytes := make([]byte, number)

	_, err := file.Read(bytes)
	if err != nil {
		log.Fatal(err)
	}

	return bytes
}
