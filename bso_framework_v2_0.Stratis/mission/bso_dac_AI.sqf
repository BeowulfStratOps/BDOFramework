
// call in DAC Events config (variable for group)
// “{[_x] execVM ""mission\bso_dac_AINightfight.sqf””} foreach units _group”

if (isServer) then {


	_unit = _this select 0;

if ("Daytime" call BIS_fnc_getParamValue == 23) then {


	if (typeof _unit == "O_BSO_FIA_GL") then {_derp = [_unit] execVM "mission\bso_AIParaflare.sqf"; removeAllPrimaryWeaponItems _unit; _unit addPrimaryWeaponItem "acc_flashlight";}; 
	if (typeof _unit == "O_BSO_FIA_INS") then {_derp = [_unit] execVM "mission\bso_AIParaflare.sqf"; removeAllPrimaryWeaponItems _unit; _unit addPrimaryWeaponItem "acc_flashlight";}; 

};

};