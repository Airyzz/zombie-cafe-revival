package filetypes

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

func readFurnitureData(file *os.File) []furnitureData {
	num := int(readInt32(file))
	data := []furnitureData{}

	for i := 0; i < num; i++ {
		furniture := readSingleFurnitureData(file)
		data = append(data, furniture)
	}

	return data
}
