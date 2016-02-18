////// ====	TFAR
execVM "BSO\tfar.sqf";

////// ====	Taskmaster
execVM "mission\briefing.sqf";

////// ==== Safety
// Respawn protection
execVM "BSO\safe_zone.sqf";
// Enable ACE weapon Safety and Earplugs in.
#include "BSO\safe\safety.sqf";
// Safe Start
// Import all modules.
fc_safestart_init = compile preprocessFileLineNumbers "BSO\safe\safestart_init.sqf";
// Run all modules.
[] spawn fc_safestart_init;

/////// ==== Save Disable
enableSaving [false,false];

////// ==== Graphics options
//setTerrainGrid 50; //uncomment to turn off grass
setViewDistance 3000;

////// === Mission Log
diag_log format ["###### %1 ######", missionName];
diag_log [diag_frameno, diag_ticktime, time, "Executing init.sqf"];

