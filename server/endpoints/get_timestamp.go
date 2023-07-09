package endpoints

import (
	"fmt"
	"io"
	"net/http"
	"server/storage"
)

func getTimestamp(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request for timestamp: %s\n", r.URL.String())
	io.WriteString(w, "i dont know what to send here\n")
}
