
class CfgRespawnTemplates {
    class BSO_Respawn_System {
        displayName = "BSO Advanced Respawn System";
        onPlayerKilled = "bso_respawn_fnc_playerKilled";
        onPlayerRespawn = "bso_respawn_fnc_playerRespawn";
        respawnTypes[] = {3};
        isCall = 1;
    };
};
