package main

import (
	"errors"
	"fmt"
	"net/http"
	"os"
	"server/endpoints"
	"server/storage"
)

func main() {
	fmt.Println("Starting server")
	os.MkdirAll(storage.GetSavegameDirectory(), os.ModePerm)

	for key, value := range endpoints.GetEndpoints() {
		fmt.Printf("Registering endpoint: %s\n", key)
		http.HandleFunc(key, value)
	}

	err := http.ListenAndServe(":3333", nil)

	if errors.Is(err, http.ErrServerClosed) {
		fmt.Printf("server closed\n")
	} else if err != nil {
		fmt.Printf("error starting server: %s\n", err)
		os.Exit(1)
	}
}
