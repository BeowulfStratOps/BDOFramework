if (alive player) exitWith {}; // was probably set manually

setPlayerRespawnTime 0;
[{playerRespawnTime < 0}, {
	setPlayerRespawnTime (3 + getMissionConfigValue ["respawnDelay", 3]);
}] call CBA_fnc_waitUntilAndExecute;
