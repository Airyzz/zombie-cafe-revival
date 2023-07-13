package file_types

import (
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

	result := true
	/*defer func() {
		if r := recover(); r != nil {
			result = false
		}
	}()
	*/
	//ReadFriendData(in_file)

	return result
}
