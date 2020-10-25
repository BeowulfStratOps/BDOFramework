
// call in DAC Events config (variable for group)
// “{[_x] execVM ""mission\bso_dac_AINightfight.sqf””} foreach units _group”
// This Script is run on the events section of DAC if enabled. It will call on every single unit.
//if (isServer) then {
if (!hasInterface && !isDedicated) then { // Runs on HC only

/*  An example of how bso_dac_AI can be used. This will give all types of AI flash lights and execute the bso_AIParaflare script, giving the DAC AI these night fighting capabilities
if ("Daytime" call BIS_fnc_getParamValue == 23) then {


	if (typeof _unit == "O_BSO_FIA_GL") then {_derp = [_unit] execVM "mission\bso_AIParaflare.sqf"; removeAllPrimaryWeaponItems _unit; _unit addPrimaryWeaponItem "acc_flashlight";}; 
	if (typeof _unit == "O_BSO_FIA_INS") then {_derp = [_unit] execVM "mission\bso_AIParaflare.sqf"; removeAllPrimaryWeaponItems _unit; _unit addPrimaryWeaponItem "acc_flashlight";}; 

};
*/
};