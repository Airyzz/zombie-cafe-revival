package file_types

import (
	"io"
)

type CharacterInstance struct {
	Type byte
	Name string
	U2   byte
	U3   byte
	U4   float32
	U5   byte
	U6   int64
	U7   byte
	U8   int64
	U9   int64
	U10  int32
	U11  int32
	U12  int32
	U13  int32
	U14  byte
	U15  int32
	U16  int32
}

type CafeState struct {
	U1               float64
	ExperiencePoints float32
	Toxin            int32
	Money            int32
	Level            int32
	U6               int32
	U7               int32
	U8               float32
	U9               int32
	U10              bool
	Character        CharacterInstance
	NumZombies       byte
	Zombies          []CharacterInstance
	U11              int32
	U12              []int8
	U13              bool
}

type SaveGame struct {
	State     CafeState
	U14       int16
	U15       Date
	U16       int16
	U17       Date
	NumOrders int16
	U18       byte
	U19       byte
	U20       bool
}

func readSaveStrings(file io.Reader) {
	readShort := ReadInt16(file)
	num := readShort - 1
	if num >= 0 {
		for i := num; i >= 1; i-- {
			ReadString(file)
		}

	}
}

func readCharacter(file io.Reader, fileVersion int) CharacterInstance {
	var c CharacterInstance
	c.Type = ReadByte(file)
	c.Name = ReadString(file)
	c.U2 = ReadByte(file)
	c.U3 = ReadByte(file)
	c.U4 = ReadFloat(file)
	c.U5 = ReadByte(file)
	c.U6 = ReadInt64(file)
	c.U7 = ReadByte(file)
	c.U8 = ReadInt64(file)
	c.U9 = ReadInt64(file)
	c.U10 = ReadInt32(file)
	c.U11 = ReadInt32(file)
	c.U12 = ReadInt32(file)
	c.U13 = ReadInt32(file)

	if fileVersion > 29 {
		c.U14 = ReadByte(file)
		if fileVersion > 46 {
			c.U15 = ReadInt32(file)
			c.U16 = ReadInt32(file)
		}
	}

	return c
}

func readCafeState(file io.Reader, version int) CafeState {
	var save CafeState
	save.U1 = ReadFloat64(file)
	save.ExperiencePoints = ReadFloat(file)
	save.Toxin = ReadInt32(file)
	save.Money = ReadInt32(file)
	save.Level = ReadInt32(file)
	save.U6 = ReadInt32(file)
	save.U7 = ReadInt32(file)
	save.U8 = ReadFloat(file)
	save.U9 = ReadInt32(file)
	save.U10 = ReadBool(file)
	save.Character = readCharacter(file, version)
	save.NumZombies = ReadByte(file)
	save.Zombies = make([]CharacterInstance, save.NumZombies)

	for i := 0; i < int(save.NumZombies); i++ {
		save.Zombies[i] = readCharacter(file, version)
	}

	if version > 62 {
		save.U11 = ReadInt32(file)
	} else {
		save.U11 = int32(ReadByte(file))
	}

	save.U12 = make([]int8, save.U11)
	for i := 0; i < int(save.U11); i++ {
		save.U12[i] = int8(ReadByte(file))
	}

	if version > 33 {
		save.U13 = ReadBool(file)
	}

	return save
}

func readSaveGameVersion63(file io.Reader, save SaveGame) SaveGame {
	const version = 63
	save.State = readCafeState(file, 63)

	readSaveStrings(file)

	save.U15 = ReadDate(file)

	readSaveStrings(file)

	save.U17 = ReadDate(file)

	save.NumOrders = ReadInt16(file)

	if save.NumOrders > 0 {
		panic("Have not implemented a way to handle deserialization of orders yet")
	}

	save.U18 = ReadByte(file)
	save.U19 = ReadByte(file)
	save.U20 = ReadBool(file)

	return save
}

func ReadSaveGame(file io.Reader) SaveGame {
	var s SaveGame
	version := ReadByte(file)

	if version == 63 {
		return readSaveGameVersion63(file, s)
	}

	return s
}
