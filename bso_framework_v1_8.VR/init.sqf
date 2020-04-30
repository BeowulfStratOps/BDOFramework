/////bmf-v1_7////

/////// ==== Save Disable
enableSaving [false,false];

////// === Mission Log
diag_log format ["###### %1 ######", missionName];
diag_log [diag_frameno, diag_ticktime, time, "Executing init.sqf"];

////// ====	Taskmaster
execVM "mission\briefing.sqf";

// ACRE
execVM "mission\acre.sqf";

// safety
[] call bso_fnc_safety;


// DO STUFF HERE!
