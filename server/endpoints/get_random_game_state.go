package endpoints

import (
	"fmt"
	"io/ioutil"
	"log"
	"math/rand"
	"net/http"
	"os"
	"path"
	"server/storage"
)

func getRandomGameState(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("got request for random game state: %s\n", r.URL.String())

	dir := storage.GetSavegameDirectory()
	files, err := ioutil.ReadDir(dir)
	if err != nil {
		log.Fatal(err)
	}

	randomIndex := rand.Intn(len(files))
	pick := files[randomIndex]

	fmt.Println(pick.Name())

	file, _ := os.Open(path.Join(dir, pick.Name()))
	data, _ := ioutil.ReadAll(file)

	w.Write(data)
}
