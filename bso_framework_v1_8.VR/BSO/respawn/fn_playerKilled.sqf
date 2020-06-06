params ["_corpse"];

// Virtual spectators should be ignored by the template (otherwise they break) (from original ace code)
if (_corpse isKindOf "ace_spectator_virtual") exitWith {};

if (ace_spectator_isSet) exitWith {}; // (from original ace code) TODO: should be moved to preset, as ace could potentially maybe change internal things

private _activeSpawnPoints = count ([side group player] call bso_respawn_fnc_getActivePoints);

if (_activeSpawnPoints == 0 || {!([] call bso_respawn_fnc_consumeTicket)}) exitWith {
    bso_respawn_isInSpectator = true;
    _corpse setVariable ["BIS_fnc_showRespawnMenu_disable", true];
    [] call bso_respawn_fnc_setSpectator;
};

[{
    !isNil {uiNamespace getVariable "BIS_RscRespawnControlsMap_ctrlButtonSpectate"}
}, {
    private _ctrl = uiNamespace getVariable "BIS_RscRespawnControlsMap_ctrlButtonSpectate";
    _ctrl ctrlEnable true;
    _ctrl ctrlSetTooltip "";
    _ctrl ctrlRemoveAllEventHandlers "ButtonDown";
    _ctrl ctrlAddEventHandler ["ButtonDown", {_this call bso_respawn_fnc_spectateButton; }];
}] call CBA_fnc_waitUntilAndExecute;
// ^ TODO: can we detect menuposition stuff being loaded?

bso_respawn_isInSpectator = false;
_corpse setVariable ["BIS_fnc_showRespawnMenu_disable", false];
