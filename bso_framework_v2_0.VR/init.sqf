/////bmf-v2_0////

enableSaving [false,false];

////// ====	Taskmaster
execVM "mission\briefing.sqf";

// ACRE
execVM "bso\acre.sqf";

// Adds Admin action to start mission
_mainAction = ["bso_start_mission", "Start Mission", "", {execVM "bso\safe\safestart_adminAction.sqf"}, {fc_safestart && serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
["CAManBase", 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction, true] call ace_interact_menu_fnc_addActionToClass;

if (true) then { // replace with false if you don't want to use safety in your mission
	////// ==== Safety
	// Enable ACE weapon Safety and Earplugs in.
	#include "BSO\safe\safety.sqf";
	// Safe Start
	// Import all modules.
	fc_safestart_init = compile preprocessFileLineNumbers "BSO\safe\safestart_init.sqf";
	// Run all modules.
	[] spawn fc_safestart_init;
	// Safe Zone
	execVM "bso\safe\safe_zone.sqf";

	//Safe Start Hint
	if (isNil "Hint_BSOStart") then { Hint_BSOStart = true; publicVariable "Hint_BSOStart"};


	while {Hint_BSOStart} do
	{
		["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
		sleep 30;
	};
};
