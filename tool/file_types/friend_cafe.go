package file_types

import (
	"io"
)

type FriendCafe struct {
	State CafeState
	Cafe  Cafe
}

func ReadFriendData(file io.Reader) FriendCafe {
	var s FriendCafe
	version := ReadByte(file)

	if version != 63 {
		panic("Unable to handle this cafe version")
	}

	s.State = readCafeState(file, int(version))
	s.Cafe = ReadCafe(file)

	return s
}
