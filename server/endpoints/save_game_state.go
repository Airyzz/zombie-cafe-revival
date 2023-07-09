package endpoints

import (
	"bytes"
	"fmt"
	"io"
	"net/http"
	"server/storage"
)

func saveGameState(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
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

	err = storage.StoreFile(udid, buf.Bytes())
	if err != nil {
		fmt.Println("There was an error storting the file")
	}
	buf.Reset()
}
