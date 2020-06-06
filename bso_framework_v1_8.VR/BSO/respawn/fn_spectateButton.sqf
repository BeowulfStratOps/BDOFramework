bso_respawn_isInSpectator = true;
player setVariable ["BIS_fnc_showRespawnMenu_disable", true];

// from bis_fnc_respawnMenuPosition. cleanup or smth.
uiNamespace setVariable ["BIS_RscRespawnControls_posMetadata",nil];
		
// Close respawn menu
private _closeScript = ["close"] call BIS_fnc_showRespawnMenu;

[{
	scriptDone (_this#0);
}, {
	[true] call bso_respawn_fnc_setSpectator;
}, [_closeScript]] call CBA_fnc_waitUntilAndExecute;
