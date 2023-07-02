package endpoints

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
)

func facebookEmulatorGraphMe(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("got request for facebook: %s\n", r.URL.String())
	data, _ := ioutil.ReadAll(r.Body)
	fmt.Println(hex.Dump(data))

	response := map[string]string{
		"name":       "fake_name",
		"first_name": "fake_first_name",
		"last_name":  "fake_last_name",
		"id":         "fake_user_id",
	}

	bytes, _ := json.Marshal(response)

	fmt.Println(string(bytes))

	w.Write(bytes)
}
