/*------------------------------------------------------------------------------
                                    
                             Anti-Cheat(ELC_AC)
MODE CONNECTOR
VERSION : V1(BETA 2)


                                    \**/
/*/- Anti-Cheat By Eloctro -----------------------------------------------------

*/
#include <a_samp>
#define GivePlayerMoney ELC_ACc_GivePlayerMoney
#define ResetPlayerMoney ELC_ACc_ResetPlayerMoney
#define GetPlayerMoney ELC_ACc_GetPlayerMoney
#define GivePlayerWeapon ELC_ACc_GivePlayerWeapon
#define ResetPlayerWeapons ELC_ACc_ResetPlayerWeapons
forward OnPlayerCheat(playerid, cheatid);
/*----------------------------------------------------------------------------*/
forward ELC_ACc_GivePlayerMoney(playerid, money);
public ELC_ACc_GivePlayerMoney(playerid, money)
{
	return CallLocalFunction("ELC_AC_GivePlayerMoney", "dd",playerid, money);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_ResetPlayerMoney(playerid);
public ELC_ACc_ResetPlayerMoney(playerid)
{
	return CallLocalFunction("ELC_AC_ResetPlayerMoney", "d",playerid);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_GetPlayerMoney(playerid);
public ELC_ACc_GetPlayerMoney(playerid)
{
	return CallLocalFunction("ELC_AC_GetPlayerMoney", "d",playerid);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_GivePlayerWeapon(playerid,Weapon,ammo);
public ELC_ACc_GivePlayerWeapon(playerid,Weapon,ammo)
{
	return CallLocalFunction("ELC_AC_GivePlayerWeapon", "ddd",playerid,Weapon,ammo);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_ResetPlayerWeapons(playerid);
public ELC_ACc_ResetPlayerWeapons(playerid)
{
	return CallLocalFunction("ELC_AC_ResetPlayerWeapons", "d",playerid);
}
/*----------------------------------------------------------------------------*/

