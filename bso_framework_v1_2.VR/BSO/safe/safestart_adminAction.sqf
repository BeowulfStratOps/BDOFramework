//_unit = _this select 0;
//_id = _this select 2;

//_unit removeAction _id;

// End SafeStart on all other clients
[[],"fc_safestart_fnc_unsafety", true, true, true] call BIS_fnc_MP;
Trigger_BSOStart = true; publicVariable "Trigger_BSOStart";

hint "Game on!";
