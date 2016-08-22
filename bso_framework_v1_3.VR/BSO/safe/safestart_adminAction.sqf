/////bmf-v1_03////
//_unit = _this select 0;
//_id = _this select 2;

//_unit removeAction _id;

// End SafeStart on all other clients
[[],"fc_safestart_fnc_unsafety", true, true, true] call BIS_fnc_MP;
Hint_BSOStart = false;
Trigger_BSOStart = true; publicVariable "Trigger_BSOStart";

