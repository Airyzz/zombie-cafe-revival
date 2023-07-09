package endpoints

import (
	"encoding/hex"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"server/storage"
)

func unkownRequest(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got unknown request: %s\n", r.URL.String())
	data, _ := ioutil.ReadAll(r.Body)
	fmt.Println(hex.Dump(data))

	io.WriteString(w, "Unknown request\n")
}
