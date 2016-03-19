/* -------------------------------------------- Magnet Gaming Party Server -------------------------------------------- */

/* ------------------------------------------------------ Core -------------------------------------------------------- */


public OnGameModeInit() {
	printf("[MGPS] Initialising server...");
	//------------------------------------//
	new gamemodeString[50];
	format(gamemodeString, sizeof(gamemodeString), "%s %s", scriptName_Short, scriptVersion);
	SetGameModeText(gamemodeString);
	//------------------------------------//
	printf("[MGPS] Server initialised.");
	return 1;
}


public OnPlayerConnect(playerid) {
	new publicWelcomeMessage[128];
	format(publicWelcomeMessage, sizeof(publicWelcomeMessage), "[Server] Welcome to the server, %s (ID: %d)!", GetName(playerid), playerid);
	SendClientMessageToAll(COLOUR_YELLOW, publicWelcomeMessage);
	logEvent("PlayerConnect", "OnPlayerConnect", publicWelcomeMessage);
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	return 1;
}

public OnPlayerText(playerid, text[]) {
	
	new textLog[500];
	format(textLog, sizeof(textLog), "%s (ID: %d): %s", GetName(playerid), playerid, text);
	logEvent("chat", "OnPlayerText", textLog);
	return 1;
}

public OnPlayerDisconnect(playerid, reason) {
	new publicLeavingMessage[128];
	format(publicLeavingMessage, sizeof(publicLeavingMessage), "[Server] %s (ID: %d) has left the server!", GetName(playerid), playerid);
	SendClientMessageToAll(COLOUR_YELLOW, publicLeavingMessage);
	logEvent("PlayerDisconnect", "OnPlayerDisconnect", publicLeavingMessage);
	return 1;
}

public OnGameModeExit() {
	return 1;
}
