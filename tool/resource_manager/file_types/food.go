package file_types

import (
	"io"
	"os"
)

type foodData struct {
	Name             string
	Price            int16
	UnlockLevel      byte
	CookTimeMinutes  int16
	Servings         int16
	PricePerSeving   int16
	ExperiencePoints int16
	ImageID          int16
	U7               byte
	U8               byte
	U9               byte
	U10              byte
	U11              int16
	U12              byte
}

func readSingleFoodData(file io.Reader) foodData {
	var food foodData
	food.Name = readString(file)
	food.Price = readInt16(file)
	food.UnlockLevel = readByte(file)
	food.CookTimeMinutes = readInt16(file)
	food.Servings = readInt16(file)
	food.PricePerSeving = readInt16(file)
	food.ExperiencePoints = readInt16(file)
	food.ImageID = readInt16(file)
	food.U7 = readByte(file)
	food.U8 = readByte(file)
	food.U9 = readByte(file)
	food.U10 = readByte(file)
	food.U11 = readInt16(file)
	food.U12 = readByte(file)
	return food
}

func writeSingleFoodData(file io.Writer, data foodData) {
	writeString(file, data.Name)
	writeInt16(file, data.Price)
	writeByte(file, data.UnlockLevel)
	writeInt16(file, data.CookTimeMinutes)
	writeInt16(file, data.Servings)
	writeInt16(file, data.PricePerSeving)
	writeInt16(file, data.ExperiencePoints)
	writeInt16(file, data.ImageID)
	writeByte(file, data.U7)
	writeByte(file, data.U8)
	writeByte(file, data.U9)
	writeByte(file, data.U10)
	writeInt16(file, data.U11)
	writeByte(file, data.U12)
}

func readFoodData(file io.Reader) []foodData {
	num := int(readByte(file))
	data := []foodData{}

	for i := 0; i < num; i++ {
		foodData := readSingleFoodData(file)
		data = append(data, foodData)
	}

	return data
}

func writeFoodData(file *os.File, foods []foodData) {

	writeByte(file, byte(len(foods)))

	for i := 0; i < len(foods); i++ {
		writeSingleFoodData(file, foods[i])
	}
}
