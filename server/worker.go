package main

import (
	"bytes"
	"fmt"
	"io"
	"net/http"
	"server/endpoints"

	"github.com/syumai/workers"
	"github.com/syumai/workers/cloudflare"
)

const kvNamespace = "zombie_cafe_revival_saves"

type CloudflareKVStorage struct {
	namespace *cloudflare.KVNamespace
}

func (kv CloudflareKVStorage) GetFile(id string) ([]byte, error) {
	reader, err := kv.namespace.GetReader(id, nil)

	if err != nil {
		return []byte{}, err
	}

	return io.ReadAll(reader)
}

func (kv CloudflareKVStorage) StoreFile(id string, data []byte) error {
	err := kv.namespace.PutReader(id, bytes.NewReader(data), nil)
	return err
}
func (kv CloudflareKVStorage) ListFiles() ([]string, error) {
	result, err := kv.namespace.List(nil)

	if err != nil {
		return []string{}, err
	}

	results := make([]string, len(result.Keys))

	for i, v := range result.Keys {
		results[i] = v.Name
		fmt.Printf("Found key: %s\n", v.Name)
	}

	return results, err
}

func main() {
	workers.Serve(http.HandlerFunc(func(w http.ResponseWriter, req *http.Request) {

		kv, err := cloudflare.NewKVNamespace(req.Context(), kvNamespace)

		if err != nil {
			fmt.Println("Could not init cloudflare KV Storage")
			w.WriteHeader(http.StatusNotFound)
			w.Write([]byte("Not Found"))
			return
		}

		e := endpoints.GetEndpoints()
		fmt.Printf("finding endpoint for: %s\n", req.URL.Path)
		handler, ok := e[req.URL.Path]
		storage := CloudflareKVStorage{kv}

		if ok {
			handler(w, req, storage)
		} else {
			w.WriteHeader(http.StatusNotFound)
			w.Write([]byte("Not Found"))
			return
		}
	}))
}
