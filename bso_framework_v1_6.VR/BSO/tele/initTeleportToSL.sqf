sleep 5;
movetoSL = player addAction ["Teleport To SL", {
	player removeAction movetoSL;
	movetoSL = -1;
	if (isNil "bso_jiptp_available") then {
		// server didn't load the plugin, fallback to old version
		[] execVM "BSO\tele\TeleportToSL.sqf";
	} else {
		[player] remoteExec ["bso_jiptp_fnc_teleport", 2];
	};
}];
sleep 10;
hintSilent "Use your scroll wheel to teleport to your squad";
sleep 180;//3min
if (movetoSL != -1) then {
	player removeAction movetoSL;
};