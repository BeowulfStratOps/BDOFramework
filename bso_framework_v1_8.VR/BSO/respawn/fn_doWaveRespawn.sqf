params ["_spawnPoint", "_consumeTicket"];

private _point = [side group player, _spawnPoint] call bso_respawn_fnc_getRespawnPoint;

if (isNil "_point") exitWith {};

if (_consumeTicket && {!([] call bso_respawn_fnc_consumeTicket)}) exitWith {};

private _location = _point # 2;

bso_respawn_handleRespawnFnc = [{
	params ["_location"];
	[player, _location, false] call BIS_fnc_moveToRespawnPosition
}, [_location]];

[false] call ace_spectator_fnc_setSpectator
