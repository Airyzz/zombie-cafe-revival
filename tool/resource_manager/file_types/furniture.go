package file_types

import (
	"fmt"
	"os"
)

type furnitureData struct {
	UnlockLevel        byte
	Name               string
	Price              int32
	PurchaseWithToxin  bool
	SizeX              byte
	SizeY              byte
	U6                 int16
	U7                 int16
	U8                 int16
	U9                 int16
	Type               byte
	Category           byte
	Color              []int
	MoneyPerHour       int16
	MaximumMoney       int16
	RatingBonus        float32
	BuyMoneyAmount     int32
	U17                byte
	StoveSpeedMult     float32
	Description        string
	ExperiencePoints   float32
	IsAvailableInStore bool
	U21                byte
	U22                bool
	U23                int16
}

func readSingleFurnitureData(file *os.File) furnitureData {

	var furniture furnitureData

	furniture.UnlockLevel = readByte(file)
	furniture.Name = readString(file)
	fmt.Println(furniture.Name)
	furniture.Price = readInt32(file)
	furniture.PurchaseWithToxin = readBool(file)
	furniture.SizeX = readByte(file)
	furniture.SizeY = readByte(file)
	furniture.U6 = readInt16(file)
	furniture.U7 = readInt16(file)
	furniture.U8 = readInt16(file)
	furniture.U9 = readInt16(file)
	furniture.Type = readByte(file)
	furniture.Category = readByte(file)

	colorBytes := readNextBytes(file, 4)
	colorInts := make([]int, len(colorBytes))

	for i, b := range colorBytes {
		colorInts[i] = int(b)
	}

	furniture.Color = colorInts
	furniture.MoneyPerHour = readInt16(file)
	furniture.MaximumMoney = readInt16(file)
	furniture.RatingBonus = readFloat(file)
	furniture.BuyMoneyAmount = readInt32(file)
	furniture.U17 = readByte(file)
	furniture.StoveSpeedMult = readFloat(file)
	furniture.Description = readString(file)

	furniture.ExperiencePoints = readFloat(file)
	furniture.IsAvailableInStore = readBool(file)
	furniture.U21 = readByte(file)
	furniture.U22 = readBool(file)
	furniture.U23 = readInt16(file)

	return furniture
}

func writeFurniture(file *os.File, data furnitureData) {

	writeByte(file, data.UnlockLevel)
	writeString(file, data.Name)
	writeInt32(file, data.Price)
	writeBool(file, data.PurchaseWithToxin)

	writeByte(file, data.SizeX)
	writeByte(file, data.SizeY)
	writeInt16(file, data.U6)
	writeInt16(file, data.U7)
	writeInt16(file, data.U8)
	writeInt16(file, data.U9)

	writeByte(file, data.Type)
	writeByte(file, data.Category)

	for _, b := range data.Color {
		writeByte(file, byte(b))
	}

	writeInt16(file, data.MoneyPerHour)
	writeInt16(file, data.MaximumMoney)
	writeFloat(file, data.RatingBonus)
	writeInt32(file, data.BuyMoneyAmount)

	writeByte(file, data.U17)
	writeFloat(file, data.StoveSpeedMult)

	writeString(file, data.Description)

	writeFloat(file, data.ExperiencePoints)
	writeBool(file, data.IsAvailableInStore)

	writeByte(file, data.U21)
	writeBool(file, data.U22)
	writeInt16(file, data.U23)
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

func writeFurnitureData(file *os.File, furnitures []furnitureData) {

	writeInt32(file, int32(len(furnitures)))

	for i := 0; i < len(furnitures); i++ {
		writeFurniture(file, furnitures[i])
	}
}
