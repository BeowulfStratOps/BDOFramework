class bso_respawn
{
	class respawn
	{
		file = "bso\respawn";
		class playerKilled {};
		class playerRespawn {};
		class respawnInit { postInit=1; };
		class addRespawnPoint {};
		class addActivePoint {};
		class getActivePoints {};
		class setSpectator {};
		class handleSpectatorExit {};
		class consumeTicket {};
		class spectateButton {};
	};
};
