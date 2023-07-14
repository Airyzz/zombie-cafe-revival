package endpoints

import (
	"encoding/hex"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"server/storage"
)

func getMetadata(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request: %s\n", r.URL.String())
	data, _ := ioutil.ReadAll(r.Body)
	fmt.Println(hex.Dump(data))

	io.WriteString(w, "FRIEND_ID_1:10:0.000000:63:0:0:0:0\nFRIEND_ID_2:3:0.000000:63:0:0:0:0\n")
}
