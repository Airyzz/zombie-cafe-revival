package endpoints

import (
	"fmt"
	"net/http"
	"server/storage"
)

func getGameState(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request for friend state: %s\n", r.URL.String())
	data, _ := storage.GetFile("TEST FILE")
	w.Write(data)
}
