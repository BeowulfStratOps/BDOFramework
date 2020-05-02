if (missionNamespace getVariable ["bso_respawn_menuPosition_active", false]) then {
    systemChat str _this;
    _this call BIS_fnc_respawnMenuPosition;
};
