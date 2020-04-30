fc_safestart = false;

// Server can stop here, we only needed to set the variable.
if(isDedicated) exitWith {};

["ace_firedPlayer", fc_safestart_firedEH] call CBA_fnc_removeEventHandler;

player allowDamage true;

["BSOSafeStart",["GAME ON!"]] call BIS_fnc_showNotification;
