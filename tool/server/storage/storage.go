package storage

type Storage interface {
	StoreFile(id string, data []byte) error
	GetFile(id string) ([]byte, error)
	ListFiles() ([]string, error)

	StoreSaveGameState(id string, data []byte) error
}
