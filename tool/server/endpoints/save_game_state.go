package endpoints

import (
	"bytes"
	"file_types"
	"fmt"
	"io"
	"math/rand"
	"net/http"
	"server/storage"
	"time"
)

func saveGameState(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request to save game: %s\n", r.URL.String())

	rnd := rand.New(rand.NewSource(time.Now().UnixNano()))
	save_chance := rnd.Float32()
	fmt.Printf("Generated random number in save game state: %f\n", save_chance)
	if save_chance < 0.9 {
		fmt.Printf("returning early to save bandwidth")
		return
	}

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
