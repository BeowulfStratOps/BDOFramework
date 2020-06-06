if (!bso_respawn_isInSpectator) exitWith {}; // let MenuPosition do its thing

setPlayerRespawnTime (3 + getMissionConfigValue ["respawnDelay", 3]);

bso_respawn_isInSpectator = false;
player setVariable ["BIS_fnc_showRespawnMenu_disable", true];

if (isNil "bso_respawn_handleRespawnFnc") exitWith {
	// TODO: error. smth went wrong.
};

(bso_respawn_handleRespawnFnc # 1) call (bso_respawn_handleRespawnFnc # 0);
bso_respawn_handleRespawnFnc = nil;

// otherwise bis_fnc_selectRespawnTemplate dies horribly
true
