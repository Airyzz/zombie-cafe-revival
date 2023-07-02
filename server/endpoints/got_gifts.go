package endpoints

import (
	"encoding/hex"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
)

func gotGifts(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("got request for gotgifts: %s\n", r.URL.String())
	data, _ := ioutil.ReadAll(r.Body)
	fmt.Println(hex.Dump(data))

	io.WriteString(w, "1:170,0:0:0:fake_user_id:fake_name:f209a648a8630f1af5916b2e651643f7:\n")
}
