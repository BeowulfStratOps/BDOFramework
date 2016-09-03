/////bmf-v1_03////
//
////Loadout Template////
//
//This loadout template can be used to base for your custom loadouts.
//Below are templates for a basic rifleman, the various leaders, and a medic.
//These loadouts include the recommended usage of the Advanced Medical System supplies and radio distribution.




class BLUFOR {
		name = "Example Base Clases";
		class Rifleman
		{
			name = "Rifleman";
			primaryWeapon = "CLASS_RIFLE";
			primaryWeaponItems[] = {"CLASS_LAZOR","CLASS_SCOPE"};
			handgun = "CLASS_HANDGUN";
			handgunItems[] = {"CLASS_HANDGUN_LAZOR"};
			magazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",				
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_MX991",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"		
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};			
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "CLASS_BACKPACK";
			backpackMagazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER"
				};
			launcher = "CLASS_LAUNCHER";
			launcherItems[] = {"CLASS_LAUNCHER_SCOPE"};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"CLASS_UNIFORM_1","CLASS_UNIFORM_2","CLASS_UNIFORM_3"};
			vest[] = {"CLASS_VEST_1","CLASS_VEST_2","CLASS_VEST_3"};
			headgear[] = {"CLASS_HAT_1","CLASS_HAT_2","CLASS_HAT_3"};
			nvg = "CLASS_NVG";
			insignia = "";
		};		

		class SquadLeader
		{
			name = "Squad Leader";
			primaryWeapon = "CLASS_RIFLE";
			primaryWeaponItems[] = {"CLASS_LAZOR","CLASS_SCOPE"};
			handgun = "CLASS_HANDGUN";
			handgunItems[] = {"CLASS_HANDGUN_LAZOR"};
			magazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",				
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_MX991",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"		
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};						
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "CLASS_BACKPACK";
			backpackMagazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER"
				};
			launcher = "CLASS_LAUNCHER";
			launcherItems[] = {"CLASS_LAUNCHER_SCOPE"};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"CLASS_UNIFORM_1","CLASS_UNIFORM_2","CLASS_UNIFORM_3"};
			vest[] = {"CLASS_VEST_1","CLASS_VEST_2","CLASS_VEST_3"};
			headgear[] = {"CLASS_HAT_1","CLASS_HAT_2","CLASS_HAT_3"};
			nvg = "CLASS_NVG";
			insignia = "";
		};		
		
		class PlatoonLeader
		{
			name = "Platoon Leader";
			primaryWeapon = "CLASS_RIFLE";
			primaryWeaponItems[] = {"CLASS_LAZOR","CLASS_SCOPE"};
			handgun = "CLASS_HANDGUN";
			handgunItems[] = {"CLASS_HANDGUN_LAZOR"};
			magazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",				
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_MX991",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"		
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};						
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "CLASS_BACKPACK";
			backpackMagazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER"
				};
			launcher = "CLASS_LAUNCHER";
			launcherItems[] = {"CLASS_LAUNCHER_SCOPE"};
			backpackItems[] = {
				"ACRE_PRC117F",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"CLASS_UNIFORM_1","CLASS_UNIFORM_2","CLASS_UNIFORM_3"};
			vest[] = {"CLASS_VEST_1","CLASS_VEST_2","CLASS_VEST_3"};
			headgear[] = {"CLASS_HAT_1","CLASS_HAT_2","CLASS_HAT_3"};
			nvg = "CLASS_NVG";
			insignia = "";
		};				
		
		class Medic
		{
			name = "LOADOUT 2 (Medic)";
			primaryWeapon = "CLASS_RIFLE";
			primaryWeaponItems[] = {"CLASS_LAZOR","CLASS_SCOPE"};
			handgun = "CLASS_HANDGUN";
			handgunItems[] = {"CLASS_HANDGUN_LAZOR"};
			magazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",				
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_MX991",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"		
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};				
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "CLASS_BACKPACK";
			backpackMagazines[] = {
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_FRAG",
				"CLASS_FRAG",
				"CLASS_SMOKE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE",
				"CLASS_MAGAZINE_TRACER",
				"CLASS_MAGAZINE_TRACER"
				};
			launcher = "CLASS_LAUNCHER";
			launcherItems[] = {"CLASS_LAUNCHER_SCOPE"};
			backpackItems[] = {
			"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				"ACE_morphine",
				
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				
				"ACE_tourniquet",
				"ACE_tourniquet",
				"ACE_tourniquet",
				"ACE_tourniquet",
				"ACE_tourniquet"
				};
			uniform[] = {"CLASS_UNIFORM_1","CLASS_UNIFORM_2","CLASS_UNIFORM_3"};
			vest[] = {"CLASS_VEST_1","CLASS_VEST_2","CLASS_VEST_3"};
			headgear[] = {"CLASS_HAT_1","CLASS_HAT_2","CLASS_HAT_3"};
			nvg = "CLASS_NVG";
			insignia = "";
		};				
		
	};	