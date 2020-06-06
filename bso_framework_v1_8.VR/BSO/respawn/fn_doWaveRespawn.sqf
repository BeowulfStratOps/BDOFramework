params ["_spawnPoint", ["_consumeTicket", false], ["_callback", {}]];

private _point = [side group player, _spawnPoint] call bso_respawn_fnc_getRespawnPoint;

if (isNil "_point") exitWith {};

if (_consumeTicket && {!([] call bso_respawn_fnc_consumeTicket)}) exitWith {};

private _location = _point # 2;

bso_respawn_handleRespawnFnc = [{
	params ["_location", "_callback"];
	[player, _location, false] call BIS_fnc_moveToRespawnPosition;
	[] call _callback;
}, [_location, _callback]];

[false] call ace_spectator_fnc_setSpectator;
setPlayerRespawnTime 0;
