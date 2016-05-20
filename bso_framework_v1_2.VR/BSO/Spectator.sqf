/*
Taken from here https://forums.bistudio.com/topic/177851-spectate-mode-through-an-object/?p=2793480 and slowly modified 
*/
/*
Spectator camera script - v0.2
Runs spectator camera
Created by BearBison
*/
/* Private variables */
private ["_Key","_RscLayer"];
/* Prevents unit moving */
(_this select 1) enableSimulation false;
/* Prevents free spectator camera */
//RscSpectator_allowFreeCam = false;
/* Disable post processing effects for spectator */
BIS_fnc_feedback_allowPP = false;
/* Runs spectator script */
_RscLayer = "BIS_fnc_respawnSpectator" call bis_fnc_rscLayer;
_RscLayer cutrsc ["RscSpectator","plain"];

// ACRE / TFAR 
//[true] call acre_api_fnc_setSpectator;
[player, true] call TFAR_fnc_forceSpectator;


/* Exits spectator camera using the Ctrl + T key */
BEARB_SpectatorKeyDown =
{
    _Key = _this select 1;
    if ((_Key == 20) && (_this select 3)) then
    {
        /* Enables post processing effects for spectator */
        BIS_fnc_feedback_allowPP = true;
        /* Stops spectator script */
     //   ("BIS_fnc_respawnSpectator" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];
        /* Removes event handlers detecting key press */
        (findDisplay 46) displayRemoveEventHandler ["KeyDown", BEARB_SpectatorEH];
        /* Allows unit moving */
 	["Terminate"] call BIS_fnc_EGSpectator;	
        player enableSimulation true;
		[false] call acre_api_fnc_setSpectator;
		//[player, false] call TFAR_fnc_forceSpectator;
    };
};
/* Ensures the primary display is found */
waitUntil {!isNull(findDisplay 46)};
/* Adds event handlers to detect key press */
BEARB_SpectatorEH = (findDisplay 46) displayAddEventHandler ["keyDown", "_this call BEARB_SpectatorKeyDown"];