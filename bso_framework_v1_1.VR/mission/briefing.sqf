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
				1st Squad - CH1 401Mhz
					<br/>
				2nd Squad - CH2 402Mhz
					<br/>
				3rd Squad - CH3 403Mhz
					<br/>
				COMMAND - CH4 404Mhz 
					<br/>
				MMG Team - CH5 405Mhz
					<br/>
					<br/>
				Company net - CH1 40Mhz
					<br/>
				Air Net - CH5 44Mhz
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
				1st Squad - CH1 401Mhz
					<br/>
				2nd Squad - CH2 402Mhz
					<br/>
				3rd Squad - CH3 403Mhz
					<br/>
				COMMAND - CH4 404Mhz 
					<br/>
				MMG Team - CH5 405Mhz
					<br/>
					<br/>
				Company net - CH1 40Mhz
					<br/>
				Air Net - CH5 44Mhz
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
				1st Squad - CH1 401Mhz
					<br/>
				2nd Squad - CH2 402Mhz
					<br/>
				3rd Squad - CH3 403Mhz
					<br/>
				COMMAND - CH4 404Mhz 
					<br/>
				MMG Team - CH5 405Mhz
					<br/>
					<br/>
				Company net - CH1 40Mhz
					<br/>
				Air Net - CH5 44Mhz
				",RESISTANCE], 
  ["Notes","Additional notes about the mission and any tips you want to give the players should go here.",RESISTANCE],

  ["Credits","Created by: YOUR NAME HERE"]

]] call compile preprocessfilelinenumbers "BSO\shk_taskmaster.sqf";