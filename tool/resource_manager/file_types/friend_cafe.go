package file_types

import (
	"fmt"
	"io"
)

type friendCafe struct {
	State cafeStateData
	Cafe  cafe
}

func readFriendCafe(file io.Reader, version int) friendCafe {
	var c friendCafe
	c.State = readCafeState(file, version)
	c.Cafe = readCafe(file)

	return c
}

func readFriendData(file io.Reader) friendCafe {
	var s friendCafe
	version := readByte(file)

	s = readFriendCafe(file, int(version))

	b := make([]byte, 5)
	num_read, err := file.Read(b)

	if err != io.ErrUnexpectedEOF {
		fmt.Println("Error reading further (WE AT THE END OF FILE!!!)")
	}
	fmt.Printf("Num bytes read: %d", num_read)

	return s
}
