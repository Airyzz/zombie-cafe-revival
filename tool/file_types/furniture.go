package file_types

import (
	"fmt"
	"io"
)

type Furniture struct {
	UnlockLevel        byte
	Name               string
	Price              int32
	PurchaseWithToxin  bool
	SizeX              byte
	SizeY              byte
	ImageIndexNorth    int16
	ImageIndexEast     int16
	ImageIndexSouth    int16
	ImageIndexWest     int16
	Type               byte
	Category           byte
	Color              []int
	MoneyPerHour       int16
	MaximumMoney       int16
	RatingBonus        float32
	BuyMoneyAmount     int32
	ImagePackIndex     byte
	StoveSpeedMult     float32
	Description        string
	ExperiencePoints   float32
	IsAvailableInStore bool
	U21                byte
	U22                bool
	U23                int16
}

func readSingleFurnitureData(file io.Reader) Furniture {

	var furniture Furniture

	furniture.UnlockLevel = ReadByte(file)
	furniture.Name = ReadString(file)
	fmt.Println(furniture.Name)
	furniture.Price = ReadInt32(file)
	furniture.PurchaseWithToxin = ReadBool(file)
	furniture.SizeX = ReadByte(file)
	furniture.SizeY = ReadByte(file)
	furniture.ImageIndexNorth = ReadInt16(file)
	furniture.ImageIndexEast = ReadInt16(file)
	furniture.ImageIndexSouth = ReadInt16(file)
	furniture.ImageIndexWest = ReadInt16(file)
	furniture.Type = ReadByte(file)
	furniture.Category = ReadByte(file)

	colorBytes := ReadNextBytes(file, 4)
	colorInts := make([]int, len(colorBytes))

	for i, b := range colorBytes {
		colorInts[i] = int(b)
	}

	furniture.Color = colorInts
	furniture.MoneyPerHour = ReadInt16(file)
	furniture.MaximumMoney = ReadInt16(file)
	furniture.RatingBonus = ReadFloat(file)
	furniture.BuyMoneyAmount = ReadInt32(file)
	furniture.ImagePackIndex = ReadByte(file)
	furniture.StoveSpeedMult = ReadFloat(file)
	furniture.Description = ReadString(file)

	furniture.ExperiencePoints = ReadFloat(file)
	furniture.IsAvailableInStore = ReadBool(file)
	furniture.U21 = ReadByte(file)
	furniture.U22 = ReadBool(file)
	furniture.U23 = ReadInt16(file)

	return furniture
}

func writeFurniture(file io.Writer, data Furniture) {

	WriteByte(file, data.UnlockLevel)
	WriteString(file, data.Name)
	WriteInt32(file, data.Price)
	WriteBool(file, data.PurchaseWithToxin)

	WriteByte(file, data.SizeX)
	WriteByte(file, data.SizeY)
	WriteInt16(file, data.ImageIndexNorth)
	WriteInt16(file, data.ImageIndexEast)
	WriteInt16(file, data.ImageIndexSouth)
	WriteInt16(file, data.ImageIndexWest)

	WriteByte(file, data.Type)
	WriteByte(file, data.Category)

	for _, b := range data.Color {
		WriteByte(file, byte(b))
	}

	WriteInt16(file, data.MoneyPerHour)
	WriteInt16(file, data.MaximumMoney)
	WriteFloat(file, data.RatingBonus)
	WriteInt32(file, data.BuyMoneyAmount)

	WriteByte(file, data.ImagePackIndex)
	WriteFloat(file, data.StoveSpeedMult)

	WriteString(file, data.Description)

	WriteFloat(file, data.ExperiencePoints)
	WriteBool(file, data.IsAvailableInStore)

	WriteByte(file, data.U21)
	WriteBool(file, data.U22)
	WriteInt16(file, data.U23)
}

func ReadFurnitureData(file io.Reader) []Furniture {
	num := int(ReadInt32(file))
	data := []Furniture{}

	for i := 0; i < num; i++ {
		furniture := readSingleFurnitureData(file)
		data = append(data, furniture)
	}

	return data
}

func WriteFurnitureData(file io.Writer, furnitures []Furniture) {

	WriteInt32(file, int32(len(furnitures)))

	for i := 0; i < len(furnitures); i++ {
		writeFurniture(file, furnitures[i])
	}
}
