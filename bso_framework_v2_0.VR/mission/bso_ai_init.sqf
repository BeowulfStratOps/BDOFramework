// Call on a group leader in editor with below 
//[this, HC_2] execVM "mission\bso_ai_init.sqf";
if (isServer) then { 
	_groupLeader = _this select 0;
	
	{
		_type = typeOf _x;

		switch _type do 
		{
			case "O_bso_arl_REBEL7": {[_x] execVM "mission\bso_AIParaflare.sqf"; _x addItem "SAN_Headlamp_v1"; _x assignItem "SAN_Headlamp_v1";}; 
			case "O_bso_arl_GL": {[_x] execVM "mission\bso_AIParaflare.sqf"; _x addItem "SAN_Headlamp_v1"; _x assignItem "SAN_Headlamp_v1";}; 
			case "O_bso_arl_REBEL": {[_x] execVM "mission\bso_AIParaflare.sqf"; _x addItem "SAN_Headlamp_v1"; _x assignItem "SAN_Headlamp_v1";}; 
			case "O_bso_arl_REBEL5": {[_x] execVM "mission\bso_AIParaflare.sqf"; removeAllPrimaryWeaponItems _x; _x addPrimaryWeaponItem "rhs_acc_2dpzenit";}; 
			default {};
		};
	} forEach units group _groupLeader;
	

	// This handles transfer of AI to HC if present
	_hc = _this select 1;; // manually change to alternate HC
	
	if (isNull _hc) exitWith {};
	waitUntil {time > 20}; // wait for madness to complete
	_hcID = owner _hc;
	_unitGroup = group _groupLeader;
	
	_unitGroup setGroupOwner _hcID;

	diag_log format ["BSO_AI_INIT: Group %1 transferred to %2, at %3", _groupLeader, _hc, time];
	
	
	
};