package file_types

import (
	"fmt"
	"io"
)

type Character struct {
	CafeLevelRequired      byte
	U2                     byte
	U3                     byte
	Name                   string
	CharacterArtStringHead string
	CharacterArtString     string
	U4                     byte
	Energy                 uint16
	Speed                  byte
	AttackStrength         byte
	TipRating              byte
	U8                     byte
	U9                     byte
	U10                    byte
	IsFemale               bool
	Cost                   int32
	PurchaseWithToxin      bool
	U14                    byte
	CookSpeedBonus         float32
	TipMultiplier          int32
	RegenBoost             float32
	CookXPBonus            float32
	U19                    bool
	U20                    int16
	U21                    byte

	HumanDescription  string
	ZombieDescription string
}

func readSingleCharacter(file io.Reader) Character {
	var c Character
	c.CafeLevelRequired = ReadByte(file)
	c.U2 = ReadByte(file)
	c.U3 = ReadByte(file)
	c.Name = ReadString(file)
	c.CharacterArtStringHead = ReadString(file)
	c.CharacterArtString = ReadString(file)
	c.U4 = ReadByte(file)

	c.Energy = ReadUint16(file)

	c.Speed = ReadByte(file)
	c.AttackStrength = ReadByte(file)
	c.TipRating = ReadByte(file)
	c.U8 = ReadByte(file)
	c.U9 = ReadByte(file)
	c.U10 = ReadByte(file)
	c.IsFemale = ReadBool(file)

	c.Cost = ReadInt32(file)
	c.PurchaseWithToxin = ReadBool(file)
	c.U14 = ReadByte(file)
	c.CookSpeedBonus = ReadFloat(file)
	c.TipMultiplier = ReadInt32(file)

	c.RegenBoost = ReadFloat(file)
	c.CookXPBonus = ReadFloat(file)
	c.U19 = ReadBool(file)
	c.U20 = ReadInt16(file)
	c.U21 = ReadByte(file)

	c.HumanDescription = ReadString(file)
	c.ZombieDescription = ReadString(file)

	return c
}

func writeSingleCharacterData(file io.Writer, data Character) {
	WriteByte(file, data.CafeLevelRequired)
	WriteByte(file, data.U2)
	WriteByte(file, data.U3)
	WriteString(file, data.Name)
	WriteString(file, data.CharacterArtStringHead)
	WriteString(file, data.CharacterArtString)
	WriteByte(file, data.U4)
	WriteUint16(file, data.Energy)
	WriteByte(file, data.Speed)
	WriteByte(file, data.AttackStrength)
	WriteByte(file, data.TipRating)
	WriteByte(file, data.U8)
	WriteByte(file, data.U9)
	WriteByte(file, data.U10)
	WriteBool(file, data.IsFemale)
	WriteInt32(file, data.Cost)
	WriteBool(file, data.PurchaseWithToxin)
	WriteByte(file, data.U14)
	WriteFloat(file, data.CookSpeedBonus)
	WriteInt32(file, data.TipMultiplier)
	WriteFloat(file, data.RegenBoost)
	WriteFloat(file, data.CookXPBonus)
	WriteBool(file, data.U19)
	WriteInt16(file, data.U20)
	WriteByte(file, data.U21)
	WriteString(file, data.HumanDescription)
	WriteString(file, data.ZombieDescription)
}

func ReadCharacters(file io.Reader) []Character {
	num := int(ReadByte(file))
	fmt.Println(fmt.Sprintf("Num characters: %d", num))
	data := []Character{}

	for i := 0; i < num; i++ {
		character := readSingleCharacter(file)
		data = append(data, character)
	}
	return data
}

func WriteCharacters(file io.Writer, characters []Character) {

	WriteByte(file, byte(len(characters)))

	for i := 0; i < len(characters); i++ {
		writeSingleCharacterData(file, characters[i])
	}
}
