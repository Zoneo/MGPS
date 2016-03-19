/* -------------------------------------------- Magnet Gaming Party Server -------------------------------------------- */

/* ----------------------------------------------------- Stocks ------------------------------------------------------- */

stock GetName(playerid) {
	new plyNme[MAX_PLAYER_NAME];
	GetPlayerName(playerid, plyNme, sizeof(plyNme));
	return plyNme;
}

stock logEvent(file[], source[], event[]) {
	new eventToLog[500], year, month, day, hour, minute, second, File:logFile, directory[128];
	getdate(year, month, day);
	gettime(hour, minute, second);
	format(directory, sizeof(directory), "logs/%s.log", file);
	format(eventToLog, sizeof(eventToLog), "[%d/%d/%d] [%d:%d:%d] %s > %s\r\n", year, month, day, hour, minute, second, source, event);
	logFile = fopen(directory, io_append);
	fwrite(logFile, eventToLog);
	fclose(logFile);
	logFile = fopen("logs/all.log", io_append);
	fwrite(logFile, eventToLog);
	fclose(logFile);
}