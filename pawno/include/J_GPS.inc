/*
 *	GPS modes:
 *	GPS_MODE_1: When the player marks a position in the map, the GPS will start working.
 *	GPS_MODE_2: SetPlayerCheckpoint will be hooked so when a checkpoint is set the GPS will start working.
 *	GPS_MODE_ALL: GPS_MODE_1 + GPS_MODE_2
 *	Version: 1.0
 *
 *	Programmed by J_esus and #Fede
 */

#if !defined include_jgps
	#define include_jgps
#endif

#if !defined _gps_included
	#error "Please include GPS.inc before."
#endif

/* Include config */
#if !defined GPS_COLOR
	#define GPS_COLOR 0xF85B5BFF
#endif

#if !defined GPS_UPDATE_TIME
	#define GPS_UPDATE_TIME 500
#endif

#if !defined GPS_MODE_1 && !defined GPS_MODE_2 && !defined GPS_MODE_ALL
 	#error "GPS_MODE is not defined"
#endif

#if defined GPS_MODE_ALL
 	#define GPS_MODE_1
 	#define GPS_MODE_2
#endif

#if !defined MAX_DOTS
	#define MAX_DOTS 50
#endif

#include <YSI_Coding\y_timers>
#include <YSI_Coding\y_hooks>

/* --------------------------------------------------------------------- */

new static 
	bool:playerHasGPSActive[MAX_PLAYERS],
	Timer:PlayerGPSTimer[MAX_PLAYERS],
	Routes[MAX_PLAYERS][MAX_DOTS] = {-1, ...};

forward OnPathFound(Path:pathid, playerid);


stock Float:GDBP(Float:X, Float:Y, Float:Z, Float: PointX, Float: PointY, Float: PointZ) return floatsqroot(floatadd(floatadd(floatpower(floatsub(X, PointX), 2.0), floatpower(floatsub(Y, PointY), 2.0)), floatpower(floatsub(Z, PointZ), 2.0)));

/* --------------------------------------------------------------------- */

hook OnPlayerEnterCheckpoint(playerid)
{
	if(playerHasGPSActive[playerid])
	{
		SendClientMessage(playerid, -1, "You arrived at your destination!");
		stop PlayerGPSTimer[playerid];
		playerHasGPSActive[playerid] = false;
		DisablePlayerCheckpoint(playerid);
	}
	return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	if(playerHasGPSActive[playerid]) 
	{
		ForcePlayerEndLastRoute(playerid);
	}
	return Y_HOOKS_CONTINUE_RETURN_1;
}

#if defined GPS_MODE_1

hook OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	StartPlayerPath(playerid, fX, fY, fZ);
	return Y_HOOKS_CONTINUE_RETURN_1;
}

#endif

/* --------------------------------------------------------------------- */

timer AssignatePlayerPath[GPS_UPDATE_TIME](playerid, Float:X, Float:Y, Float:Z)
{
	new Float:x, Float:y, Float:z, MapNode:start, MapNode:target;
    GetPlayerPos(playerid, x, y, z);
    
	if((GDBP(X, Y, 0.0, x, y, 0.0) <= 7.5))
	{
		SendClientMessage(playerid, -1, "You arrived at your destination!");
		ForcePlayerEndLastRoute(playerid);
		return 1;
	}
    
    if (GetClosestMapNodeToPoint(x, y, z, start) != 0) return print("Something went wrong. (1)");
    if (GetClosestMapNodeToPoint(X, Y, Z, target)) return print("Something went wrong. (2)");

    if (FindPathThreaded(start, target, "OnPathFound", "i", playerid)) 
    {
    	SendClientMessage(playerid, -1, "There was an error while the GPS was starting.");
    	return 1;
    }

    return 1;
}

public OnPathFound(Path:pathid, playerid)
{
    if(!IsValidPath(pathid)) return SendClientMessage(playerid, -1, "The GPS could`t find a route!");

	DestroyRoutes(playerid);

	new size, Float:length;
	GetPathSize(pathid, size);
	GetPathLength(pathid, length);

	if(size == 1)
	{
		ForcePlayerEndLastRoute(playerid);
		return SendClientMessage(playerid, -1, "You arrived at your destination!");
	}

	new MapNode:nodeid, index, Float:lastx, Float:lasty,Float:lastz;
	GetPlayerPos(playerid, lastx, lasty, lastz);
	GetClosestMapNodeToPoint(lastx, lasty, lastz, nodeid);
	GetMapNodePos(nodeid, lastx, lasty, lastz);

	new _max = MAX_DOTS;
	if(MAX_DOTS > size) _max = size;

	new Float:X,Float:Y,Float:Z;
	
	for(new i = 0; i < _max; i++)
	{
		GetPathNode(pathid, i, nodeid);
		GetPathNodeIndex(pathid, nodeid, index);
		GetMapNodePos(nodeid, X, Y, Z);
		if(i == index) CreateMapRoute(playerid, lastx, lasty, X, Y, GPS_COLOR);
		lastx = X+0.5;
		lasty = Y+0.5;
	}
    return 1;
}

void:ForcePlayerEndLastRoute(playerid)
{
	stop PlayerGPSTimer[playerid];
	playerHasGPSActive[playerid] = false;
	DestroyRoutes(playerid);
	DisablePlayerCheckpoint(playerid);
}

void:StartPlayerPath(playerid, Float:X, Float:Y, Float:Z)
{
	ForcePlayerEndLastRoute(playerid);
	playerHasGPSActive[playerid] = true;
	SetPlayerCheckpoint(playerid, X, Y, Z, 2.5);
	AssignatePlayerPath(playerid, X, Y, Z);
	PlayerGPSTimer[playerid] = repeat AssignatePlayerPath(playerid, X, Y, Z);
}

void:CreateMapRoute(playerid, Float:X1, Float:Y1, Float:X2, Float:Y2, color)
{
	new Float:Dis = 12.5;
	new Float:TotalDis = GDBP(X1, Y1, 0.0, X2, Y2, 0.0);
	new Points = floatround(TotalDis / Dis);

	for(new i = 1; i <= Points; i++)
	{
		new Float:x, Float:y;
		if(i != 0)
		{
			x = X1 + (((X2 - X1) / Points)*i);
			y = Y1 + (((Y2 - Y1) / Points)*i);
		}
		else
		{
			x = X1;
			y = Y1;
		}

		new slot = 0;
		while(slot <= MAX_DOTS)
		{
			if(slot == MAX_DOTS)
			{
				slot = -1;
				break;
			}

			if(Routes[playerid][slot] == -1)
			{
				break;
			}
			slot++;
		}
		if(slot == -1) return;

		Routes[playerid][slot] = GangZoneCreate(x-(Dis / 2)-5, y-(Dis / 2)-5, x+(Dis / 2)+5, y+(Dis / 2)+5);
		GangZoneShowForPlayer(playerid, Routes[playerid][slot], color);
	}
}

void:DestroyRoutes(playerid)
{
	for(new x; x < MAX_DOTS; x++)
	{
		if(Routes[playerid][x] != -1)
		{
		    GangZoneDestroy(Routes[playerid][x]);
		    Routes[playerid][x] = -1;
		}
	}
}

#if defined GPS_MODE_2
	stock GPS_SetPlayerCheckpoint(playerid, Float:x, Float:y, Float:z, Float:size)
	{
	   	ForcePlayerEndLastRoute(playerid);
	   	StartPlayerPath(playerid, x, y, z);
	   	SetPlayerCheckpoint(playerid, x, y, z, size);
	   	return 1;
	}

	
	#if defined _ALS_SetPlayerCheckpoint
	    #undef SetPlayerCheckpoint
	#else
	    #define _ALS_SetPlayerCheckpoint
	#endif
	
	#define SetPlayerCheckpoint GPS_SetPlayerCheckpoint
#endif
