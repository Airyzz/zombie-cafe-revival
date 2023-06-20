package filetypes

import (
	"encoding/json"
	"fmt"
	"os"
)

func DeserializeFurniture(file *os.File) string {
	data := readFurnitureData(file)
	b, err := json.MarshalIndent(data, "", "    ")
	if err != nil {
		fmt.Println(err)
	}

	return string(b)
}
