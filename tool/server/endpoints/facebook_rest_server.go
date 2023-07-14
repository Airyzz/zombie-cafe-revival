package endpoints

import (
	"encoding/json"
	"fmt"
	"net/http"
	"server/storage"
)

func facebookEmulatorRestServer(w http.ResponseWriter, r *http.Request, storage storage.Storage) {
	fmt.Printf("got request for facebook rest server: %s\n", r.URL.String())
	err := r.ParseMultipartForm(5 * 1024 * 1024)

	fmt.Println("Reading form data")

	if err != nil {
		panic(err)
	}

	fmt.Println(r.FormValue("format"))
	fmt.Println(r.FormValue("query"))
	fmt.Println(r.FormValue("access_token"))
	fmt.Println(r.FormValue("method"))

	response := []map[string]string{
		{
			"name":       "friend",
			"uid":        "FRIEND_ID_1",
			"first_name": "Bob",
			"last_name":  "Bobbson",
			"pic_square": "http://10.0.10.17:3333/profile_images/test.jpg",
		},
		{
			"name":       "friend2",
			"uid":        "FRIEND_ID_2",
			"first_name": "Alice",
			"last_name":  "Alison",
			"pic_square": "http://10.0.10.17:3333/profile_images/test.jpg",
		},
	}

	bytes, _ := json.Marshal(response)

	fmt.Println(string(bytes))

	w.Write(bytes)
}
