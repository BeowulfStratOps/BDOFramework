params ["_side", "_name"];

private _config = missionConfigFile >> "BSORespawns" >> str _side >> _name;

private _disabled = getNumber (_config >> "disabled") == 1;

private _isMarker = isText (_config >> "marker");
private _isObject = isText (_config >> "object");

if (_isMarker isEqualTo _isObject) exitWith {
	// TODO: error!
	nil
};

private _name = getText (_config >> "name");

if (_name == "") exitWith {
	// TODO: error!
	nil
};

private _bisId = [];

if (_isMarker) exitWith {
	private _markerName = getText (_config >> "marker");
	// TODO: check marker exists
	[_disabled, "marker", _markerName]
};

private _objectName = getText (_config >> "object");
private _object = missionNamespace getVariable [_objectName, objNull];

// TODO: check object exists

[_disabled, "object", _object]
