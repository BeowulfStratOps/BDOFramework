params [["_instant", false]];

setPlayerRespawnTime 99999;

private _fnc = {
	if (serverCommandAvailable "#kick") then {
		bso_respawn_handleRespawnFnc = [bso_respawn_fnc_handleAdminRespawn, []]
	} else {
		bso_respawn_handleRespawnFnc = nil;
	};
	//[true, !serverCommandAvailable "#kick"] call ace_spectator_fnc_setSpectator;
	[true, true] call ace_spectator_fnc_setSpectator;
};

if (_instant) then {
	[] call _fnc;
} else {
	[_fnc, [], 3] call CBA_fnc_waitAndExecute;
};

// TODO: un-force spectator on admin when he logs in. and set handleresapwnfnc
