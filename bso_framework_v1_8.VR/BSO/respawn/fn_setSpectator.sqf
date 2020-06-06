params [["_instant", false]];

setPlayerRespawnTime 99999;

bso_respawn_handleRespawnFnc = nil;

if (_instant) then {
	[true] call ace_spectator_fnc_setSpectator;
} else {
	[{[true] call ace_spectator_fnc_setSpectator}, [], 3] call CBA_fnc_waitAndExecute;
};

[{!isNull findDisplay 60000},
{
	private _spec = findDisplay 60000;
	_spec displayAddEventHandler ["KeyDown", {
		private _key = _this # 1;
		if (_key in actionKeys "reloadMagazine") then {
			[] call bso_respawn_fnc_handleAdminRespawn;
			true
		} else {
			false
		}
	}];
}] call CBA_fnc_waitUntilAndExecute;
