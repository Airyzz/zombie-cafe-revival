package file_types

import (
	"fmt"
	"io"
)

type Cafe struct {
	Version  byte
	SizeX    byte
	SizeY    byte
	U3       int16
	U4       int16
	MapSizeX int32
	MapSizeY int32
	U7       bool
	Tiles    []CafeTile
	U8       int32
}

type CafeWall struct {
	U1               int16
	U2               bool
	U3               bool
	U4               bool
	U5               int32
	HasDecoration    bool
	DecorationObject *CafeObject
}

type CafeFurniture struct {
	U1             byte
	Food           *CafeFoodData
	Stove          *Stove
	ServingCounter *ServingCounter
	U2             int32
	Orientation    byte
	HasObject      bool
	Object         *CafeObject
	U3             byte
	U4             int16
	U5             Date
}

type CafeObject struct {
	Type      byte
	Wall      *CafeWall
	Furniture *CafeFurniture
	U1        int32
	U2        int16
	U3        int16
	U4        bool
}

type CafeTile struct {
	U1 int16
	U2 int32
	U3 bool
	U4 bool
	U5 *CafeObject
	U6 bool
	U7 *CafeObject
	U8 bool
	U9 *CafeObject
}

type FoodStack struct {
	U1 byte
	U2 byte
	U3 int32
	U4 int16
	U5 byte
	U6 string
	U7 Date
}

type CafeFoodData struct {
	U1     int32
	U2     byte
	U3     bool
	Object *CafeObject
	U4     byte
	U5     int16
	U6     Date
	U7     FoodStack
}

type Stove struct {
	U1           int32
	U2           byte
	HasObject    bool
	Object       *CafeObject
	U5           byte
	U6           int16
	U7           Date
	HasFoodStack bool
	FoodStack    *FoodStack
	U8           int64
	U9           int64
}

type ServingCounter struct {
	U1        int32
	U2        byte
	HasObject bool
	Object    *CafeObject
	U3        byte
	U4        int16
	U5        Date

	U6 int32

	NumFoodStacks int16
	FoodStacks    []FoodStack
}

func readStove(file io.Reader, version int) Stove {
	var s Stove

	if version <= 48 {
		s.U1 = int32(readByte(file))
	} else {
		s.U1 = readInt32(file)
	}

	s.U2 = readByte(file)
	s.HasObject = readBool(file)

	if s.HasObject {
		o := readCafeObject(file, version)
		s.Object = &o
	}

	s.U5 = readByte(file)
	if version > 23 {
		s.U6 = readInt16(file)
	}

	if version > 47 {
		s.U7 = readDate(file)
	}

	s.HasFoodStack = readBool(file)
	if s.HasFoodStack {
		food := readFoodStack(file, version)
		s.FoodStack = &food
	}

	s.U8 = readInt64(file)
	s.U9 = readInt64(file)

	return s
}

func readServingCounter(file io.Reader, version int) ServingCounter {
	var s ServingCounter

	if version > 48 {
		s.U1 = readInt32(file)
	} else {
		s.U1 = int32(readByte(file))
	}

	s.U2 = readByte(file)
	s.HasObject = readBool(file)
	if s.HasObject {
		o := readCafeObject(file, version)
		s.Object = &o
	}

	s.U3 = readByte(file)

	if version > 23 {
		s.U4 = readInt16(file)
	}

	if version > 47 {
		s.U5 = readDate(file)
	}

	if version > 25 {
		s.U6 = readInt32(file)
	} else {
		s.U6 = int32(readInt16(file))
	}

	s.NumFoodStacks = readInt16(file)
	s.FoodStacks = make([]FoodStack, s.NumFoodStacks)
	for i := 0; i < int(s.NumFoodStacks); i++ {
		s.FoodStacks[i] = readFoodStack(file, version)
	}

	return s
}

func readFoodStack(file io.Reader, version int) FoodStack {
	var f FoodStack
	f.U1 = readByte(file)
	if version > 24 {
		f.U1 = readByte(file)
	}

	if version > 48 {
		f.U3 = readInt32(file)
	}

	if version <= 24 || (version > 24 && version <= 48) {
		f.U4 = readInt16(file)
	}

	f.U5 = readByte(file)
	f.U6 = readString(file)

	if version > 51 {
		f.U7 = readDate(file)
	}

	return f
}

func readFood(file io.Reader, version int) CafeFoodData {
	var f CafeFoodData
	if version <= 48 {
		f.U1 = int32(readByte(file))
	} else {
		f.U1 = readInt32(file)
	}

	f.U2 = readByte(file)
	f.U3 = readBool(file)
	if f.U3 {
		o := readCafeObject(file, version)
		f.Object = &o
	}

	f.U4 = readByte(file)

	if version > 23 {
		f.U5 = readInt16(file)
		if version > 47 {
			f.U6 = readDate(file)
		}
	}

	f.U7 = readFoodStack(file, version)
	return f
}

func readCafeFurniture(file io.Reader, version int) CafeFurniture {
	var c CafeFurniture

	isFood := readBool(file)
	if isFood {
		c.U1 = readByte(file)
		food := readFood(file, version)
		c.Food = &food
	} else {
		furnitureType := readByte(file)
		if furnitureType == 1 {
			stove := readStove(file, version)
			c.Stove = &stove
		} else if furnitureType == 2 {
			s := readServingCounter(file, version)
			c.ServingCounter = &s
		} else {
			if version > 48 {
				c.U2 = readInt32(file)
			} else {
				c.U2 = int32(readByte(file))
			}

			c.Orientation = readByte(file)
			c.HasObject = readBool(file)
			if c.HasObject {
				o := readCafeObject(file, version)
				c.Object = &o
			}

			c.U3 = readByte(file)

			if version > 23 {
				c.U4 = readInt16(file)
			}

			if version > 47 {
				c.U5 = readDate(file)
			}
		}

	}

	return c
}

func readCafeWall(file io.Reader, version int) CafeWall {
	var c CafeWall

	if version > 58 {
		c.U1 = readInt16(file)
	} else {
		c.U1 = int16(readByte(file))
	}

	c.U2 = readBool(file)
	c.U3 = readBool(file)
	c.U4 = readBool(file)
	c.U5 = readInt32(file)
	c.HasDecoration = readBool(file)

	if c.HasDecoration {
		var obj CafeObject
		obj = readCafeObject(file, version)
		c.DecorationObject = &obj
	}

	return c
}

func readCafeObject(file io.Reader, version int) CafeObject {
	var o CafeObject

	o.Type = readByte(file)

	if o.Type == 1 {
		furniture := readCafeFurniture(file, version)
		o.Furniture = &furniture
	}

	if o.Type == 2 {
		wall := readCafeWall(file, version)
		o.Wall = &wall
	}

	if o.Type == 2 || o.Type == 1 {
		o.U1 = readInt32(file)
		o.U2 = readInt16(file)
		o.U3 = readInt16(file)
		o.U4 = readBool(file)
	}

	return o
}

func readCafeTile(file io.Reader, version int) CafeTile {
	var t CafeTile

	if version <= 58 {
		t.U1 = int16(readByte(file))
	} else {
		t.U1 = readInt16(file)
	}

	t.U2 = readInt32(file)
	t.U3 = readBool(file)
	t.U4 = readBool(file)
	if t.U4 {
		o := readCafeObject(file, version)
		t.U5 = &o
	}

	t.U6 = readBool(file)
	if t.U6 {
		o := readCafeObject(file, version)
		t.U7 = &o
	}

	t.U8 = readBool(file)
	if t.U8 {
		o := readCafeObject(file, version)
		t.U9 = &o
	}

	return t
}

func ReadCafe(file io.Reader) Cafe {
	var c Cafe

	c.Version = readByte(file)
	fmt.Printf("Cafe version: %d\n", c.Version)
	d := readFloat64(file)
	fmt.Printf("double: %f\n", d)
	c.SizeX = readByte(file)
	fmt.Printf("Size X: %d\n", c.SizeX)
	c.SizeY = readByte(file)
	fmt.Printf("Size Y: %d\n", c.SizeY)
	c.U3 = readInt16(file)
	c.U4 = readInt16(file)

	fmt.Printf("U3: %d\n", c.U3)
	fmt.Printf("U4: %d\n", c.U4)

	if c.Version > 48 {
		c.MapSizeX = readInt32(file)
		c.MapSizeY = readInt32(file)

		fmt.Printf("Map Size X: %d\n", c.MapSizeX)
		fmt.Printf("Map Size Y: %d\n", c.MapSizeY)

		fmt.Printf("Map Tile Count: %d\n", c.MapSizeX*c.MapSizeY)

	}

	c.U7 = readBool(file)

	fmt.Printf("U7: %d\n", c.U7)

	numTiles := int(c.MapSizeX * c.MapSizeY)

	c.Tiles = make([]CafeTile, numTiles)

	for i := 0; i < numTiles; i++ {
		c.Tiles[i] = readCafeTile(file, int(c.Version))
	}

	c.U8 = readInt32(file)
	fmt.Printf("Reading %d ints\n", c.U8)
	// Tbh this might not be right
	for i := 0; i < int(c.U8); i++ {
		readInt32(file)
	}

	if c.Version > 61 {
		num := readInt32(file)
		fmt.Printf("Reading %d more ints\n", num)
		for i := 0; i < int(num); i++ {
			readInt32(file)
		}
	}

	return c
}
