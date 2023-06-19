package main

import (
	"fmt"
	"os"
)

type furnitureData struct {
	U1                byte
	Name              string
	Price             int32
	PurchaseWithToxin bool
	U4                byte
	U5                byte
	U6                int16
	U7                int16
	U8                int16
	U9                int16
	U10               byte
	U11               byte
	U12               int32
	U13               int16
	U14               int16
	U15               float32
	U16               int32
	U17               byte
	U18               float32
	Description       string
	U19               float32
	U20               bool
	U21               byte
	U22               bool
	U23               int16
}

func readSingleFurnitureData(file *os.File) furnitureData {

	var furniture furnitureData

	furniture.U1 = readByte(file)
	furniture.Name = readString(file)
	fmt.Println(furniture.Name)
	furniture.Price = readInt32(file)
	furniture.PurchaseWithToxin = readBool(file)
	furniture.U4 = readByte(file)
	furniture.U5 = readByte(file)
	furniture.U6 = readInt16(file)
	furniture.U7 = readInt16(file)
	furniture.U8 = readInt16(file)
	furniture.U9 = readInt16(file)
	furniture.U10 = readByte(file)
	furniture.U11 = readByte(file)
	furniture.U12 = readInt32(file)
	furniture.U13 = readInt16(file)
	furniture.U14 = readInt16(file)
	furniture.U15 = readFloat(file)
	furniture.U16 = readInt32(file)
	furniture.U17 = readByte(file)
	furniture.U18 = readFloat(file)
	furniture.Description = readString(file)

	furniture.U19 = readFloat(file)
	furniture.U20 = readBool(file)
	furniture.U21 = readByte(file)
	furniture.U22 = readBool(file)
	furniture.U23 = readInt16(file)

	return furniture
}

func readFurnitureData(file *os.File) []furnitureData {
	num := int(readInt32(file))
	data := []furnitureData{}

	for i := 0; i < num; i++ {
		furniture := readSingleFurnitureData(file)
		data = append(data, furniture)
	}

	return data
}
