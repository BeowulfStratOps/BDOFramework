// [this] execVM "mission\ammoBox.sqf"; // put this in the init of the box

 private["_box"];
 _box = _this select 0;
if (isServer) then {
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;
clearItemCargoGlobal _box;


_box addMagazineCargoGlobal  ["rhs_mag_30Rnd_556x45_M855_Stanag", 120];
_box addMagazineCargoGlobal  ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", 80];
_box addMagazineCargoGlobal  ["hlc_20Rnd_762x51_B_fal", 120];
_box addMagazineCargoGlobal  ["hlc_20Rnd_762x51_T_fal", 80];
_box addMagazineCargoGlobal  ["20Rnd_762x51_Mag", 200];
_box addMagazineCargoGlobal  ["hlc_30Rnd_9x19_GD_MP5", 200];

_box addMagazineCargoGlobal  ["rhs_mag_m67", 60];
_box addMagazineCargoGlobal  ["ACE_M84", 60];
_box addMagazineCargoGlobal  ["SmokeShell", 40];
_box addMagazineCargoGlobal  ["ACE_M14", 40];

_box addMagazineCargoGlobal  ["hlc_100Rnd_762x51_M_M60E4", 100];


_box addMagazineCargoGlobal  ["rhs_charge_tnt_x2_mag", 10];
_box addMagazineCargoGlobal  ["DemoCharge_Remote_Mag", 10];
_box addMagazineCargoGlobal  ["SatchelCharge_Remote_Mag", 2];


_box addMagazineCargoGlobal  ["1Rnd_HE_Grenade_shell", 120];
_box addMagazineCargoGlobal  ["1Rnd_SmokePurple_Grenade_shell", 20];
_box addMagazineCargoGlobal  ["1Rnd_SmokeRed_Grenade_shell", 20];
_box addMagazineCargoGlobal  ["1Rnd_SmokeGreen_Grenade_shell", 20];
_box addMagazineCargoGlobal  ["1Rnd_SmokeBlue_Grenade_shell", 20];
_box addMagazineCargoGlobal  ["1Rnd_Smoke_Grenade_shell", 100];


_box addMagazineCargoGlobal  ["RH_18Rnd_9x19_VP", 120];

_box addMagazineCargoGlobal  ["SmokeShell", 60];
_box addMagazineCargoGlobal  ["SmokeShellGreen", 20];
_box addMagazineCargoGlobal  ["SmokeShellRed", 20];
_box addMagazineCargoGlobal  ["SmokeShellBlue", 20];
_box addMagazineCargoGlobal  ["SmokeShellOrange", 20];



_box addItemCargoGlobal  ["ACE_salineIV_500", 100];
_box addItemCargoGlobal  ["ACE_tourniquet", 100];
_box addItemCargoGlobal  ["ACE_morphine", 100];
_box addItemCargoGlobal  ["ACE_epinephrine", 100];
_box addItemCargoGlobal  ["ACE_elasticBandage", 100];
_box addItemCargoGlobal  ["ACE_packingBandage", 100];

_box addItemCargoGlobal  ["ACE_CableTie", 100];



};



