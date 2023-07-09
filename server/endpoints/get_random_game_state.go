package endpoints

import (
	"fmt"
	"math/rand"
	"net/http"
	"server/storage"
	"time"
)

func getRandomGameState(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request for random game state: %s\n", r.URL.String())

	files, _ := storage.ListFiles()

	seed := time.Now().UnixNano()
	rand.Seed(seed)
	randomIndex := rand.Intn(len(files))
	fmt.Printf("Seed: %d index: %d\n", seed, randomIndex)
	pick := files[randomIndex]

	data, _ := storage.GetFile(pick)

	w.Write(data)
}
