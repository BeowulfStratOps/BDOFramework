params ["_side"];

private _index = [west, east, resistance, civilian] find _side;

bso_respawn_activeSpawnPoints # _index
