package endpoints

import (
	"net/http"
	"server/storage"
)

func GetEndpoints() map[string]func(http.ResponseWriter, *http.Request, storage.Storage) {
	return map[string]func(http.ResponseWriter, *http.Request, storage.Storage){
		"/v1/":                           unknownRequest,
		"/v1/zca/gettimestamp.php":       getTimestamp,
		"/v1/zca/savegamestate.php":      saveGameState,
		"/v1/zca/getrandomgamestate.php": getRandomGameState,
		"/v1/zca/getgamestate.php":       getGameState,
		// "/zca/getgifts.php":           getGifts,
		// "/zca/gotgifts.php":           gotGifts,
		"/v1/zca/getmetadata.php":     getMetadata,
		"/v1/facebook/graph/me":       facebookEmulatorGraphMe,
		"/v1/facebook/restserver.php": facebookEmulatorRestServer,
	}
}
