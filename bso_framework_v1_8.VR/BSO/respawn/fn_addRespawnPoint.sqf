params ["_side", "_config"];

private _disabled = getNumber (_config >> "disabled") == 1;

if (_disabled) exitWith {};

private _isMarker = isText (_config >> "marker");
private _isObject = isText (_config >> "object");

if (_isMarker isEqualTo _isObject) exitWith {
	// TODO: error!
};

private _name = getText (_config >> "name");

if (_name == "") exitWith {
	// TODO: error!
};

private _bisId = [];

if (_isMarker) then {
	private _markerName = getText (_config >> "marker");
	// TODO: sanity check
	_bisId = [_side, _markerName, _name] call BIS_fnc_addRespawnPosition;
} else { // _isObject
	private _objectName = getText (_config >> "object");
	private _object = missionNamespace getVariable [_objectName, objNull];
	// TODO: sanity check
	_bisId = [_side, _object, _name] call BIS_fnc_addRespawnPosition;
};

private _pointId = configName _config;
[_side, _pointId, _bisId] call bso_respawn_fnc_addActivePoint;
