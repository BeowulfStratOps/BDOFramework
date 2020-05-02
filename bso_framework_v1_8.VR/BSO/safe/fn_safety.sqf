if (isNil "Trigger_BSOStart") then { Trigger_BSOStart = false; };

if (Trigger_BSOStart) exitWith {};

if (!hasInterface) exitWith {};

[{
	if (currentWeapon player != "") then {
		[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
	};
}, [], 0.01] call CBA_fnc_waitAndExecute;

[] spawn {
	while {!Trigger_BSOStart} do
	{
		["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
		sleep 30;
	};
};

[{time > 3}, bso_fnc_setSafety] call CBA_fnc_waitUntilAndExecute;

// TODO: not really needed anymore, but might as well keep around. make it easy to configure.
// [] call bso_fnc_safeZone;


// TODO: use add admin admin function once it exists
// Adds Admin action to start mission

// TODO: adjust bso admin zeus gameon function

[{!isNull player}, {
	private _mainAction = ["bso_start_mission", "Start Mission", "", {[] call bso_fnc_gameOn}, {!Trigger_BSOStart && serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction] call ace_interact_menu_fnc_addActionToObject;
}] call CBA_fnc_waitUntilAndExecute;
