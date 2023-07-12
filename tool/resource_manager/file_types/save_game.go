package file_types

import (
	"io"
)

type character struct {
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

type cafeStateData struct {
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
	Character        character
	NumZombies       byte
	Zombies          []character
	U11              int32
	U12              []int8
	U13              bool
}

type saveGame struct {
	State     cafeStateData
	U14       int16
	U15       date
	U16       int16
	U17       date
	NumOrders int16
	U18       byte
	U19       byte
	U20       bool
}

func readSaveStrings(file io.Reader) {
	readShort := readInt16(file)
	num := readShort - 1
	if num >= 0 {
		for i := num; i >= 1; i-- {
			readString(file)
		}

	}
}

func readCharacter(file io.Reader, fileVersion int) character {
	var c character
	c.Type = readByte(file)
	c.Name = readString(file)
	c.U2 = readByte(file)
	c.U3 = readByte(file)
	c.U4 = readFloat(file)
	c.U5 = readByte(file)
	c.U6 = readInt64(file)
	c.U7 = readByte(file)
	c.U8 = readInt64(file)
	c.U9 = readInt64(file)
	c.U10 = readInt32(file)
	c.U11 = readInt32(file)
	c.U12 = readInt32(file)
	c.U13 = readInt32(file)

	if fileVersion > 29 {
		c.U14 = readByte(file)
		if fileVersion > 46 {
			c.U15 = readInt32(file)
			c.U16 = readInt32(file)
		}
	}

	return c
}

func readCafeState(file io.Reader, version int) cafeStateData {
	var save cafeStateData
	save.U1 = readFloat64(file)
	save.ExperiencePoints = readFloat(file)
	save.Toxin = readInt32(file)
	save.Money = readInt32(file)
	save.Level = readInt32(file)
	save.U6 = readInt32(file)
	save.U7 = readInt32(file)
	save.U8 = readFloat(file)
	save.U9 = readInt32(file)
	save.U10 = readBool(file)
	save.Character = readCharacter(file, version)
	save.NumZombies = readByte(file)
	save.Zombies = make([]character, save.NumZombies)

	for i := 0; i < int(save.NumZombies); i++ {
		save.Zombies[i] = readCharacter(file, version)
	}

	if version > 62 {
		save.U11 = readInt32(file)
	} else {
		save.U11 = int32(readByte(file))
	}

	save.U12 = make([]int8, save.U11)
	for i := 0; i < int(save.U11); i++ {
		save.U12[i] = int8(readByte(file))
	}

	if version > 33 {
		save.U13 = readBool(file)
	}

	return save
}

func readSaveGameVersion63(file io.Reader, save saveGame) saveGame {
	const version = 63
	save.State = readCafeState(file, 63)

	readSaveStrings(file)

	save.U15 = readDate(file)

	readSaveStrings(file)

	save.U17 = readDate(file)

	save.NumOrders = readInt16(file)

	if save.NumOrders > 0 {
		panic("Have not implemented a way to handle deserialization of orders yet")
	}

	save.U18 = readByte(file)
	save.U19 = readByte(file)
	save.U20 = readBool(file)

	return save
}

func readSaveGame(file io.Reader) saveGame {
	var s saveGame
	version := readByte(file)

	if version == 63 {
		return readSaveGameVersion63(file, s)
	}

	return s
}
