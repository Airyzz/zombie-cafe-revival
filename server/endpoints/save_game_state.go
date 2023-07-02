package endpoints

import (
	"bytes"
	"fmt"
	"io"
	"net/http"
	"os"
	"server/storage"
)

func saveGameState(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("got request to save game: %s\n", r.URL.String())
	err := r.ParseMultipartForm(5 * 1024 * 1024)

	udid := r.URL.Query().Get("udid")

	fmt.Println(udid)

	if err != nil {
		panic(err)
	}

	file, _, err := r.FormFile("fnam")

	var buf bytes.Buffer

	defer file.Close()

	io.Copy(&buf, file)
	dest_path := storage.GetFilepathForSaveDeviceID(udid)
	os.WriteFile(dest_path, buf.Bytes(), 0666)
	buf.Reset()
}
