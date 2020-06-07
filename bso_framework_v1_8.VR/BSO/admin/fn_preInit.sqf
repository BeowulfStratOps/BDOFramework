// TODO: move this to admin tools!

[{!isNull player}, {
	private _mainAction = ["bso_end_mission", "Mission End Conditions", "", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction] call ace_interact_menu_fnc_addActionToObject;
}] call CBA_fnc_waitUntilAndExecute;
