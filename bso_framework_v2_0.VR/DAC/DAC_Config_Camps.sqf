//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0: //Camp
	{
		_campBasic     = ["Land_TentA_F",["Box_FIA_Ammo_F",0,2,0],["Land_FoodSacks_01_small_brown_idap_F",2,0,0],["Logic",2,2,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1: // Camp with Mortar and Machinegunner
	{
		_campBasic     = ["Land_TentA_F",["Box_FIA_Ammo_F",0,2,0],["Land_FoodSacks_01_small_brown_idap_F",2,0,0],["Logic",2,2,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_BSO_FIA_M252",-5,5,0,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_MG"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2: // Camp with HMG and AntiAir 
	{
		_campBasic     = ["Land_TentA_F",["Box_FIA_Ammo_F",0,2,0],["Land_FoodSacks_01_small_brown_idap_F",2,0,0],["Logic",2,2,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_BSO_FIA_M2",-5,5,0,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_AA"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 3: // Bunkers with HMG, Mortar, Machinegunner, AntiAir and AntiTank
	{
		_campBasic     = ["Land_BagBunker_Large_F",["Land_BagBunker_Tower_F",10,10,180],["Flag_FIA_F",10,0,0],["Logic",1,1,0],0];
		_campAmmo      = ["Box_FIA_Ammo_F",15,-2,90];
		_campStatic    = [["O_BSO_FIA_M252",-3,13,0,"O_BSO_FIA_INS"],["O_BSO_FIA_M2",9.5,-1,140,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_MG","O_BSO_FIA_AA","O_BSO_FIA_AT"];
		_campUserObj   = [["Land_fort_artillery_nest",-5,15,315],["Land_BagBunker_Small_F",10,-1,320]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array