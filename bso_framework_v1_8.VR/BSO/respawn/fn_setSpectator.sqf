setPlayerRespawnTime 99999;
[{
	[true, !serverCommandAvailable "#kick"] call ace_spectator_fnc_setSpectator;
}, [], 3] call CBA_fnc_waitAndExecute;
