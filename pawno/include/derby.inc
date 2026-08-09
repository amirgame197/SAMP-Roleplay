#define MAX_MAP_PLACES 20
enum e_DerbyGame
{
	dg_Name[32],
	dg_Players,
	dg_PlayersLive,
	dg_PlayersLast,
	dg_PlayersPos[MAX_MAP_PLACES],
	dg_MaxPlayers,
	dg_State,
	dg_Vehicle[MAX_MAP_PLACES],
	dg_ToStartLeft,
	dg_ToEndLeft,
	dg_Area,
	bool:dg_IsEnd
}
#define GAME_COUNT 3
new DerbyGame[GAME_COUNT][e_DerbyGame] =
{
	{"2020",		0,0,0,0,	20,		0,0,0,0,0,false},
	{"Balloons",	0,0,0,0,	10,		0,0,0,0,0,false},
	{"Pyramid",		0,0,0,0,	10,		0,0,0,0,0,false}
};

new const Float:DerbyGame_Coords[GAME_COUNT][MAX_MAP_PLACES][4] =
{
	{
		{2987.704, 3172.889, 7.224, 270.0},
		{3033.193, 3166.873, 4.533, 90.0},
		{3040.168, 3154.106, 4.533, 180.0},
		{3045.592, 3181.770, 4.533, 0.0},
		{3029.409, 3200.610, 4.533, 90.0},
		{3016.812, 3217.952, 4.533, 180.0},
		{2995.159, 3205.412, 4.533, 90.0},
		{2978.436, 3198.323, 4.533, 180.0},
		{3007.033, 3146.631, 4.533, 0.0},
		{2991.247, 3138.348, 4.533, 90.0},
		{3007.145, 3121.050, 37.791, 0.0},
		{3020.655, 3138.188, 37.791, 270.0},
		{2992.763, 3131.578, 37.791, 119.5},
		{2960.528, 3109.749, 37.791, 270.0},
		{2955.837, 3119.259, 37.791, 90.0},
		{2956.632, 3152.744, 54.310, 270.0},
		{2979.570, 3161.710, 54.310, 318.7},
		{3055.378, 3233.848, 37.791, 90.0},
		{3065.736, 3224.592, 37.791, 270.0},
		{3003.112, 3205.710, 37.791, 90.0}
	},
	{
		{1632.468, 1574.071, 380.393, 180.0},
		{1631.742, 1532.128, 380.393, 0.0},
		{1602.209, 1549.511, 380.393, 90.0},
		{1586.017, 1570.642, 380.393, 180.0},
		{1540.891, 1572.668, 380.393, 180.0},
		{1612.299, 1503.991, 380.393, 90.0},
		{1568.891, 1503.892, 380.393, 90.0},
		{1511.023, 1549.406, 380.393, 270.0},
		{1495.068, 1526.901, 380.393, 180.0},
		{1448.883, 1570.674, 380.393, 180.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0}
	},
	{
		{2291.135, 1215.460, 35.028, 270.0},
		{2309.966, 1220.533, 35.028, 90.0},
		{2344.703, 1220.563, 35.028, 90.0},
		{2392.259, 1234.302, 35.028, 0.0},
		{2361.179, 1345.908, 35.028, 90.0},
		{2298.043, 1350.767, 35.028, 270.0},
		{2261.958, 1314.265, 35.028, 180.0},
		{2276.993, 1284.681, 50.028, 180.0},
		{2381.762, 1289.427, 50.028, 180.0},
		{2361.994, 1237.364, 50.028, 90.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0},
		{0.0, 0.0, 0.0, 0.0}
	}
};

new const Float:DerbyGame_AreaCoords[GAME_COUNT][6] =
{ // minx, miny, minz,			maxx, maxy, maxz
	{2889.0, 3054.0, 2.0,		3141.0, 3297.0, 76.0},
	{1347.0, 1410.0, 296.0,		1688.0, 1641.0, 427.0},
	{2221.0, 1189.0, 24.0,		2422.0, 1370.0, 116.0}
};

#define GAME_TIME 120 // sec

enum
{
	DLG_DERBY_MENU = 14000,
	DLG_DERBY_LEAVE
}

enum e_PlayerDerby
{
	pd_Game,
	PlayerText:pd_TimerTD[2],
	pd_TimerState,
	pd_Place,
	pd_LastTime,
	bool:pd_IsLive
}
new PDerby[MAX_PLAYERS][e_PlayerDerby];
new Text3D:Derby_HealthText[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};

new Text:Derby_SpecInfoTD;

stock Derby_OnGameModeInit()
{
	Derby_SpecInfoTD = TextDrawCreate(403.75, 419.5, "~y~HOLD ~b~~h~~k~~GO_LEFT~ ~y~/ ~b~~h~~k~~GO_RIGHT~ ~y~TO SWITCH PLAYERS");
	TextDrawLetterSize(Derby_SpecInfoTD, 0.3, 1.3);
	TextDrawAlignment(Derby_SpecInfoTD, 1);
	TextDrawSetOutline(Derby_SpecInfoTD, 1);
	TextDrawBackgroundColor(Derby_SpecInfoTD, 255);
	TextDrawFont(Derby_SpecInfoTD, 1);
	TextDrawSetProportional(Derby_SpecInfoTD, 1);

	#include <derbyobjects>

	for(new i = 0; i < GAME_COUNT; i++)
	{
		DerbyGame[i][dg_ToStartLeft] = 10;

		DerbyGame[i][dg_Area] = CreateDynamicCube(DerbyGame_AreaCoords[i][0],DerbyGame_AreaCoords[i][1],DerbyGame_AreaCoords[i][2], DerbyGame_AreaCoords[i][3],DerbyGame_AreaCoords[i][4],DerbyGame_AreaCoords[i][5], 111, 0);
	}
	return 1;
}

CMD:derby(playerid)
{
	new strlast[50],
		str[30 + 50*GAME_COUNT] = "Карта\tИгроков\n";

	for(new i = 0; i < GAME_COUNT; i++)
	{
		format(strlast, sizeof(strlast), "%i. %s\t%i / %i\n", i+1, DerbyGame[i][dg_Name], DerbyGame[i][dg_Players], DerbyGame[i][dg_MaxPlayers]);
		strcat(str, strlast);
	}
	SPD(playerid, DLG_DERBY_MENU, DIALOG_STYLE_TABLIST_HEADERS, "{ffcc00}Регистрация на дерби", str, "Выбрать", "Закрыть");
	return 1;
}

CMD:dleave(playerid)
{
	if(PDerby[playerid][pd_Game] == -1) return SCM(playerid, COLOR_LIGHTGREY, "Вы не зарегистрированы на игру в дерби");

	SPD(playerid, DLG_DERBY_LEAVE, DIALOG_STYLE_MSGBOX, ""CORANGE"Предупреждение", ""CWHITE"Вы хотите покинуть текущую игру?", "Да", "Нет");
	return 1;
}

stock Derby_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	#pragma unused inputtext

	switch(dialogid)
	{
		case DLG_DERBY_MENU:
		{
			if(!response) return 1;

			for(new i = 0, p = -1; i < GAME_COUNT; i++)
			{
				p++;
                if(p != listitem) continue;

                if(!pData[playerid][pLicenses][0]) return SCM(playerid, COLOR_LIGHTGREY, "Для участия вам нужны водительские права");
                if(PDerby[playerid][pd_Game] != -1) return SCM(playerid, COLOR_LIGHTGREY, "Вы уже участвуете в игре");
				if(DerbyGame[i][dg_Players] >= DerbyGame[i][dg_MaxPlayers]) return SCM(playerid, COLOR_LIGHTGREY, "В этой игре участвует максимальное количество игроков");

				new place = DerbyGame[i][dg_Players];
				PDerby[playerid][pd_Place] = place;

				DerbyGame[i][dg_Players]++;

				GetPlayerPos(playerid, TeleportDest[playerid][0], TeleportDest[playerid][1], TeleportDest[playerid][2]);
				intback[playerid] = GetPlayerInterior(playerid);
				vwback[playerid] = GetPlayerVirtualWorld(playerid);

				PDerby[playerid][pd_Game] = i;
				CreateDerbyTextDraws(playerid);
				PlayerTextDrawShow(playerid, PDerby[playerid][pd_TimerTD][1]);

				if(DerbyGame[i][dg_State] == 1) DerbySpectateMode(playerid);
				else JoinDerbyGame(i, playerid);

				new str[144];
				format(str, sizeof(str), "[Дерби] {99bffb}%s вошел в игру (всего: %i)", GetName(playerid), DerbyGame[i][dg_Players]);
				SendDerbyMessage(i, -1, str);

				SCM(playerid, -1, "[Дерби] "CMAIN"Вы присоединились к игре");
				SCM(playerid, -1, "[Дерби] "CMAIN"Для того, чтобы выйти, используйте {ff9933}/dleave");
			}
		}
		case DLG_DERBY_LEAVE:
		{
			if(!response) return 1;
			LeaveDerbyGame(playerid);
		}
	}
	return 1;
}

stock CreateDerbyTextDraws(playerid)
{
	PDerby[playerid][pd_TimerTD][0] = CreatePlayerTextDraw(playerid, 622, 242.5, "");
	PlayerTextDrawLetterSize(playerid, PDerby[playerid][pd_TimerTD][0], 0.4, 1.5);
	PlayerTextDrawAlignment(playerid, PDerby[playerid][pd_TimerTD][0], 3);
	PlayerTextDrawSetOutline(playerid, PDerby[playerid][pd_TimerTD][0], 1);
	PlayerTextDrawBackgroundColor(playerid, PDerby[playerid][pd_TimerTD][0], 255);
	PlayerTextDrawFont(playerid, PDerby[playerid][pd_TimerTD][0], 1);
	PlayerTextDrawSetProportional(playerid, PDerby[playerid][pd_TimerTD][0], 1);

	PDerby[playerid][pd_TimerTD][1] = CreatePlayerTextDraw(playerid, 607, 256, "");
	PlayerTextDrawLetterSize(playerid, PDerby[playerid][pd_TimerTD][1], 0.4, 1.5);
	PlayerTextDrawAlignment(playerid, PDerby[playerid][pd_TimerTD][1], 2);
	PlayerTextDrawColor(playerid, PDerby[playerid][pd_TimerTD][1], 0xffcc00ff);
	PlayerTextDrawSetOutline(playerid, PDerby[playerid][pd_TimerTD][1], 1);
	PlayerTextDrawBackgroundColor(playerid, PDerby[playerid][pd_TimerTD][1], 255);
	PlayerTextDrawFont(playerid, PDerby[playerid][pd_TimerTD][1], 1);
	PlayerTextDrawSetProportional(playerid, PDerby[playerid][pd_TimerTD][1], 1);
}

stock SendDerbyMessage(gameid, color, text[])
{
	foreach(new i:Player)
	{
		if(PDerby[i][pd_Game] == gameid) SCM(i, color, text);
	}
	return 1;
}

stock DerbySpectateMode(playerid)
{
	new gameid = PDerby[playerid][pd_Game];
	if(gameid == -1) return 1;

	foreach(new i:Player)
	{
		if(i == playerid) continue;
		if(PDerby[i][pd_Game] != gameid) continue;
		if(!PDerby[i][pd_IsLive]) continue;

		TextDrawShowForPlayer(playerid, Derby_SpecInfoTD);
		SetPVarInt(playerid, "Derby_SpecTD_Showed", 1);
		TogglePlayerSpectating(playerid, 1);
		SetPVarInt(playerid, "DerbySpectateIndex", 0);

		SetPlayerInterior(playerid, GetPlayerInterior(i));
		SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(i));
		if(IsPlayerInAnyVehicle(i)) PlayerSpectateVehicle(playerid, GetPlayerVehicleID(i));
		else PlayerSpectatePlayer(playerid, i);

		SetPVarInt(playerid, "Derby_SpecID", i);
		break;
	}
	return 1;
}

stock JoinDerbyGame(gameid, playerid)
{
	if(GetPlayerState(playerid) == PLAYER_STATE_SPECTATING)
	{
		TogglePlayerSpectating(playerid, 0);
		SetPVarInt(playerid, "Derby_SpectateOff", gettime()+3);
		return 1;
	}
	DerbyGame[gameid][dg_PlayersLive]++;

	PDerby[playerid][pd_IsLive] = true;
	TogglePlayerControllable(playerid, 0);

	SetPlayerInterior(playerid, 0);
	SetPlayerVirtualWorld(playerid, 111);

	new carmodel;
	switch(random(10))
	{
		case 0: carmodel = 585;
		case 1: carmodel = 492;
		case 2: carmodel = 551;
		case 3: carmodel = 426;
		case 4: carmodel = 547;
		case 5: carmodel = 405;
		case 6: carmodel = 550;
		case 7: carmodel = 566;
		case 8: carmodel = 421;
		case 9: carmodel = 560;
	}
	new place = PDerby[playerid][pd_Place];
	new vehid = DerbyGame[gameid][dg_Vehicle][place] = CreateVehicleEx(carmodel, DerbyGame_Coords[gameid][place][0], DerbyGame_Coords[gameid][place][1], DerbyGame_Coords[gameid][place][2], DerbyGame_Coords[gameid][place][3], random(5), random(5), -1);
	LinkVehicleToInterior(vehid, 0);
	SetVehicleVirtualWorld(vehid, 111);

	if(Derby_HealthText[vehid] != Text3D:INVALID_3DTEXT_ID)
		DestroyDynamic3DTextLabel(Derby_HealthText[vehid]);
	Derby_HealthText[vehid] = CreateDynamic3DTextLabel("100 %", 0x00cc00ff, 0,0,0, 10, INVALID_PLAYER_ID, vehid);

	PutPlayerInVehicle(playerid, vehid, 0);
	return 1;
}

stock LeaveDerbyGame(playerid)
{
	new gameid = PDerby[playerid][pd_Game];
	if(gameid == -1) return 1;

	DerbyGame[gameid][dg_Players]--;

	new str[144];
	format(str, sizeof(str), "[Дерби] {99bffb}%s вышел из игры (всего: %i)", GetName(playerid), DerbyGame[gameid][dg_Players]);
	SendDerbyMessage(gameid, -1, str);

	if(PDerby[playerid][pd_IsLive])
	{
		PDerby[playerid][pd_IsLive] = false;

		DerbyGame[gameid][dg_PlayersLive]--;

		DestroyVehicle(DerbyGame[gameid][dg_Vehicle][ PDerby[playerid][pd_Place] ]);

		new p = DerbyGame[gameid][dg_PlayersLive];
		if(p >= 0) DerbyGame[gameid][dg_PlayersPos][p] = playerid;
		PDerby[playerid][pd_LastTime] = GAME_TIME - DerbyGame[gameid][dg_ToEndLeft];

		if(DerbyGame[gameid][dg_State] == 1)
		{
			if(DerbyGame[gameid][dg_PlayersLive] <= 1) EndDerbyGame(gameid);
		}
	}
	
	PDerby[playerid][pd_Game] = -1;
	PDerby[playerid][pd_Place] = -1;

	PlayerTextDrawDestroy(playerid, PDerby[playerid][pd_TimerTD][0]);
	PlayerTextDrawDestroy(playerid, PDerby[playerid][pd_TimerTD][1]);
	PDerby[playerid][pd_TimerTD][0] = PDerby[playerid][pd_TimerTD][1] = PlayerText:INVALID_TEXT_DRAW;

	PDerby[playerid][pd_TimerState] = 0;

	if(GetPlayerState(playerid) == PLAYER_STATE_SPECTATING) TogglePlayerSpectating(playerid, 0);
	load_mode(playerid);
	SetPlayerPos(playerid, TeleportDest[playerid][0], TeleportDest[playerid][1], TeleportDest[playerid][2]);
	SetPlayerInterior(playerid, intback[playerid]);
	SetPlayerVirtualWorld(playerid, vwback[playerid]);
	return 1;
}

stock LoseDerbyGame(playerid, bool:timeendgame = false)
{
	if(GetPVarInt(playerid, "Derby_SpectateOff") > gettime()) return 1;
	new gameid = PDerby[playerid][pd_Game];
	if(gameid == -1) return 1;

	if(DerbyGame[gameid][dg_ToStartLeft] > 0) return 1;

	if(!PDerby[playerid][pd_IsLive]) return 1;
	PDerby[playerid][pd_IsLive] = false;

	DerbyGame[gameid][dg_PlayersLive]--;

	DestroyVehicle(DerbyGame[gameid][dg_Vehicle][ PDerby[playerid][pd_Place] ]);

	new p = DerbyGame[gameid][dg_PlayersLive];
	if(p >= 0) DerbyGame[gameid][dg_PlayersPos][p] = playerid;
	PDerby[playerid][pd_LastTime] = GAME_TIME - DerbyGame[gameid][dg_ToEndLeft];

	if(!timeendgame)
	{
		new str[144];
		format(str, sizeof(str), "[Дерби] {99bffb}%s проиграл (позиция: %i/%i | %02i:%02i)",
		GetName(playerid), p+1, DerbyGame[gameid][dg_PlayersLast], PDerby[playerid][pd_LastTime] / 60, PDerby[playerid][pd_LastTime] % 60);
	
		SendDerbyMessage(gameid, -1, str);
	}
	
	if(DerbyGame[gameid][dg_PlayersLive] <= 1) EndDerbyGame(gameid, timeendgame);
	else DerbySpectateMode(playerid);
	return 1;
}

stock EndDerbyGame(gameid, bool:nowin = false)
{
	if(DerbyGame[gameid][dg_IsEnd]) return 1;

	foreach(new i:Player)
	{
		if(PDerby[i][pd_Game] == gameid && PDerby[i][pd_IsLive])
		{
			PDerby[i][pd_IsLive] = false;

			DestroyVehicle(DerbyGame[gameid][dg_Vehicle][ PDerby[i][pd_Place] ]);

			DerbyGame[gameid][dg_PlayersPos][0] = i;

			PDerby[i][pd_LastTime] = GAME_TIME - DerbyGame[gameid][dg_ToEndLeft];

			if(!nowin)
			{
				// выдачу чего-либо за победу делать внутри условия

				new str[144];
				format(str, sizeof(str), "[Дерби] {99bffb}%s победил", GetName(i));
				SendDerbyMessage(gameid, -1, str);
			}
			break;
		}
	}

	new str[12 + 60*MAX_MAP_PLACES] = "Игрок\tВремя\n",
		laststr[60];

	for(new id, i = 0, j = DerbyGame[gameid][dg_PlayersLast]; i < j; i++)
	{
		id = DerbyGame[gameid][dg_PlayersPos][i];
		if(!IsPlayerConnected(id)) continue;

		if(i < 3) laststr = "{669900}%i. %s\t{669900}%02i:%02i\n";
		else laststr = "%i. %s\t%02i:%02i\n";

		format(laststr, sizeof(laststr), laststr, i+1, GetName(id), PDerby[id][pd_LastTime] / 60, PDerby[id][pd_LastTime] % 60);
		strcat(str, laststr);
	}
	foreach(new i:Player) if(PDerby[i][pd_Game] == gameid) SPD(i, 0, DIALOG_STYLE_TABLIST_HEADERS, "{ffcc00}Топ", str, "Закрыть", "");

	DerbyGame[gameid][dg_PlayersLive] = 0;
	DerbyGame[gameid][dg_ToEndLeft] = 0;
	SetTimerEx("StartDerbyGame", 5000, 0, "i", gameid);

	DerbyGame[gameid][dg_IsEnd] = true;
	return 1;
}

CB: StartDerbyGame(gameid)
{
	foreach(new i:Player) if(PDerby[i][pd_Game] == gameid) JoinDerbyGame(gameid, i);
	DerbyGame[gameid][dg_ToStartLeft] = 10;
	DerbyGame[gameid][dg_IsEnd] = false;
}

stock Derby_Zeroing(playerid)
{
	PDerby[playerid][pd_Game] = -1;
	PDerby[playerid][pd_Place] = -1;
	PDerby[playerid][pd_LastTime] = 0;
	PDerby[playerid][pd_TimerTD][0] = PDerby[playerid][pd_TimerTD][1] = PlayerText:INVALID_TEXT_DRAW;
	PDerby[playerid][pd_TimerState] = 0;
	PDerby[playerid][pd_IsLive] = false;
}

stock Derby_OnPlayerLeaveDynamicArea(playerid, areaid)
{
	new gameid = PDerby[playerid][pd_Game];
	if(gameid != -1 && DerbyGame[gameid][dg_Area] == areaid ) LoseDerbyGame(playerid);
	return 1;
}

stock Derby_OnPlayerDisconnect(playerid, reason)
{
	#pragma unused reason

	if(PDerby[playerid][pd_Game] != -1) LeaveDerbyGame(playerid);
	return 1;
}

stock Derby_OnPlayerStateChange(playerid, newstate, oldstate)
{
	#pragma unused newstate

	if(oldstate == PLAYER_STATE_SPECTATING)
	{
		if(GetPVarInt(playerid, "Derby_SpecTD_Showed"))
			TextDrawHideForPlayer(playerid, Derby_SpecInfoTD);
	}
	return 1;
}

stock Derby_OnVehDamageStatusUpdate(vehicleid, playerid)
{
	if(IsPlayerConnected(playerid) && PDerby[playerid][pd_Game] != -1)
	{
		new Float:health;
		GetVehicleHealth(vehicleid, health);
		new rhealth = floatround(health)/10;

		new str[10];
		format(str, sizeof(str), "%i %%", rhealth);

		UpdateDynamic3DTextLabelText(Derby_HealthText[vehicleid], rhealth < 25 ? COLOR_ERROR : 0x00cc00ff, str);
	}
	return 1;
}

stock Derby_OnVehicleDeath(vehicleid, killerid)
{
	#pragma unused killerid

	if(Derby_HealthText[vehicleid] != Text3D:INVALID_3DTEXT_ID)
	{
		DestroyDynamic3DTextLabel(Derby_HealthText[vehicleid]);
		Derby_HealthText[vehicleid] = Text3D:INVALID_3DTEXT_ID;
	}

	foreach(new i:Player)
	{
		if(PDerby[i][pd_Game] != -1 && GetPlayerVehicleID(i) == vehicleid) LoseDerbyGame(i);
	}
	return 1;
}

stock Derby_OnVehicleSpawn(vehicleid)
{
	if(Derby_HealthText[vehicleid] != Text3D:INVALID_3DTEXT_ID)
	{
		DestroyDynamic3DTextLabel(Derby_HealthText[vehicleid]);
		Derby_HealthText[vehicleid] = Text3D:INVALID_3DTEXT_ID;
	}

	foreach(new i:Player)
	{
		if(PDerby[i][pd_Game] != -1 && GetPlayerVehicleID(i) == vehicleid) LoseDerbyGame(i);
	}
	return 1;
}

stock Derby_OnVehicleDestroy(vehicleid)
{
	if(Derby_HealthText[vehicleid] != Text3D:INVALID_3DTEXT_ID)
	{
		DestroyDynamic3DTextLabel(Derby_HealthText[vehicleid]);
		Derby_HealthText[vehicleid] = Text3D:INVALID_3DTEXT_ID;
	}
	return 1;
}

stock Derby_SecondTimer()
{
	foreach(new i:Player)
	{
		if(PDerby[i][pd_Game] == -1) continue;
		if(GetPlayerState(i) != PLAYER_STATE_SPECTATING) continue;

		new keys, updown, leftright;
		GetPlayerKeys(i, keys, updown, leftright);

		new index = GetPVarInt(i, "DerbySpectateIndex");
		if(leftright == KEY_LEFT) 
		{
			SetPVarInt(i, "DerbySpectateIndex", index+1);
			DerbySpectateChange(i);
		}
		else if(leftright == KEY_RIGHT) 
		{
			if(index > 0) SetPVarInt(i, "DerbySpectateIndex", index-1);
			DerbySpectateChange(i);
		}
	}

	for(new i = 0; i < GAME_COUNT; i++)
	{
		if(DerbyGame[i][dg_ToStartLeft] > 0)
		{
			if(DerbyGame[i][dg_Players] < 2) DerbyGame[i][dg_ToStartLeft] = 10;
			else DerbyGame[i][dg_ToStartLeft]--;

			if(DerbyGame[i][dg_State] != 0)
				DerbyGame[i][dg_State] = 0;

			new str[12];
			format(str, sizeof(str), TimeConverter(DerbyGame[i][dg_ToStartLeft]));
			foreach(new playerid:Player)
			{
				if(PDerby[playerid][pd_Game] != i) continue;

				if(PDerby[playerid][pd_TimerState] != 2)
				{
					PlayerTextDrawSetString(playerid, PDerby[playerid][pd_TimerTD][0], "Start in:");
					PlayerTextDrawColor(playerid, PDerby[playerid][pd_TimerTD][0], 0x33cc33ff);
					PlayerTextDrawHide(playerid, PDerby[playerid][pd_TimerTD][0]);
					PlayerTextDrawShow(playerid, PDerby[playerid][pd_TimerTD][0]);
					PDerby[playerid][pd_TimerState] = 2;
				}

				new place = PDerby[playerid][pd_Place];
				new vehicleid = DerbyGame[i][dg_Vehicle][place];

				if(1 <= DerbyGame[i][dg_ToStartLeft] <= 9) PlayerPlaySound(playerid, 1056, 0,0,0);
				switch(DerbyGame[i][dg_ToStartLeft])
				{
					case 1: GameTextForPlayer(playerid, "~b~1", 1000, 3);
					case 2: GameTextForPlayer(playerid, "~b~2", 1000, 3);
					case 3:
					{
						GameTextForPlayer(playerid, "~b~3", 1000, 3);
						if(PDerby[playerid][pd_IsLive])
						{
							new engine, lights, alarm, doors, bonnet, boot, objective;
							GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
							SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_ON, lights, alarm, doors, bonnet, boot, objective);
						}
					}
					case 9: SCM(playerid, -1, "[Дерби] {ee9960}До начала игры остается 10 секунд...");
				}
				PlayerTextDrawSetString(playerid, PDerby[playerid][pd_TimerTD][1], str);

				if(PDerby[playerid][pd_IsLive])
				{
					if(DerbyGame[i][dg_ToStartLeft] == 3 || DerbyGame[i][dg_ToStartLeft] == 9)
					{
						SetVehiclePos(vehicleid, DerbyGame_Coords[i][place][0], DerbyGame_Coords[i][place][1], DerbyGame_Coords[i][place][2]);
						SetVehicleZAngle(vehicleid, DerbyGame_Coords[i][place][3]);
					}
					if(GetPlayerVehicleID(playerid) != vehicleid)
					{
						SetPlayerInterior(playerid, 0);
						SetPlayerVirtualWorld(playerid, GetVehicleVirtualWorld(vehicleid));
						PutPlayerInVehicle(playerid, vehicleid, 0);
					}
				}
			}

			if(DerbyGame[i][dg_ToStartLeft] == 0)
			{
				for(new p = 0; p < MAX_MAP_PLACES; p++) DerbyGame[i][dg_PlayersPos][p] = 0;
				DerbyGame[i][dg_PlayersLast] = DerbyGame[i][dg_Players];
				DerbyGame[i][dg_ToEndLeft] = GAME_TIME;
				
				foreach(new playerid:Player)
				{
					if(PDerby[playerid][pd_LastTime] != 0)
						PDerby[playerid][pd_LastTime] = 0;

					if(PDerby[playerid][pd_Game] != i) continue;
					TogglePlayerControllable(playerid, 1);

					PlayerPlaySound(playerid, 1057, 0,0,0);
					GameTextForPlayer(playerid, "~g~~h~go!", 1000, 3);
				}
			}
		}
		if(DerbyGame[i][dg_ToEndLeft] > 0)
		{
			DerbyGame[i][dg_ToEndLeft]--;

			if(DerbyGame[i][dg_State] != 1)
				DerbyGame[i][dg_State] = 1;

			new str[12];
			format(str, sizeof(str), TimeConverter(DerbyGame[i][dg_ToEndLeft]));
			foreach(new playerid:Player)
			{
				if(PDerby[playerid][pd_Game] != i) continue;

				if(PDerby[playerid][pd_IsLive])
				{
					new vehicleid = DerbyGame[i][dg_Vehicle][ PDerby[playerid][pd_Place] ];
					if(GetPlayerVehicleID(playerid) != vehicleid)
					{
						SetPlayerInterior(playerid, 0);
						SetPlayerVirtualWorld(playerid, GetVehicleVirtualWorld(vehicleid));
						PutPlayerInVehicle(playerid, vehicleid, 0);
						SCM(playerid, COLOR_ERROR, "Вы не можете выходить из машины во время игры");
					}
				}

				if(PDerby[playerid][pd_TimerState] != 1)
				{
					PlayerTextDrawSetString(playerid, PDerby[playerid][pd_TimerTD][0], "End in:");
					PlayerTextDrawColor(playerid, PDerby[playerid][pd_TimerTD][0], 0xff7f2fff);
					PlayerTextDrawHide(playerid, PDerby[playerid][pd_TimerTD][0]);
					PlayerTextDrawShow(playerid, PDerby[playerid][pd_TimerTD][0]);
					PDerby[playerid][pd_TimerState] = 1;
				}

				switch(DerbyGame[i][dg_ToEndLeft])
				{
					case 10: SCM(playerid, -1, "[Дерби] {ff6640}До конца игры остается 10 секунд...");
					case 30: SCM(playerid, -1, "[Дерби] {ff6640}До конца игры остается 30 секунд...");
				}
				PlayerTextDrawSetString(playerid, PDerby[playerid][pd_TimerTD][1], str);
			}

			if(DerbyGame[i][dg_ToEndLeft] == 0)
			{
				foreach(new playerid:Player)
				{
					if(PDerby[playerid][pd_Game] == i)
					{
						SCM(playerid, -1, "[Дерби] {ff6640}Игра завершена");
						if(DerbyGame[i][dg_PlayersLive] > 1) LoseDerbyGame(playerid, true);
					}
				}
			}
		}
	}
}

stock DerbySpectateChange(playerid)
{
	new gameid = PDerby[playerid][pd_Game];
	if(gameid == -1) return 0;

	foreach(new i:Player)
	{
		if(i == playerid) continue;
		if(PDerby[i][pd_Game] != gameid) continue;
		if(!PDerby[i][pd_IsLive]) continue;
		if(GetPVarInt(playerid, "DerbySpectateIndex"))
		{
			SetPVarInt(playerid, "DerbySpectateIndex", GetPVarInt(playerid, "DerbySpectateIndex")-1);
			continue;
		}

		SetPlayerInterior(playerid, GetPlayerInterior(i));
		SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(i));
		if(IsPlayerInAnyVehicle(i)) PlayerSpectateVehicle(playerid, GetPlayerVehicleID(i));
		else PlayerSpectatePlayer(playerid, i);
		break;
	}
	return 1;
}

stock Derby_OnPlayerSpawn(playerid)
{
	new gameid = PDerby[playerid][pd_Game];
	if(gameid != -1 && !PDerby[playerid][pd_IsLive]) JoinDerbyGame(gameid, playerid);
	return 1;
}
