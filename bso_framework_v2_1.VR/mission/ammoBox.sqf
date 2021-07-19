// [this] execVM "mission\ammoBox.sqf"; // put this in the init of the box

 private["_box"];
 _box = _this select 0;
if (isServer) then {

	clearMagazineCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearItemCargoGlobal _box;

	_box addMagazineCargoGlobal  ["hlc_24Rnd_75x55_ap_stgw", 40];
	_box addMagazineCargoGlobal  ["hlc_24Rnd_75x55_T_stgw", 20];

	_box addMagazineCargoGlobal  ["UK3CB_Sten_34Rnd_Magazine_R", 10];
	_box addMagazineCargoGlobal  ["UK3CB_Sten_34Rnd_Magazine_RT", 4];

	_box addMagazineCargoGlobal  ["rhsgref_296Rnd_792x57_SmK_belt", 3];
	_box addMagazineCargoGlobal  ["rhsgref_50Rnd_792x57_SmK_drum", 4];


	_box addMagazineCargoGlobal  ["rhssaf_mag_br_m84", 16];
	_box addMagazineCargoGlobal  ["rhssaf_mag_brd_m83_white", 8];
	_box addMagazineCargoGlobal  ["rhssaf_mag_brd_m83_orange", 1];
	_box addMagazineCargoGlobal  ["rhssaf_mag_brd_m83_blue", 1];
	_box addMagazineCargoGlobal  ["rhssaf_mag_brd_m83_red", 1];

	_box addMagazineCargoGlobal  ["DemoCharge_Remote_Mag", 2];
	_box addWeaponCargoGlobal  ["rhs_weap_m72_ASM", 2];

	_box addMagazineCargoGlobal  ["1Rnd_HE_Grenade_shell", 6];
	_box addMagazineCargoGlobal  ["1Rnd_SmokePurple_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_SmokeRed_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_SmokeGreen_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_SmokeBlue_Grenade_shell", 2];
	_box addMagazineCargoGlobal  ["1Rnd_Smoke_Grenade_shell", 4];

	_box addMagazineCargoGlobal  ["UK3CB_BHP_9_13Rnd", 120];

	_box addItemCargoGlobal  ["ACE_SpareBarrel", 2];

	_box addItemCargoGlobal  ["ACE_salineIV_500", 10];
	_box addItemCargoGlobal  ["ACE_tourniquet", 10];
	_box addItemCargoGlobal  ["ACE_morphine", 10];
	_box addItemCargoGlobal  ["ACE_epinephrine", 5];
	_box addItemCargoGlobal  ["ACE_elasticBandage", 20];
	_box addItemCargoGlobal  ["ACE_packingBandage", 20];

};



