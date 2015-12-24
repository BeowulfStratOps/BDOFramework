///////// ======  Mission meta data
/*
Use the fields below to set your mission attributes. For assistance speak to an admin or see the BI wiki for Description.ext
*/

overviewText = "0-60<br />COOP<br />Short<br />Spectator Box<br />Standard Medical<br />Brief description about the mission<br />Author";

/*

The OverviewText string is used to easily edit your mission description that appears on the server when your mission is selected.
 Carefully edit each parameter as below, and then construct your string using "<br />" to break each line. YOU CANNOT USE RETURN OR ADDITIONAL SPACES IN THIS LINE, YOU MUST USE BREAK
 DO NOT FILL IN THE DESCRIPTION FIELD IN THE EDITOR'S MISSION INTEL WINDOW, THIS WILL OVERRIDE YOUR STRING	
 

0-60 															// <!-- Suggested Minimum-Maximum players

COOP 															//<!-- Game type - COOP/TvT/Dynamic

Short Length													//<!-- Expected Game Length - Short (30 Mins ) / Standard ( 1 - 1/2 Hour ) / Long ( 1 1/2 Hours + ) / Persistant (ALiVE Database Enabled)

Spectator Box 													//<! -- Respawns - Spectator/Spectator box/Tickets/Limit/Unlimited 

Standard Medical												//<! -- Medical System - Standard/Advanced/Medevac

Brief description about the mission 							// <!-- A VERY brief overview

Author 															//<!--- This is you!!

*/

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

overviewPicture = "mission\BSO_frame.jpg";								// <!-- Mission Picture (Use jpg at 1024x512 for quality/compression)
loadScreen = "mission\BSO_frame.jpg";									// <!-- Loading Screen Picture (See above)
OnLoadName = "BSO Framework";									// <!-- Mission Name (Just Text)
OnLoadMission = "BSO mission framework template"; 			// <!-- A VERY brief overview (Copy from above)

author="Walker";												// <!-- This is you!!				

class Header {
	maxPlayers = 60;						// <!-- CHANGE Where the number is the total playable slots
	minPlayers = 1;
	gameType = COOP;						// <!-- Mission Type
};

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//BSO Loadout System (Add custom loadouts to your mission)
/*	
class CfgBsoLoadouts {
	#include "loadouts\blufor.cpp"
  //#include "loadouts\opfor.cpp" //create this file by copying blufor.cpp and renaming
  //#include "loadouts\indep.cpp" //create this file by copying blufor.cpp and renaming
};
*/