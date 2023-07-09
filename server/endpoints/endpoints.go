package endpoints

import (
	"net/http"
	"server/storage"
)

func GetEndpoints() map[string]func(http.ResponseWriter, *http.Request, storage.Storage) {
	return map[string]func(http.ResponseWriter, *http.Request, storage.Storage){
		"/":                           unkownRequest,
		"/zca/gettimestamp.php":       getTimestamp,
		"/zca/savegamestate.php":      saveGameState,
		"/zca/getrandomgamestate.php": getRandomGameState,
		"/zca/getgamestate.php":       getGameState,
		"/zca/getgifts.php":           getGifts,
		"/zca/gotgifts.php":           gotGifts,
		"/zca/getmetadata.php":        getMetadata,
		"/facebook/graph/me":          facebookEmulatorGraphMe,
		"/facebook/restserver.php":    facebookEmulatorRestServer,
	}
}
