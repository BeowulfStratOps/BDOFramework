params ["_corpse"];

// TODO: should be moved to preset, as ace could potentially maybe change internal things

// taken from ace spectator respawnTemplate

// Virtual spectators should be ignored by the template (otherwise they break)
if (_corpse isKindOf "ace_spectator_virtual") exitWith {};

// If player died while already in spectator, ignore
if (!ace_spectator_isSet) then {

    private _fadeTime = 2.5;
    private _respawnTime = 3; // from description.ext

    // -- tickets out --

    setPlayerRespawnTime 99999;
    [] spawn {
        sleep 3;
        [true, !serverCommandAvailable "#kick"] call ace_spectator_fnc_setSpectator;
    };
    /*
        move people back in with  setPlayerRespawnTime 0; [maybe wait a frame] setPlayerRespawnTime _fadeTime + _respawnTime; // TODO: do this during init as well
    */

    // -- tickets remaining --
    // TODO: showMenu
};
