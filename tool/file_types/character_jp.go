package file_types

import (
	"encoding/json"
	"fmt"
	"io"
)

type CharacterJP struct {
	CafeLevelRequired  byte
	U2                 byte
	U3                 byte
	Name               string
	Category           string
	CharacterArtString string
	U4                 byte
	Energy             int32
	Speed              int16
	AttackStrength     int16
	TipRating          int16
	U9                 int16
	U10                int16
	U11                int16
	U12                int16
	IsFemale           bool
	Cost               int32
	U15                byte
	U16                byte
	CookSpeedBonus     float32
	TipMultiplier      int32
	U19                float32
	U20                float32
	U21                byte
	U22                int16
	U23                float32
	HumanDescription   string
	ZombieDescription  string
}

func readSingleCharacterJP(file io.Reader) CharacterJP {
	var c CharacterJP

	c.CafeLevelRequired = ReadByte(file)
	c.U2 = ReadByte(file)
	c.U3 = ReadByte(file)

	c.Name = ReadString(file)
	c.Category = ReadString(file)
	c.CharacterArtString = ReadString(file)

	c.U4 = ReadByte(file)

	fmt.Println("---")
	c.Energy = ReadInt32(file)

	c.Speed = ReadInt16(file)
	c.AttackStrength = ReadInt16(file)

	c.TipRating = ReadInt16(file)
	c.U9 = ReadInt16(file)
	c.U10 = ReadInt16(file)
	c.U11 = ReadInt16(file)

	c.U12 = ReadInt16(file)

	c.IsFemale = ReadBool(file)

	c.Cost = ReadInt32(file)

	c.U15 = ReadByte(file)
	c.U16 = ReadByte(file)

	c.CookSpeedBonus = ReadFloat(file)
	c.TipMultiplier = ReadInt32(file)

	c.U19 = ReadFloat(file)
	c.U20 = ReadFloat(file)

	c.U21 = ReadByte(file)
	c.U22 = ReadInt16(file)
	c.U23 = ReadFloat(file)

	c.HumanDescription = ReadString(file)
	c.ZombieDescription = ReadString(file)

	return c
}

func ReadCharactersJP(file io.Reader) []CharacterJP {
	data := []CharacterJP{}
	n := ReadInt16(file)
	for i := 0; i < int(n); i++ {

		fmt.Printf("Reading character: %d\n", i)
		character := readSingleCharacterJP(file)
		data = append(data, character)
		js, _ := json.MarshalIndent(character, "", "    ")
		fmt.Println(string(js))
	}
	return data
}
