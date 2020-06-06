if (!serverCommandAvailable "#kick") exitWith {};

[false] call ace_spectator_fnc_setSpectator;

// TODO: there should be a better way of doing this
// wait until spectator is closed
[{ !isNull ([] call BIS_fnc_displayMission)},{ 
	[{
		openMap true;

		hint "Click on the map to select a spawn position for yourself.";

		onMapSingleClick {
			onMapSingleClick {};
			openMap false;

			bso_respawn_handleRespawnFnc = [{
				player setPos (_this#0);
			}, [_pos]];
			setPlayerRespawnTime 0;
			true
		};
	}] call CBA_fnc_execNextFrame;
 }] call CBA_fnc_waitUntilAndExecute;
