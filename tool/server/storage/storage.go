package storage

type Storage interface {
	GetFile(id string) ([]byte, error)
	ListFiles() ([]string, error)

	StoreSaveGameState(id string, data []byte) error
}
