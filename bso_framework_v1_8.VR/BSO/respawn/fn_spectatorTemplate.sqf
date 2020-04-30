params ["_corpse"];

// TODO: should be moved to preset, as ace could potentially maybe change internal things

// taken from ace spectator respawnTemplate

// Virtual spectators should be ignored by the template (otherwise they break)
if (_corpse isKindOf "ace_spectator_virtual") exitWith {};

// If player died while already in spectator, ignore
if (!ace_spectator_isSet) then {
    // Negligible respawn delay can result in entering spectator after respawn
    // So we just use this value rather than living state of the unit
    [true, !serverCommandAvailable "#kick"] call ace_spectator_fnc_setSpectator;
};
