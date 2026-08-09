#undef MAX_PLAYERS
#define MAX_PLAYERS 1000

///////////////////////////////////////////////////////

#define CMAIN                       "{33CC33}"
#define CWHITE                      "{FFFFFF}"
#define CCYAN                       "{00CC66}"
#define CPALEGREEN                  "{66BB66}"
#define CYELLOW                     "{FFFF00}"
#define CLIGHTGREY                  "{CECECE}"
#define CGREY                  		"{999999}"
#define CBLUE                       "{3399FF}"
#define CLIGHTBLUE                  "{33CCFF}"
#define CPURPLE                     "{DD90FF}"
#define CRED                        "{FF0000}"
#define CERROR                      "{FF5500}"
#define CLITEBLUE                   "{6699FF}"
#define CORANGE						"{FF9900}"

#define COLOR_MAIN                  0x33CC22FF
#define COLOR_LIGHTGREY             0xCECECEFF
#define COLOR_GREY					0x999999FF
#define COLOR_CYAN                  0x00CC66FF
#define COLOR_PALEGREEN             0x66BB66FF
#define COLOR_ERROR					0xFF5500FF
#define COLOR_PURPLE                0xDD90FFFF
#define COLOR_LITEBLUE				0x6699FFFF
#define COLOR_LIGHTRED				0xFF5030FF
#define COLOR_ORANGE				0xFF9900FF
#define COLOR_BLUE					0x3399FFFF
#define COLOR_YELLOW				0xFFFF00FF
#define COLOR_WHITE					0xFFFFFFAA
#define COLOR_RED					0xFF0000FF
#define COLOR_LIGHTBLUE				0x33CCFFFF

///////////////////////////////////////////////////////
// 8 уровень админки
#define FD1 		"Ivan_Wade"

#define FD2 		"______________________________"
#define FD3 		"______________________________"
#define FD4 		"______________________________"
#define FD5 		"______________________________"
#define FD6 		"______________________________"
#define FD7 		"______________________________"
#define FD8 		"______________________________"
#define FD9 		"______________________________"
#define FD10		"______________________________"

///////////////////////////////////////////////////////

#define AFK_SECOND 						3
#define MAX_BUSINESS 					150
#define MAX_FAMILYS						600
#define MAX_ADVERT_COUNT 				15
#define MAX_HOUSE        				600
#define MAX_FUEL                        40
#define CAR_SPAWN 						86400
#define MAX_DETAILS_ON_VEHICLE  		5
#define MAX_DETAILS_IN_CATEGORY 		50
#define MAX_SALUTE 						50

#define ELEVATOR_OFFSET					(0.059523)
#define DOORS_SPEED       				(3.3)

#define MAX_INV_SLOTS					20
#define MAX_MEBEL						5000

///////////////////////////////////////////////////////

stock Float:PointToPoint3D(Float:x1,Float:y1,Float:z1,Float:x2,Float:y2,Float:z2)
{
	return floatsqroot(floatadd(floatadd(floatpower(x2-x1,2),floatpower(y2-y1,2)),floatpower(z2-z1,2)));
}
native IsValidVehicle(vehicleid);
#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

#define RandomEx(%1,%2) (random(%2-%1)+%1)

#define CB:%0(%1) forward %0(%1); public %0(%1)

#define SCMF(%0,%1,%2,%3) \
	format(format_string, 128, %2,%3) \
	&& SendClientMessage(%0, %1, format_string)

ApplyAnimation_(playerid, animlib[], animname[], Float:fDelta, loop, lockx, locky, freeze, time, forcesync = 1)
{
	#pragma unused forcesync
	return ApplyAnimation(playerid, animlib, animname, Float:fDelta, loop, lockx, locky, freeze, time, 1);
}
#define ApplyAnimation ApplyAnimation_
#define SCM SendClientMessage
#define SCMTA SendClientMessageToAll
#define SPD ShowPlayerDialog
#define GetName(%0) pData[%0][pName]

///////////////////////////////////////////////////////

stock func_PlayerTDSetPreviewRot(playerid, PlayerText:text, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fZoom = 1.0) {
	TDprrot[text][0]=fRotX;
	TDprrot[text][1]=fRotY;
	TDprrot[text][2]=fRotZ;
	TDprrot[text][3]=fZoom;
	return PlayerTextDrawSetPreviewRot(playerid, text, fRotX, fRotY, fRotZ,fZoom);
}
#define PlayerTextDrawSetPreviewRot func_PlayerTDSetPreviewRot

stock Real_CreateDynamicObject(modelid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	new id_object = CreateDynamicObject(modelid, x, y, z, rx, ry, rz);
	Streamer_ToggleItemStatic(STREAMER_TYPE_OBJECT, id_object, 1);
	return id_object;
}
stock Real_CreateObject(modelid, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) 
	return CreateObject(modelid, x, y, z, rx, ry, rz);

CB: RealKick(playerid)
{
	return Kick(playerid);
}
#define Kick(%0) SetTimerEx("RealKick", 100, 0, "i", %0)

stock load_mode(playerid, timems = 3000)
{
	for(new i = 0; i < sizeof(preloadTD); i++)
		TextDrawShowForPlayer(playerid, preloadTD[i]);
    TogglePlayerControllable(playerid, 0);
    SetTimerEx("load_mode_Off", timems, 0, "i", playerid);
}
CB: load_mode_Off(playerid)
{
	for(new i = 0; i < sizeof(preloadTD); i++)
		TextDrawHideForPlayer(playerid, preloadTD[i]);
    TogglePlayerControllable(playerid, 1);
}

stock AC_SetPlayerArmour(playerid, Float: armour) {
    Shot_AntiGM_Total[playerid] = 0;
    SetPVarFloat(playerid, "AntiCheat_Armour", armour);
	return SetPlayerArmour(playerid, armour);
}
#define SetPlayerArmour AC_SetPlayerArmour