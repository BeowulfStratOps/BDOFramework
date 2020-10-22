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
	case 0:
	{
		_campBasic     = ["Land_TentA_F",["Box_FIA_Ammo_F",0,2,0],["Land_FoodSacks_01_small_brown_idap_F",2,0,0],["Logic",2,2,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = ["O_BSO_FIA_MG","O_BSO_FIA_AUTO","O_BSO_FIA_LAT"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_campBasic     = ["Land_TentA_F",["Box_FIA_Ammo_F",0,2,0],["Land_FoodSacks_01_small_brown_idap_F",2,0,0],["Logic",2,2,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_BSO_FIA_BSO_M252",-5,5,0,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_MG","O_BSO_FIA_AUTO","O_BSO_FIA_LAT"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2:
	{
		_campBasic     = ["Land_TentA_F",["Box_FIA_Ammo_F",0,2,0],["Land_FoodSacks_01_small_brown_idap_F",2,0,0],["Logic",2,2,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_BSO_FIA_M2",-5,5,0,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_MG","O_BSO_FIA_AUTO","O_BSO_FIA_LAT"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 3:
	{
		_campBasic     = ["Box_FIA_Ammo_F",["MetalBarrel_burning_F",1,0,0],["Land_FoodSacks_01_small_brown_idap_F",-1,0,0],["Logic",1,1,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = ["O_BSO_FIA_MG","O_BSO_FIA_AUTO","O_BSO_FIA_LAT"];
		_campUserObj   = [];
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