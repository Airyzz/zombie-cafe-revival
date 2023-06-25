package file_types

import (
	"fmt"
	"os"
)

type characterData struct {
	CafeLevelRequired  byte
	U2                 byte
	U3                 byte
	Name               string
	Category           string
	CharacterArtString string
	U4                 byte
	Energy             uint16
	Speed              byte
	AttackStrength     byte
	TipRating          byte
	U8                 byte
	U9                 byte
	U10                byte
	U11                bool
	Cost               int32
	PurchaseWithToxin  bool
	U14                byte
	CookSpeedBonus     float32
	TipMultiplier      int32
	RegenBoost         float32
	CookXPBonus        float32
	U19                bool
	U20                int16
	U21                byte

	HumanDescription  string
	ZombieDescription string
}

func readSingleCharacter(file *os.File) characterData {
	var c characterData
	c.CafeLevelRequired = readByte(file)
	c.U2 = readByte(file)
	c.U3 = readByte(file)
	c.Name = readString(file)
	c.Category = readString(file)
	c.CharacterArtString = readString(file)
	c.U4 = readByte(file)

	c.Energy = readUint16(file)

	c.Speed = readByte(file)
	c.AttackStrength = readByte(file)
	c.TipRating = readByte(file)
	c.U8 = readByte(file)
	c.U9 = readByte(file)
	c.U10 = readByte(file)
	c.U11 = readBool(file)

	c.Cost = readInt32(file)
	c.PurchaseWithToxin = readBool(file)
	c.U14 = readByte(file)
	c.CookSpeedBonus = readFloat(file)
	c.TipMultiplier = readInt32(file)

	c.RegenBoost = readFloat(file)
	c.CookXPBonus = readFloat(file)
	c.U19 = readBool(file)
	c.U20 = readInt16(file)
	c.U21 = readByte(file)

	c.HumanDescription = readString(file)
	c.ZombieDescription = readString(file)

	return c
}

func writeSingleCharacterData(file *os.File, data characterData) {
	writeByte(file, data.CafeLevelRequired)
	writeByte(file, data.U2)
	writeByte(file, data.U3)
	writeString(file, data.Name)
	writeString(file, data.Category)
	writeString(file, data.CharacterArtString)
	writeByte(file, data.U4)
	writeUint16(file, data.Energy)
	writeByte(file, data.Speed)
	writeByte(file, data.AttackStrength)
	writeByte(file, data.TipRating)
	writeByte(file, data.U8)
	writeByte(file, data.U9)
	writeByte(file, data.U10)
	writeBool(file, data.U11)
	writeInt32(file, data.Cost)
	writeBool(file, data.PurchaseWithToxin)
	writeByte(file, data.U14)
	writeFloat(file, data.CookSpeedBonus)
	writeInt32(file, data.TipMultiplier)
	writeFloat(file, data.RegenBoost)
	writeFloat(file, data.CookXPBonus)
	writeBool(file, data.U19)
	writeInt16(file, data.U20)
	writeByte(file, data.U21)
	writeString(file, data.HumanDescription)
	writeString(file, data.ZombieDescription)
}

func readCharacterData(file *os.File) []characterData {
	num := int(readByte(file))
	fmt.Println(fmt.Sprintf("Num characters: %d", num))
	data := []characterData{}

	for i := 0; i < num; i++ {
		character := readSingleCharacter(file)
		data = append(data, character)
	}
	return data
}

func writeCharacterData(file *os.File, characters []characterData) {

	writeByte(file, byte(len(characters)))

	for i := 0; i < len(characters); i++ {
		writeSingleCharacterData(file, characters[i])
	}
}
