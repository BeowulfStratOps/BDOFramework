/////bmf-v1_04////

// Here you can find the mission briefing, admin end conditions and allow for marker visibility to only certain factions.
// You will have to set your debriefing information in the Meta.cpp file because ArmA.
// See the BSO Mission Makers Wiki for the downloadable PDF on the FHQ briefing and task system for full instructions
//
// The system uses filters for setting who has been set a task or briefing. 
// Included are the filters for sides in the Add Tasks section. These are the same filters which can be used in the AddBriefings section in the same way.
//
//	The following line is used to mark an objective as successful. Note how only the server calls the task change. More info can be found in the FHQ Guide.
//       if (isServer) then {["task1", "succeeded"] call FHQ_fnc_ttSetTaskState;};
//
// "<br/>" can be used to start new lines and create paragraphs


[
  {true}, //All factions/units will be able to see the tasks following this filter. This line will also use the "Obj1" marker and create an attack mark linked to the task.
	["task1", "Clear the Town of the enemy", "Clear the town", "CLEAR", getMarkerPos "obj1", "assigned", "attack"],
 
   west, // Only BluFor will be able to see these tasks.
	["Task2w","BluFor Obj.","Full Objective description", "Short Objective Description"],
 
   east, // Only OpFor will be able to see these tasks.
	["Task2e","OpFor Obj.","Full Objective description", "Short Objective Description"],
  
   resistance, // Only IndFor will be able to see these tasks.
	["Task2r","IndFor Obj.","Full Objective description", "Short Objective Description"]
		
] call FHQ_fnc_ttAddTasks;



[
	{true},
  ["Situation","A brief description of the current situation to cause this mission."],
  ["Mission","Full description of the mission at hand, including objectives, what you want to achieve, and what is classed as a failure."],
  ["Intel","Provide any general mission intel such as weather conditions and info about the AO or intelligence about the objectives"],	
  ["Execution","Description how you expect the mission should be executed, this can be just assigning a leader, or describing exactly how the players should execute the mission stage by stage."],
  ["OpFor","Description of the opposing forces in the area."],
  ["BluFor","Information on friendly forces in the area, including what your players are portraying."],
  ["Support","Include any information about support elements."],
  ["ROE","Include the side's doctrine (Regular/Irregular) and any engagement rules if required"],
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
				"], 
  ["Notes","Additional notes about the mission and any tips you want to give the players should go here."],
  ["Credits","Walker"]  
  
] call FHQ_fnc_ttAddBriefing;






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
