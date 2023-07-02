package endpoints

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"path"
	"server/storage"
)

func getGameState(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("got request for friend state: %s\n", r.URL.String())

	dir := storage.GetSavegameDirectory()
	files, _ := ioutil.ReadDir(dir)
	if len(files) > 0 {
		fmt.Printf("sending: %s\n", files[0].Name())
		file, _ := os.Open(path.Join(dir, files[0].Name()))
		data, _ := ioutil.ReadAll(file)

		file.Close()
		w.Write(data)
	}

}
