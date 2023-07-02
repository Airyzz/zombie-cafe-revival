package endpoints

import (
	"fmt"
	"net/http"
)

func noResponse(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("got request: %s\n", r.URL.String())
}
