
stock fix_SetPlayerSkin(playerid, skinid)
{
	if(IsPlayerInAnyVehicle(playerid))
	{
		SetVehicleVelocity(GetPlayerVehicleID(playerid), 0, 0, 0);
	}
	ClearAnimations(playerid);

	return SetPlayerSkin(playerid, skinid);
}

#if defined _ALS_SetPlayerSkin
	#undef SetPlayerSkin
#else
	#define _ALS_SetPlayerSkin
#endif
#define SetPlayerSkin fix_SetPlayerSkin
