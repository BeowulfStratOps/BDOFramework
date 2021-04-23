// Call on a group leader in editor with below 
//[this] execVM "mission\bso_ai_init.sqf";
_groupLeader = _this select 0;
if (local _groupLeader) then { // Runs where unit is local
	
	{
	
	/*
		_type = typeOf _x;
		_rifleman = selectRandom ["Rifleman","Rifleman2"];
		switch _type do 
		{
			case "rhs_msv_emr_rifleman": {[_x,"opfor",_rifleman,true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_sergeant": {[_x,"opfor","Leader",true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_at": {[_x,"opfor","RPG",true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_arifleman": {[_x,"opfor","Autorifleman",true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_medic": {[_x,"opfor","Medic",true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_marksman": {[_x,"opfor","Marksman",true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_junior_sergeant": {[_x,"opfor","Rifleman2",true] call BSO_fnc_applyLoadout;};
			case "rhs_msv_emr_aa": {[_x,"opfor","AntiAir",true] call BSO_fnc_applyLoadout;};
			case "rhs_pilot": {[_x,"opfor","Pilot",true] call BSO_fnc_applyLoadout;};
		};
	*/	
		
		_x addEventHandler ["Killed", {
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
		
		
	} forEach units group _groupLeader;
	
};