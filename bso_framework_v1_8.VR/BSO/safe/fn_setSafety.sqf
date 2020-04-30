fc_safestart = true;

// Server can stop here, we only needed to set the variable.
if(isDedicated) exitWith {};

fc_safestart_firedEH = ["ace_firedPlayer", {deleteVehicle (_this select 6);}] call CBA_fnc_addEventHandler;

player allowDamage false;


["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
