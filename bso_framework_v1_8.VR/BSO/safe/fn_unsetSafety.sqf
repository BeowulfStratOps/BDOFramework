if (!hasInterface) exitwith {};
player allowDamage true;
["ace_firedPlayer", bso_safestart_firedEH] call CBA_fnc_removeEventHandler;
["BSOSafeStart",["GAME ON!"]] call BIS_fnc_showNotification;
