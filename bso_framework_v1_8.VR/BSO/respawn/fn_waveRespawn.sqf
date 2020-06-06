// ["MHQ", false, {}] call bso_fnc_waveRespawn;

// TODO: check params

if (!isServer) exitWith {
	// TODO: shout
};

// We do not consider players still in respawn menu here. They should have other options available
private _players = [] call ace_spectator_fnc_players;

_this remoteExec ["bso_respawn_fnc_doWaveRespawn", _players];
