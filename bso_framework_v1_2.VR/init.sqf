////// ====	Taskmaster
execVM "mission\briefing.sqf";


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
// Adds Admin action to start mission
_mainAction = ["bso_start_mission", "Start Mission", "", {execVM "bso\safe\safestart_adminAction.sqf"}, {fc_safestart && serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _mainAction] call ace_interact_menu_fnc_addActionToClass;

  
  
// ACRE
execVM "bso\acre.sqf";


/////// ==== Save Disable
enableSaving [false,false];

////// === Mission Log
diag_log format ["###### %1 ######", missionName];
diag_log [diag_frameno, diag_ticktime, time, "Executing init.sqf"];


