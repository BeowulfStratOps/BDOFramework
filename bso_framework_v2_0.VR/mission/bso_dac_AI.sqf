//exec'd by all units by DAC
//[this] execVM "mission\bso_dac_AI.sqf";
_unit = _this select 0;

if (local _unit) then { // Runs where unit is local
	
	/*
	_type = typeOf _unit;
	_rifleman = selectRandom ["Rifleman","Rifleman2"];
	switch _type do 
	{
		case "rhs_msv_emr_rifleman": {[_unit,"opfor",_rifleman,true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_sergeant": {[_unit,"opfor","Leader",true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_at": {[_unit,"opfor","RPG",true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_arifleman": {[_unit,"opfor","Autorifleman",true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_medic": {[_unit,"opfor","Medic",true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_marksman": {[_unit,"opfor","Marksman",true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_junior_sergeant": {[_unit,"opfor","Rifleman2",true] call BSO_fnc_applyLoadout;};
		case "rhs_msv_emr_aa": {[_unit,"opfor","Antiair",true] call BSO_fnc_applyLoadout;};
		case "rhs_pilot": {[_unit,"opfor","Pilot",true] call BSO_fnc_applyLoadout;};
	};	
	*/
	
	_unit addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		
		{_unit removeMagazine _x} forEach magazines _unit;
		_unit removeItems  "FirstAidKit";
		_unit removeItems  "ACE_fieldDressing";
		_unit removeItems  "ACE_morphine";
		_unit removeItems  "ACE_epinephrine";
		_unit removeItems  "ACE_splint";
		_unit removeItems  "ACE_tourniquet";
		}
	];	
};