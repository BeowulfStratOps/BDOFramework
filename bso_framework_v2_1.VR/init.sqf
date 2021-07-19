/////bmf-v2_1////

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

// slows down time until gameon
[] call bso_fnc_timeSlow;

waitUntil {!isNull player};

// add's a "Teleport to Leader" action for JIPs
[] call bso_fnc_addJipTp;

// DO STUFF BELOW HERE!
