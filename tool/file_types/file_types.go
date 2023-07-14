package file_types

import (
	"fmt"
	"io"
	"os"
)

func ValidateSave(in_directory string) {
	f, err := os.Open(in_directory)

	if err != nil {
		return

	}

	ReadSaveGame(f)
}

func ValidateCafe(in_directory string) {
	f, err := os.Open(in_directory)

	if err != nil {
		return

	}

	ReadCafe(f)
}

func ValidateFriendData(in_file io.Reader) bool {

	ReadFriendData(in_file)

	buf := make([]byte, 1)
	n, err := in_file.Read(buf)

	fmt.Printf("Read bytes: %d\n", n)

	if n == 0 && err == io.EOF {
		return true
	}

	return false
}
