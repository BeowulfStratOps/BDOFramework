/////bmf-v1_8////

params ["_unit_name", "_languages"];

if (vehicleVarName player == _unit_name) then {
    _languages call acre_api_fnc_babelSetSpokenLanguages;
};
