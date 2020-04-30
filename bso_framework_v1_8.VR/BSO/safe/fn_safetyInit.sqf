/////bmf-v1_8////

// Wait until we're in-game
waitUntil{time > 3};

// Clients should exit here.
if(!isServer) exitWith {};

// Server launches the SafeStart phase on all clients (includes server client if hosted locally).
[[],"bso_fnc_setSafety", true, false, true] call BIS_fnc_MP;
