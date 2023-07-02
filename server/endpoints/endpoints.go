package endpoints

import (
	"net/http"
)

func GetEndpoints() map[string]func(http.ResponseWriter, *http.Request) {
	return map[string]func(http.ResponseWriter, *http.Request){
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
