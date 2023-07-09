package endpoints

import (
	"encoding/hex"
	"fmt"
	"io"
	"io/ioutil"
	"math/rand"
	"net/http"
	"server/storage"
)

func getGifts(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request for gifts: %s\n", r.URL.String())
	data, _ := ioutil.ReadAll(r.Body)
	fmt.Println(hex.Dump(data))
	val := rand.Int()
	result := fmt.Sprintf("%d\n\n1:160,1:0:0:fake_user_id:fake_name:f209a648a8630f1af5916b2e651643f7", val)

	fmt.Println("Sending back: " + result)
	io.WriteString(w, result)
}
