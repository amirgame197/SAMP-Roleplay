/*------------------------------------------------------------------------------
                                    
                             Anti-Cheat(ELC_AC)
PROTECTIONS :
Anti-Weapon HACK
Anti-Ammo HACK
Anti-Ammo Block HACK
Anti-Money HACK
Anti SpeedHack & Aibreak

BUG :
Nothing/Aucun

VERSION :
V1(BETA 2)

CREDITS :
ELOCTRO (SCRIPT)
SIM (GetTickCount for linux)


                                    \**/
/*/- Anti-Cheat By Eloctro -----------------------------------------------------

NOTE :
#if TIMER_CHEAT_RATE > 0
#error RATE INVALID
#endif

*/
#include <a_samp>
/*----------------------------------------------------------------------------*/
//Configuration :
#define MAX_SPEED_VEHICLE 350.0 //(350=default)
#define MAX_SPEED_PED 350.0 //(350=default)
#define TIRE_RATE 500 //(500=default)
#define TIMER_CHEAT_RATE 2000
#define SPRINT_SPEED 0 //(0=DEFAULT/BETA)
#define TIME_GRANULITY (50) //Granulity GetTickCount
//#define NO_TICK_COUNT  //If GetTickCount() bug(linux?)
#define INCLUDE_BASE_MODE
/*----------------------------------------------------------------------------*/
enum aELCp
{
	aMoney,
	aAmmo[12],
	aWeapon[12],
	aTickFire,
	aAmmoFire,
	aTimer
};
new CheatPlayerInfo[MAX_PLAYERS][aELCp];
#if defined NO_TICK_COUNT
enum aELCs
{
	TickCount,
	TimerTick
};
new CheatServerInfo[aELCs];
#endif
/*----------------------------------------------------------------------------*/
stock Float:GetPlayerSpeedXY(playerid)
{
new Float:SpeedX, Float:SpeedY, Float:SpeedZ;
new Float:Speed;
if(IsPlayerInAnyVehicle(playerid)) GetVehicleVelocity(GetPlayerVehicleID(playerid), SpeedX, SpeedY, SpeedZ);
else GetPlayerVelocity(playerid, SpeedX, SpeedY, SpeedZ);
Speed = floatsqroot(floatadd(floatpower(SpeedX, 2.0), floatpower(SpeedY, 2.0)));
return floatmul(Speed, 200.0);
}
#if defined NO_TCIK_COUNT
	#define GetTickCount()                          (CheatServerInfo[TickCount])
	forward TimeUpdate();
	public TimeUpdate()
	{
		CheatServerInfo[TickCount] +=TIME_GRANULITY;
		return 1;
	}
#endif
forward OnPlayerCheckCheat(playerid);
forward OnPlayerCheat(playerid, cheatid);
/*----------------------------------------------------------------------------*/
forward ELC_AC_GivePlayerMoney(playerid, money);
public ELC_AC_GivePlayerMoney(playerid, money)
{
	CheatPlayerInfo[playerid][aMoney] = CheatPlayerInfo[playerid][aMoney] + money;
	return GivePlayerMoney(playerid, money);
}
stock initial_GivePlayerMoney(playerid, money)
{
	return GivePlayerMoney(playerid, money);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_GivePlayerMoney
    #undef GivePlayerMoney
#else
    #define _ALS_GivePlayerMoney
#endif
#define GivePlayerMoney ELC_AC_GivePlayerMoney
#endif
/*----------------------------------------------------------------------------*/
//ALS_OFF_SYSTEME ----------------
forward ELC_AC_ResetPlayerMoney(playerid);
public ELC_AC_ResetPlayerMoney(playerid)
{
	CheatPlayerInfo[playerid][aMoney] = 0;
	return ResetPlayerMoney(playerid);
}
stock initial_ResetPlayerMoney(playerid)
{
	return ResetPlayerMoney(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_ResetPlayerMoney
    #undef ResetPlayerMoney
#else
    #define _ALS_ResetPlayerMoney
#endif
#define ResetPlayerMoney ELC_AC_ResetPlayerMoney
#endif
/*----------------------------------------------------------------------------*/
//ALS_OFF_SYSTEME ----------------
forward ELC_AC_GetPlayerMoney(playerid);
public ELC_AC_GetPlayerMoney(playerid)
{
	return CheatPlayerInfo[playerid][aMoney];
}
stock initial_GetPlayerMoney(playerid)
{
	return GetPlayerMoney(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_GetPlayerMoney
    #undef GetPlayerMoney
#else
    #define _ALS_GetPlayerMoney
#endif
#define GetPlayerMoney ELC_AC_GetPlayerMoney
#endif
//ALS_OFF_SYSTEME ----------------
//Weapon------------------------------------------------------------------------
#define IsNotWeaponSlotNoAmmo(%0) (%0!=0 && %0!=1 && %0!=10)
stock GetWeaponSlot(weaponid)
{
	new slot;
	switch(weaponid)
	{
		case 0,1: slot = 0;
		case 2 .. 9: slot = 1;
		case 10 .. 15: slot = 10;
		case 16 .. 18, 39: slot = 8;
		case 22 .. 24: slot =2;
		case 25 .. 27: slot = 3;
		case 28, 29, 32: slot = 4;
		case 30, 31: slot = 5;
		case 33, 34: slot = 6;
		case 35 .. 38: slot = 7;
		case 40: slot = 12;
		case 41 .. 43: slot = 9;
		case 44 .. 46: slot = 11;
	}
	return slot;
}
/*----------------------------------------------------------------------------*/
forward ELC_AC_GivePlayerWeapon(playerid,Weapon,ammo);
public ELC_AC_GivePlayerWeapon(playerid,Weapon,ammo)
{
	new slot=GetWeaponSlot(Weapon);
	CheatPlayerInfo[playerid][aWeapon][slot]=Weapon;
	CheatPlayerInfo[playerid][aAmmo][slot]=ammo+CheatPlayerInfo[playerid][aAmmo][slot];
    return GivePlayerWeapon(playerid,Weapon,ammo);
}
stock initial_GivePlayerWeapon(playerid,Weapon,ammo)
{
	return GivePlayerWeapon(playerid,Weapon,ammo);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_GivePlayerWeapon
    #undef GivePlayerWeapon
#else
    #define _ALS_GivePlayerWeapon
#endif
#define GivePlayerWeapon ELC_AC_GivePlayerWeapon
#endif
//ALS_OFF_SYSTEME ----------------
forward ELC_AC_ResetPlayerWeapons(playerid);
public ELC_AC_ResetPlayerWeapons(playerid)
{
	for(new i = 0; i <12; i++)
	{
        CheatPlayerInfo[playerid][aWeapon][i]=0;
        CheatPlayerInfo[playerid][aAmmo][i]=0;
	}
    return ResetPlayerWeapons(playerid);
}
stock initial_ResetPlayerWeapons(playerid)
{
	return ResetPlayerWeapons(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_ResetPlayerWeapons
    #undef ResetPlayerWeapons
#else
    #define _ALS_ResetPlayerWeapons
#endif
#define ResetPlayerWeapons ELC_AC_ResetPlayerWeapons
#endif
//ALS_OFF_SYSTEME ----------------
//Core--------------------------------------------------------------------------
public OnPlayerCheckCheat(playerid)
{
	if(initial_GetPlayerMoney(playerid)!=CheatPlayerInfo[playerid][aMoney])
	{
		if (CheatPlayerInfo[playerid][aMoney] > initial_GetPlayerMoney(playerid))
		{
		    CheatPlayerInfo[playerid][aMoney]=initial_GetPlayerMoney(playerid);
		}
		else
		{
			/*initial_ResetPlayerMoney(playerid);
			initial_GivePlayerMoney(playerid, CheatPlayerInfo[playerid][aMoney]);*/
			CallLocalFunction("OnPlayerCheat", "dd", playerid,1);
		}
	}
	if(GetPlayerSurfingVehicleID(playerid)==INVALID_VEHICLE_ID && !IsPlayerInAnyVehicle(playerid))
	{
		if(GetPlayerSpeedXY(playerid) > MAX_SPEED_PED)
		{
			//Cheat Vitesse(Aibreak,SpeedHack)
			CallLocalFunction("OnPlayerCheat", "dd", playerid,5);
		}
	}
	else
	{
		if(GetPlayerSpeedXY(playerid) > MAX_SPEED_VEHICLE)
		{
			//Cheat Vitesse(Aibreak,SpeedHack)
			CallLocalFunction("OnPlayerCheat", "dd", playerid,5);
		}
	}
	new WA_VAR[12][2];
	//ANTI BLOCK MUNITIONS
	if(CheatPlayerInfo[playerid][aTickFire]!=0)
	{
		if(CheatPlayerInfo[playerid][aAmmoFire]==GetPlayerAmmo(playerid) && (GetPlayerSpeedXY(playerid) > SPRINT_SPEED))
		{
			if((GetTickCount()-CheatPlayerInfo[playerid][aTickFire]) >= TIRE_RATE)
			{
				//CHEAT AMMO BLOCK
				CallLocalFunction("OnPlayerCheat", "dd", playerid,4);
			}
			CheatPlayerInfo[playerid][aTickFire]=0;
			CheatPlayerInfo[playerid][aAmmoFire]=0;
		}

	}
	for(new i = 0; i <12; i++)
	{
		GetPlayerWeaponData(playerid,i,WA_VAR[i][0],WA_VAR[i][1]);
		if((WA_VAR[i][0]!=CheatPlayerInfo[playerid][aWeapon][i] && CheatPlayerInfo[playerid][aWeapon][i]==0))
		{
			//CHEAT WEAPON
			CallLocalFunction("OnPlayerCheat", "dd", playerid,2);
		}
		else if(((CheatPlayerInfo[playerid][aAmmo][i]-WA_VAR[i][1]) < 0) && (IsNotWeaponSlotNoAmmo(i)) && (CheatPlayerInfo[playerid][aWeapon][i]!=0))
		{
			//CHEAT AMMO
			CallLocalFunction("OnPlayerCheat", "dd", playerid,3);
		}
		else if(CheatPlayerInfo[playerid][aWeapon][i]!=0 && WA_VAR[i][0]==0)
		{
		    CheatPlayerInfo[playerid][aWeapon][i]=0;
		    CheatPlayerInfo[playerid][aAmmo][i]=0;
		}
		else
		{
		    CheatPlayerInfo[playerid][aAmmo][i]=WA_VAR[i][1];
		}
	}
	return 1;
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
public OnGameModeInit()
#else
public OnFilterScriptInit()
#endif
{
	#if defined NO_TICK_COUNT
	        CheatServerInfo[TimerTick]=SetTimer("TimeUpdate", TIME_GRANULITY, true);
	#endif
	
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("OnGameModeInit", "");
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnGameModeInit
	#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif
#define OnGameModeInit ELC_AC_OnGameModeInit
forward ELC_AC_OnGameModeInit();
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
public OnGameModeExit()
#else
public OnFilterScriptExit()
#endif
{
	#if defined NO_TICK_COUNT
	        KillTimer(CheatServerInfo[TimerTick]);
	#endif

	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("OnGameModeExit", "");
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnGameModeExit
	#undef OnGameModeExit
#else
	#define _ALS_OnGameModeExit
#endif
#define OnGameModeExit ELC_AC_OnGameModeExit
forward ELC_AC_OnGameModeExit();
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerConnect(playerid)
{
	if (!IsPlayerNPC(playerid))
	{
		CheatPlayerInfo[playerid][aTickFire]=0;
		CheatPlayerInfo[playerid][aAmmoFire]=0;
		for(new i = 0; i <12; i++)
		{
			CheatPlayerInfo[playerid][aWeapon][i]=0;
			CheatPlayerInfo[playerid][aAmmo][i]=0;
		}
		CheatPlayerInfo[playerid][aMoney] = 0;
		CheatPlayerInfo[playerid][aTimer]=SetTimerEx("OnPlayerCheckCheat", TIMER_CHEAT_RATE, 1, "ii", playerid);
		SendClientMessage(playerid,0xBD0000FF,"[ANTI-CHEAT]Ce serveur est protégé par ELC_AC(By Eloctro)");
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerConnect", "d", playerid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect ELC_AC_OnPlayerConnect
forward ELC_AC_OnPlayerConnect(playerid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerDisconnect(playerid, reason)
{
	if (!IsPlayerNPC(playerid))
	{
		KillTimer(CheatPlayerInfo[playerid][aTimer]);
		CheatPlayerInfo[playerid][aTickFire]=0;
		CheatPlayerInfo[playerid][aAmmoFire]=0;
		for(new i = 0; i <12; i++)
		{
			CheatPlayerInfo[playerid][aWeapon][i]=0;
			CheatPlayerInfo[playerid][aAmmo][i]=0;
		}
		CheatPlayerInfo[playerid][aMoney] = 0;
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerDisconnect", "dd", playerid, reason);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerDisconnect
	#undef OnPlayerDisconnect
#else
	#define _ALS_OnPlayerDisconnect
#endif
#define OnPlayerDisconnect ELC_AC_OnPlayerDisconnect
forward ELC_AC_OnPlayerDisconnect(playerid, reason);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(IsPlayerConnected(playerid) && !IsPlayerNPC(playerid))
	{
		if((((newkeys & (KEY_FIRE)) == (KEY_FIRE)) && ((oldkeys & (KEY_FIRE)) != (KEY_FIRE))))
		{
			if(CheatPlayerInfo[playerid][aTickFire]==0 && IsNotWeaponSlotNoAmmo(GetPlayerWeapon(playerid)) && (GetPlayerSpeedXY(playerid) > SPRINT_SPEED))
			{
				CheatPlayerInfo[playerid][aTickFire]=GetTickCount();
				CheatPlayerInfo[playerid][aAmmoFire]=GetPlayerAmmo(playerid);
			}
		}
		else if(CheatPlayerInfo[playerid][aTickFire]!=0)
		{
			CheatPlayerInfo[playerid][aTickFire]=0;
			CheatPlayerInfo[playerid][aAmmoFire]=0;
		}
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerKeyStateChange", "ddd",playerid, newkeys, oldkeys);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerKeyStateChange
	#undef OnPlayerKeyStateChange
#else
	#define _ALS_OnPlayerKeyStateChange
#endif
#define OnPlayerKeyStateChange ELC_AC_OnPlayerKeyStateChange
forward ELC_AC_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/

