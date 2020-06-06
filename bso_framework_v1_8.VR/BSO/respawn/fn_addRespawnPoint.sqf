params ["_side", "_name"];

private _point = _this call bso_respawn_fnc_getRespawnPoint;

if (isNil "_point") exitWith {};

_point params ["_disabled", "_type", "_location"];

if (_disabled) exitWith {};

private _bisId = [_side, _location, _name] call BIS_fnc_addRespawnPosition;

[_side, _name, _bisId] call bso_respawn_fnc_addActivePoint;
