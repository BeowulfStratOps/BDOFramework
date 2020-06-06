if (hasInterface) then
{
	[{!isNull player}, {
		// TODO: catch non existing sides
		private _personalTickets = getNumber (missionConfigFile >> "BSORespawns" >> (str side group player) >> "personalTickets");
		if (_personalTickets > 0) then {
			[player, _personalTickets] call BIS_fnc_respawnTickets;
		};
		setPlayerRespawnTime (3 + getMissionConfigValue ["respawnDelay", 3]);
	}] call CBA_fnc_waitUntilAndExecute;
	["ace_spectatorSet", {
		params ["_isSpectator", "_player"];
		if (!_isSpectator && local _player) then {
			[] call bso_respawn_fnc_handleSpectatorExit;
		};
	}] call CBA_fnc_addEventHandler;
};

if (!isServer) exitWith {};

bso_respawn_activeSpawnPoints = [[], [], [], []]; // empty for all sides

{
	private _side = _x;
	private _config = missionConfigFile >> "BSORespawns" >> (str _side);
	private _tickets = getNumber (_config >> "sideTickets");
	[_side, _tickets] call BIS_fnc_respawnTickets;
	{
		[_side, configName _x] call bso_respawn_fnc_AddRespawnPoint;
	} forEach ("true" configClasses _config);
} foreach [west, east, resistance, civilian];

publicVariable "bso_respawn_activeSpawnPoints";
