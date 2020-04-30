//Safe Start Hint
 if (isNil "Hint_BSOStart") then { Hint_BSOStart = true; publicVariable "Hint_BSOStart"};

/////bmf-v1_8////
if (hasInterface) then
{
	[] spawn
	{

		sleep 0.01; // TODO: CBA

		if (currentWeapon player != "") then {

			[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;

		};
	};

	[] spawn { // TODO: CBA
		while {Hint_BSOStart} do
		{
			["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
			sleep 30;
		};
	};
};


[] call bso_fnc_safetyInit;
[] call bso_fnc_safeZone;


// TODO: make reliable
// Adds Admin action to start mission
_mainAction = ["bso_start_mission", "Start Mission", "", {execVM "bso\safe\safestart_adminAction.sqf"}, {fc_safestart && serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction, true] call ace_interact_menu_fnc_addActionToClass;
