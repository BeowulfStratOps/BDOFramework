if (isNil "Trigger_BSOStart") then { Trigger_BSOStart = false; };

if (isServer) then {
	Trigger_BSOGameOn = false; publicVariable "Trigger_BSOGameOn";
};

if (Trigger_BSOStart) exitWith {};

if (!hasInterface) exitWith {};

[{
	if (currentWeapon player != "") then {
		[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
	};
}, [], 0.01] call CBA_fnc_waitAndExecute;

[] spawn { // TODO: use CBA
	while {!Trigger_BSOStart} do
	{
		["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
		sleep 30;
	};
};

[{time > 3}, bso_fnc_setSafety] call CBA_fnc_waitUntilAndExecute;

// TODO: not really needed anymore, but might as well keep around. make it easy to configure.
// [] call bso_fnc_safeZone;

["Start Mission", {[] call bso_fnc_gameOn}, {!Trigger_BSOStart}] call bso_admin_fnc_addAdminAction;
