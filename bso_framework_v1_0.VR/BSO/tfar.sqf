//Ensure loadouts and the missions Comms and signals briefing are matched to the frequencies included in the mission.

tf_radio_channel_name = "In Game";
publicVariable "tf_radio_channel_name";

tf_radio_channel_password = 123;
publicVariable "tf_radio_channel_password";

tf_west_radio_code = "_bluefor";
publicVariable "tf_west_radio_code";
tf_east_radio_code = "_opfor";
publicVariable "tf_east_radio_code";
tf_guer_radio_code = "_independent";
publicVariable "tf_guer_radio_code";

tf_give_personal_radio_to_regular_soldier = false;
publicVariable "tf_give_personal_radio_to_regular_soldier";

tf_no_auto_long_range_radio = true;
publicVariable "tf_no_auto_long_range_radio";

tf_give_microdagr_to_soldier = false;
publicVariable "tf_give_microdagr_to_soldier";

tf_same_sw_frequencies_for_side = true;
publicVariable "tf_same_sw_frequencies_for_side";

tf_same_lr_frequencies_for_side = true;
publicVariable "tf_same_lr_frequencies_for_side";

_settingsSwWest = false call TFAR_fnc_generateSwSettings;
_settingsSwWest set [2, ["401","402","403","404","405","406","407","408"]];
tf_freq_west = _settingsSwWest;
publicVariable "tf_freq_west";

_settingsLrWest = false call TFAR_fnc_generateLrSettings; 
_settingsLrWest set [2, ["40","41","42","43","44","45","46","47","48"]]; 
tf_freq_west_lr = _settingsLrWest; 
publicVariable "tf_freq_west_lr";

_settingsSwEast = false call TFAR_fnc_generateSwSettings;                          
_settingsSwEast set [2, ["401","402","403","404","405","406","407","408"]];
tf_freq_east = _settingsSwEast;
publicVariable "tf_freq_east";
 
_settingsLrEast = false call TFAR_fnc_generateLrSettings;                            
_settingsLrEast set [2, ["40","41","42","43","44","45","46","47","48"]];  
tf_freq_east_lr = _settingsLrEast;
publicVariable "tf_freq_east_lr";

_settingsSwGuer = false call TFAR_fnc_generateSwSettings;                         
_settingsSwGuer set [2, ["401","402","403","404","405","406","407","408"]];
tf_freq_guer = _settingsSwEast;
publicVariable "tf_freq_guer";
 
_settingsLrGuer = false call TFAR_fnc_generateLrSettings;                           
_settingsLrGuer set [2, ["40","41","42","43","44","45","46","47","48"]]; 
tf_freq_guer_lr = _settingsLrGuer;
publicVariable "tf_freq_guer_lr";


//// Forces players in Spectator Chat when dead
private["_unit"];

_unit = player;

if(alive _unit) then {

	// Disable spectator chat
	[_unit, false] call TFAR_fnc_forceSpectator;

} else {

  // Enable spectator chat
  [_unit, true] call TFAR_fnc_forceSpectator;

};