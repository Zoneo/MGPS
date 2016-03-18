/* -------------------------------------------- Magnet Gaming Party Server -------------------------------------------- */

/* ----------------------------------------------------- Stocks ------------------------------------------------------- */


stock GetName(playerid) {
	new plyNme[MAX_PLAYER_NAME];
	GetPlayerName(playerid, plyNme, sizeof(plyNme));
	return plyNme;
}
