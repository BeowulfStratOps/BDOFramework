//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Events     //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_TypNumber","_TempArray","_Events_Vehicle",
			"_Events_Unit_S","_Events_Unit_V","_Events_Unit_T","_Events_Unit_A","_Events_Unit_C","_Events_Unit_H"
		];

			_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------------------------------------------------
//------------ Events => Create | ReachWP | NotAliveGroup | NotAliveUnit | (BeforeReduce) | (AfterBuildUp)  | (DetectEnemys) ----------------
//-------------------------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_Events_Unit_S =	[
								
								["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators; {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"],  // Executes during creation. {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"
								[],  // Executes when reaching waypoing.
								[],  // Executes when group is eliminated.
								[],  // Executes when unit is eliminated
								[],  // Executes before group is reduced.
								["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators; {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"],  // Executes after group is reduced.
								[]   // Executes when enemy is detected.
								
							];
		_Events_Unit_V = 	[
								["{vehicleGen = vehicle _x} forEach units _group; {_x addCuratorEditableObjects [[vehicleGen],true]} forEach allCurators; {_x addCuratorEditableObjects [(units _group),true]} forEach allCurators;  {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"],
								[],
								[],
								[],
								[],
								["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators; {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"],
								[]
							];
		_Events_Unit_T = 	[
								["{vehicleGen = vehicle _x} forEach units _group; {_x addCuratorEditableObjects [[vehicleGen],true]} forEach allCurators; {_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
								[],
								[],
								[]
							];
		_Events_Unit_A = 	[
								["{vehicleGen = vehicle _x} forEach units _group; {_x addCuratorEditableObjects [[vehicleGen],true]} forEach allCurators; {_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
								[],
								[],
								[]
							];
		_Events_Unit_C = 	[
								["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators; {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"],
								[],
								[],
								[],
								[],
								["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators; {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"]  // Executes after group is reduced.
								//["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators"]
							];
		_Events_Unit_H = 	[
								["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
								[],
								[],
								[]
							];
		_Events_Vehicle =	[
								["{_x addCuratorEditableObjects [[_vehc],true]} forEach allCurators"],
								[],
								[]
							];
	};
//-------------------------------------------------------------------------------------------------
	case 2:
	{
		_Events_Unit_S =	[
								
								["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators;"],  // Executes during creation. {[_x] execVM ""mission\bso_dac_AI.sqf""} foreach units _group;"
								[],  // Executes when reaching waypoing.
								[],  // Executes when group is eliminated.
								[],  // Executes when unit is eliminated
								[],  // Executes before group is reduced.
								["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators;  _bsoDac = [_unit] execVM ""mission\bso_dac_AI.sqf""; if (typeOf _unit == ""O_BSO_FIA_GL"") then {[_unit] call CBA_fnc_taskDefend;};"],  // Executes after group is reduced.
								[]   // Executes when enemy is detected.
								
							];
		_Events_Unit_V = 	[
								[],
								[],
								[],
								[],
								[],
								[],
								[]
							];
		_Events_Unit_T = 	[
								[],
								[],
								[],
								[]
							];
		_Events_Unit_A = 	[
								[],
								[],
								[],
								[]
							];
		_Events_Unit_C = 	[
								[],
								[],
								[],
								[],
								[],
								[]  // Executes after group is reduced.
								//["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators"]
							];
		_Events_Unit_H = 	[
								[],
								[],
								[],
								[]
							];
		_Events_Vehicle =	[
								[],
								[],
								[]
							];
	};
//-------------------------------------------------------------------------------------------------

	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Events > No valid config number";
				};
				if(true) exitwith {};
			};
};

_TempArray = [_Events_Unit_S,_Events_Unit_V,_Events_Unit_T,_Events_Unit_A,_Events_Unit_C,_Events_Unit_H,_Events_Vehicle];
_TempArray