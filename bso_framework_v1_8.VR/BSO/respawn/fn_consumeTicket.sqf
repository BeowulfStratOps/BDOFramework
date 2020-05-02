// personal
if ([player] call BIS_fnc_respawnTickets > 0) exitWith {
    private _resulting = [player, -1] call BIS_fnc_respawnTickets;
    if (_resulting == 0) then {
        player setVariable ["BIS_fnc_respawnTickets_value", nil, true]; // remove personal ticket so that UI falls through to side tickets
    };
	true
};

// side
if ([side group player] call BIS_fnc_respawnTickets > 0) exitWith {
    private _resulting = [side group player, -1] call BIS_fnc_respawnTickets;
    if (_resulting == 0) then {
        // TODO: call script on server
    };
	true
};

false
