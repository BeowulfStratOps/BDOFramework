if (hasInterface && [side group player] call bso_respawn_fnc_isTemplateActive) then
{
	[{!isNull player}, {
		private _config = missionConfigFile >> "BSORespawns" >> (str side group player);

		if (!isClass _config) exitWith {};

		private _personalTickets = getNumber (_config >> "personalTickets");

		{
			_x params ["_unit", "_tickets"];
			if (vehicleVarName player == _unit) exitWith {
				_personalTickets = _tickets;
			};
		} foreach getArray (_config >> "personalTicketsUnit");

		if (_personalTickets > 0) then {
			[player, _personalTickets] call BIS_fnc_respawnTickets;
		};
		setPlayerRespawnTime (3 + getMissionConfigValue ["respawnDelay", 3]);
	}] call CBA_fnc_waitUntilAndExecute;
};

if (!isServer) exitWith {};

if ({[_x] call bso_respawn_fnc_isTemplateActive} count [west, east, resistance, civilian] == 0) exitwith {};

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
