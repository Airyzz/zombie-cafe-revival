package endpoints

import (
	"encoding/hex"
	"fmt"
	"io/ioutil"
	"net/http"
	"server/storage"
)

func unknownRequest(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got unknown request: %s\n", r.URL.String())
	data, _ := ioutil.ReadAll(r.Body)
	fmt.Println(hex.Dump(data))

	http.Error(w, "Unimplemented", 500)
}
