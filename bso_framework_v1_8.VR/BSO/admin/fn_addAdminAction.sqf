params ["_title", "_code", ["_condition", {true}]];

// TODO: add to zeus

private _uniqueId = "bso_admin_mission_" + _title;

private _action = [_uniqueId, _title, "", _code, {serverCommandAvailable "#kick" && (_this#2#0)}, {}, [_condition]] call ace_interact_menu_fnc_createAction;

[{!isNull player}, {
	params ["_action"];
	bso_dbg = _action;
	[player, 1, ["ACE_SelfActions","bso_admin_admin"], _action] call ace_interact_menu_fnc_addActionToObject;
}, [_action]] call CBA_fnc_waitUntilAndExecute;
