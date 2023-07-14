package endpoints

import (
	"bytes"
	"file_types"
	"fmt"
	"io"
	"net/http"
	"server/storage"
)

func saveGameState(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request to save game: %s\n", r.URL.String())

	err := r.ParseMultipartForm(5 * 1024 * 1024)

	fmt.Println("Finished parsing form")

	if err != nil {
		fmt.Println("Error while parsing form")
		panic(err)
	}

	udid := r.URL.Query().Get("udid")
	fmt.Println(udid)

	file, header, err := r.FormFile("fnam")

	if err != nil {
		fmt.Printf("Failed to get file: %s\n", err.Error())
	}

	fmt.Println(header.Filename)
	fmt.Println(header.Header)

	var buf bytes.Buffer
	io.Copy(&buf, file)
	data := buf.Bytes()

	if file_types.ValidateFriendData(&buf) {
		fmt.Println("Successfully validated save file")
		storage.StoreSaveGameState(udid, data)
	} else {
		fmt.Println("Unable to validate friend data :(")
	}

	file.Close()
}
