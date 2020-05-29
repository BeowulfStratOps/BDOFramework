setPlayerRespawnTime 99999;
[{
	[true, !serverCommandAvailable "#kick"] call ace_spectator_fnc_setSpectator;
}, [], 3] call CBA_fnc_waitAndExecute;

// TODO: make sure people can still type (so admin can log in)
// TODO: un-force spectator on admin when he logs in
