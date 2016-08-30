/////bmf-v1_03////

// Here you can find the mission briefing, admin end conditions and allow for marker visibility to only certain factions.
// You will have to set your debriefing information in the Meta.cpp file because ArmA.
// See BSO\shk_taskmaster.sqf for instructions
// "<br/>" can be used to start new lines and create paragraphs

[[
  ["Task1","Objective Name","Objective description",true,[],"assigned"],
  ["Task2w","Objective Name","Objective description",WEST],
  ["Task2e","Objective Name","Objective description",EAST],
  ["Task2r","Objective Name","Objective description",RESISTANCE]
  
],[

  ["Situation","A brief description of the current situation to cause this mission.",WEST],
  ["Mission","Full description of the mission at hand, including objectives, what you want to achieve, and what is classed as a failure.",WEST],
  ["Intel","Provide any general mission intel such as weather conditions and info about the AO or intelligence about the objectives",WEST],	
  ["Execution","Description how you expect the mission should be executed, this can be just assigning a leader, or describing exactly how the players should execute the mission stage by stage.",WEST],
  ["OpFor","Description of the opposing forces in the area.",WEST],
  ["BluFor","Information on friendly forces in the area, including what your players are portraying.",WEST],
  ["Support","Include any information about support elements.",WEST],
  ["ROE","Include the side's doctrine (Regular/Irregular) and any engagement rules if required",WEST],
  ["COMSIG","Operations comms and signal are follows
					<br/>
					<br/>
				1st Squad - CH1 SR
					<br/>
				2nd Squad - CH2 SR
					<br/>
				3rd Squad - CH3 SR
					<br/>
				COMMAND - CH4 SR
					<br/>
				MMG Team - CH5 SR
					<br/>
					<br/>
				Company net - CH1 LR
					<br/>
				Air Net - CH5 LR
				",WEST], 
  ["Notes","Additional notes about the mission and any tips you want to give the players should go here.",WEST],

  ["Situation","A brief description of the current situation to cause this mission.",EAST],
  ["Mission","Full description of the mission at hand, including objectives, what you want to achieve, and what is classed as a failure.",EAST],
  ["Intel","Provide any general mission intel such as weather conditions and info about the AO or intelligence about the objectives",EAST],	
  ["Execution","Description how you expect the mission should be executed, this can be just assigning a leader, or describing exactly how the players should execute the mission stage by stage.",EAST],
  ["OpFor","Description of the opposing forces in the area.",EAST],
  ["BluFor","Information on friendly forces in the area, including what your players are portraying.",EAST],
  ["Support","Include any information about support elements.",EAST],
  ["ROE","Include the side's doctrine (Regular/Irregular) and any engagement rules if required",EAST],
    ["COMSIG","Operations comms and signal are follows
					<br/>
					<br/>
				1st Squad - CH1 SR
					<br/>
				2nd Squad - CH2 SR
					<br/>
				3rd Squad - CH3 SR
					<br/>
				COMMAND - CH4 SR
					<br/>
				MMG Team - CH5 SR
					<br/>
					<br/>
				Company net - CH1 LR
					<br/>
				Air Net - CH5 LR
				",EAST], 
  ["Notes","Additional notes about the mission and any tips you want to give the players should go here.",EAST],
 
  ["Situation","A brief description of the current situation to cause this mission.",RESISTANCE],
  ["Mission","Full description of the mission at hand, including objectives, what you want to achieve, and what is classed as a failure.",RESISTANCE],
  ["Intel","Provide any general mission intel such as weather conditions and info about the AO or intelligence about the objectives",RESISTANCE],
  ["Execution","Description how you expect the mission should be executed, this can be just assigning a leader, or describing exactly how the players should execute the mission stage by stage.",RESISTANCE],
  ["OpFor","Description of the opposing forces in the area.",RESISTANCE],
  ["BluFor","Information on friendly forces in the area, including what your players are portraying.",RESISTANCE],
  ["Support","Include any information about support elements.",RESISTANCE],
  ["ROE","Include the side's doctrine (Regular/Irregular) and any engagement rules if required",RESISTANCE],
    ["COMSIG","Operations comms and signal are follows
					<br/>
					<br/>
				1st Squad - CH1 SR
					<br/>
				2nd Squad - CH2 SR
					<br/>
				3rd Squad - CH3 SR
					<br/>
				COMMAND - CH4 SR
					<br/>
				MMG Team - CH5 SR
					<br/>
					<br/>
				Company net - CH1 LR
					<br/>
				Air Net - CH5 LR
				",RESISTANCE], 
  ["Notes","Additional notes about the mission and any tips you want to give the players should go here.",RESISTANCE],

  ["Credits","Created by: YOUR NAME HERE"]

]] call compile preprocessfilelinenumbers "BSO\shk_taskmaster.sqf";




// Mission end conditions. By editing the "end" and "loser" configs in meta.cpp you can have the admin end the mission with a debrief.

_mainAction = ["bso_end_mission", "Mission End Conditions", "", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction] call ace_interact_menu_fnc_addActionToClass;

_sub1 = ["bso_end_mission_1", "Mission Success", "", {[-2,{["end1",true,4] call BIS_fnc_endMission;},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub2 = ["bso_end_mission_2", "Mission Failed", "", {[-2,{["loser",false,4] call BIS_fnc_endMission;},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;

[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _sub1] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _sub2] call ace_interact_menu_fnc_addActionToClass;




//Below is an example on how you can make only certain factions see certain markers.
/*
if (!isDedicated) then 
{
	{_x setMarkerAlphaLocal 0} forEach ["obj1","obj2","obj3","objA"]; // Define all markers to have selective visibility here.
	waitUntil {!isNull player};
	switch (side player) do 
	{
		case WEST: 
		{
			{_x setMarkerAlphaLocal 1} forEach ["objA"]; // Define the markers this faction will be able to see but others cannot.
		};
		case EAST: 
		{
			{_x setMarkerAlphaLocal 1} forEach ["obj1","obj2","obj3"];
		};	
		
	};
};
*/
