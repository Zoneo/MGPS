/* -------------------------------------------- Magnet Gaming Party Server -------------------------------------------- */

/* ----------------------------------------------------- Stocks ------------------------------------------------------- */

#include <y_INI>

stock GetName(playerid) {
	new plyNme[MAX_PLAYER_NAME];
	GetPlayerName(playerid, plyNme, sizeof(plyNme));
	return plyNme;
}

stock logEvent(string) {

}