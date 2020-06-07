params ["_title", "_end", "_isVictory"];

// TODO: add to zeus

private _uniqueId = "bso_end_" + _end + "_" + _title;

private _action = [_uniqueId, _title, "", {
	(_this#2) params ["_end", "_isVictory"];
	[_end, _isVictory, 4] remoteExec ["BIS_fnc_endMission"];
}, {serverCommandAvailable "#kick"}, {}, [_end, _isVictory]] call ace_interact_menu_fnc_createAction;

[{!isNull player}, {
	params ["_action"];
	[player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _action] call ace_interact_menu_fnc_addActionToObject;
}, [_action]] call CBA_fnc_waitUntilAndExecute;

