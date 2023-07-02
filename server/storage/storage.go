package storage

import (
	"os"
	"path"
)

func GetSavegameDirectory() string {
	curr, _ := os.Getwd()
	return path.Join(curr, "save_data")
}

func GetFilepathForSaveDeviceID(device_id string) string {
	save_dir := GetSavegameDirectory()
	return path.Join(save_dir, device_id)
}
