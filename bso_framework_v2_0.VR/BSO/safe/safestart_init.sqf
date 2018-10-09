/////bmf-v1_7////
// FC: SafeStart initialisation and functions
// (C) 2014 Cam. See LICENSE.

// Include macros.
//#include "macros.h"

// Include debugging functions.
//#include "debug_init.sqf"

// -------------------------------------------------------------------------------
// LOCAL FUNCTION
//
// Begin the SafeStart phase for this client, adding a local eventHandler to
// remove fired projectiles and setting allowDamage to false.
// -------------------------------------------------------------------------------

fc_safestart_fnc_safety = {
  fc_safestart = true;

  // Server can stop here, we only needed to set the variable.
  if(isDedicated) exitWith {};

  fc_safestart_firedEH = ["ace_firedPlayer", {deleteVehicle (_this select 6);}] call CBA_fnc_addEventHandler;
  
  player allowDamage false;
  

	["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
};


// -------------------------------------------------------------------------------
// LOCAL FUNCTION
//
// End the SafeStart phase for this client, removing the local Fired eventHandler
// and setting allowDamage to true.
// -------------------------------------------------------------------------------

fc_safestart_fnc_unsafety = {
  fc_safestart = false;

  // Server can stop here, we only needed to set the variable.
  if(isDedicated) exitWith {};

  ["ace_firedPlayer", fc_safestart_firedEH] call CBA_fnc_removeEventHandler;

  player allowDamage true;

	["BSOSafeStart",["GAME ON!"]] call BIS_fnc_showNotification;
};

/////////////////////////////////////////////////////////////////////////////////

// Wait until we're in-game
waitUntil{time > 3};

/*
// If the user is the admin, give them an addAction that disables SafeStart.
if ((serverCommandAvailable "#kick") || (!isMultiplayer)) then {
  systemChat "You are the admin. Use the 'Start the mission!' scroll-menu option to start the mission when all players are ready.";
  player addAction ["<t color='#73E600'>Start the mission!</t>", "BSO\safe\safestart_adminAction.sqf", [], 1, false, true, "", "(driver _target == player)"];  
};
*/
// Clients should exit here.
if(!isServer) exitWith {};

// Server launches the SafeStart phase on all clients (includes server client if hosted locally).
[[],"fc_safestart_fnc_safety", true, false, true] call BIS_fnc_MP;
