package file_types

import (
	"io"
	"os"
)

type Food struct {
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

func readSingleFoodData(file io.Reader) Food {
	var food Food
	food.Name = ReadString(file)
	food.Price = ReadInt16(file)
	food.UnlockLevel = ReadByte(file)
	food.CookTimeMinutes = ReadInt16(file)
	food.Servings = ReadInt16(file)
	food.PricePerSeving = ReadInt16(file)
	food.ExperiencePoints = ReadInt16(file)
	food.ImageID = ReadInt16(file)
	food.U7 = ReadByte(file)
	food.U8 = ReadByte(file)
	food.U9 = ReadByte(file)
	food.U10 = ReadByte(file)
	food.U11 = ReadInt16(file)
	food.U12 = ReadByte(file)
	return food
}

func writeSingleFoodData(file io.Writer, data Food) {
	WriteString(file, data.Name)
	WriteInt16(file, data.Price)
	WriteByte(file, data.UnlockLevel)
	WriteInt16(file, data.CookTimeMinutes)
	WriteInt16(file, data.Servings)
	WriteInt16(file, data.PricePerSeving)
	WriteInt16(file, data.ExperiencePoints)
	WriteInt16(file, data.ImageID)
	WriteByte(file, data.U7)
	WriteByte(file, data.U8)
	WriteByte(file, data.U9)
	WriteByte(file, data.U10)
	WriteInt16(file, data.U11)
	WriteByte(file, data.U12)
}

func ReadFoods(file io.Reader) []Food {
	num := int(ReadByte(file))
	data := []Food{}

	for i := 0; i < num; i++ {
		foodData := readSingleFoodData(file)
		data = append(data, foodData)
	}

	return data
}

func WriteFoods(file *os.File, foods []Food) {

	WriteByte(file, byte(len(foods)))

	for i := 0; i < len(foods); i++ {
		writeSingleFoodData(file, foods[i])
	}
}
