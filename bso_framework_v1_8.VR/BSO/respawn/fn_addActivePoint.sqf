params ["_side", "_pointName", "_bisId"];

private _index = [west, east, resistance, civilian] find _side;

(bso_respawn_activeSpawnPoints # _index) pushBackUnique [_pointName, _bisId];

publicVariable "bso_respawn_activeSpawnPoints";
