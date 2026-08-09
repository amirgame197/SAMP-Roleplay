//=======================Channel : @Pro_Pawno - @Pro_Pawno_Bot====================//
//=======================BoomBox System By @Pro_Pawno====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
//=======================BoomBox System By @Pro_Pawno=====================//
#define Filterscript
#include <a_samp>//Credits to Soheil
#include <zcmd>//Credits to Soheil
#include <sscanf2>//Credits to Soheil
#include <streamer>//Credits to Soheil
#include <foreach>//Credits to Soheil

//================Dialogs===================
#define DIALOG_BOOMBOX  500
#define DIALOG_BOOMBOX1 501
#define DIALOG_BOOMBOX2 502
#define DIALOG_BOOMBOX3 503
#define DIALOG_BOOMBOX4 504
#define DIALOG_BOOMBOX5 505
#define DIALOG_BOOMBOX6 506
#define DIALOG_BOOMBOX7 507
//==========================================
//--------------------------------------------------------
//===============Variables==================
#define SCM SendClientMessage
new gPlayerLoggin[MAX_PLAYERS char];
//==========================================
//--------------------------------------------------------
//===============Colors=====================
#define COLOR_LIGHTBLUE 0x00C3FFFF
#define COLOR_WHITE 0xFFFFFFFF
#define COLOR_RED 0xFF0000FF
#define COLOR_LIME 0x00FF33FF
#define COLOR_GREY 0xAFAFAFFF
#define COL_WHITE "{FFFFFF}"
#define COL_LBLUE "{00C3FF}"
#define COL_RED "{FF0000}"
#define COL_LIME "{00FF33}"
#define COLOR_PURPLE 0xC2A2DAAA
//==========================================
public OnFilterScriptInit()
{
	print("--------------------------------------");
	print("       >>BoomBox System LOADED<<      ");
	print("--------------------------------------");
	return 1;
}

public OnFilterScriptExit()
{
	print("--------------------------------------");
	print("      >>BoomBox System UNLOADED<<     ");
	print("--------------------------------------");
	return 1;
}

public OnPlayerConnect(playerid)
{
    gPlayerLoggin{playerid} = 1;
    return 1;
}

public OnPlayerDisconnect(playerid)
{
    if(GetPVarType(playerid, "PlacedBB"))
    {
        DestroyDynamicObject(GetPVarInt(playerid, "PlacedBB"));
        DestroyDynamic3DTextLabel(Text3D:GetPVarInt(playerid, "BBLabel"));
        if(GetPVarType(playerid, "BBArea"))
        {
            foreach(Player,i)
            {
                if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
                {
                    StopAudioStreamForPlayer(i);
                    SendClientMessage(i, COLOR_LIGHTBLUE, " The boombox creator has disconnected from the server.");
                }
            }
        }
    }
    return 1;
}

CMD:bbhelp(playerid, params[])
{
	SendClientMessage(playerid, -1, "Boombox Commands: /placeboombox /pickupboombox /setboombox");
	return 1;
}

CMD:dance(playerid, params[])//Dance Command to Dance to the boombox
{
    new animid;
    if(sscanf(params, "i", animid)) return SendClientMessage(playerid, COLOR_WHITE, "USAGE: /dance [1-4]");
    if(animid < 1 || animid > 4) return SendClientMessage(playerid, COLOR_WHITE, "USAGE: /dance [1-4]");
    switch(animid)
    {
        case 1: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE1);
        case 2: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE2);
        case 3: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE3);
        case 4: SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DANCE4);
    }
    return 1;
}

CMD:placeboombox(playerid, params[])
{
    new string[128], Float:BBCoord[4], pName[MAX_PLAYER_NAME];
    GetPlayerPos(playerid, BBCoord[0], BBCoord[1], BBCoord[2]);
    GetPlayerFacingAngle(playerid, BBCoord[3]);
    SetPVarFloat(playerid, "BBX", BBCoord[0]);
    SetPVarFloat(playerid, "BBY", BBCoord[1]);
    SetPVarFloat(playerid, "BBZ", BBCoord[2]);
    GetPlayerName(playerid, pName, sizeof(pName));
    BBCoord[0] += (2 * floatsin(-BBCoord[3], degrees));
   	BBCoord[1] += (2 * floatcos(-BBCoord[3], degrees));
   	BBCoord[2] -= 1.0;
	//if(Boombox[playerid] == 0) return SCM(playerid, COLOR_WHITE, "You don't have a Boombox - Ask a Admin for one"); // Part of Variable
	if(GetPVarInt(playerid, "PlacedBB")) return SCM(playerid, -1, "You already placed a Boombox - use /pickupboombox");
	foreach(Player, i)
	{
 		if(GetPVarType(i, "PlacedBB"))
   		{
  			if(IsPlayerInRangeOfPoint(playerid, 30.0, GetPVarFloat(i, "BBX"), GetPVarFloat(i, "BBY"), GetPVarFloat(i, "BBZ")))
			{
   				SendClientMessage(playerid, COLOR_WHITE, "You cannot put your boombox in this Radius as their is already one placed in this radius");
			    return 1;
			}
		}
	}
	new string2[128];
	format(string2, sizeof(string2), "%s has placed down an boombox!", pName);
	SendNearbyMessage(playerid, 15, string2, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
	SetPVarInt(playerid, "PlacedBB", CreateDynamicObject(2102, BBCoord[0], BBCoord[1], BBCoord[2], 0.0, 0.0, 0.0, .worldid = GetPlayerVirtualWorld(playerid), .interiorid = GetPlayerInterior(playerid)));
	format(string, sizeof(string), "{00FF33}[::OwerLand::]\n {FF0000}Boombox Owner: [%s]\n{00C3FF}Use /setboombox\n/pickupboombox", pName);
	SetPVarInt(playerid, "BBLabel", _:CreateDynamic3DTextLabel(string, -1, BBCoord[0], BBCoord[1], BBCoord[2]+0.6, 5, .worldid = GetPlayerVirtualWorld(playerid), .interiorid = GetPlayerInterior(playerid)));
	SetPVarInt(playerid, "BBArea", CreateDynamicSphere(BBCoord[0], BBCoord[1], BBCoord[2], 30.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid)));
	SetPVarInt(playerid, "BBInt", GetPlayerInterior(playerid));
	SetPVarInt(playerid, "BBVW", GetPlayerVirtualWorld(playerid));
	ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	return 1;
}

CMD:setboombox(playerid, params[])
{
	if(GetPVarType(playerid, "PlacedBB"))
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ")))
		{
			ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","Billie Eilish\ntatal\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		else
		{
   			return SendClientMessage(playerid, -1, "You're not near in your BoomBox!");
		}
    }
    else
    {
        SendClientMessage(playerid, -1, " You don't have a boombox placed down!");
	}
	return 1;
}

CMD:pickupboombox(playerid, params [])
{
	if(!GetPVarInt(playerid, "PlacedBB"))
    {
        SendClientMessage(playerid, -1, "You haven't placed a Boombox!");
    }
	if(IsPlayerInRangeOfPoint(playerid, 3.0, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ")))
    {
        PickUpBoombox(playerid);
        SendClientMessage(playerid, -1, "Boombox picked up successfully.");
    }
    return 1;
}

public OnPlayerEnterDynamicArea(playerid, areaid)
{
	foreach(Player, i)
	{
	    if(GetPVarType(i, "BBArea"))
	    {
	        if(areaid == GetPVarInt(i, "BBArea"))
	        {
	            new station[256];
	            GetPVarString(i, "BBStation", station, sizeof(station));
	            if(!isnull(station))
				{
					PlayStream(playerid, station, GetPVarFloat(i, "BBX"), GetPVarFloat(i, "BBY"), GetPVarFloat(i, "BBZ"), 30.0, 1);
				 	SendClientMessage(playerid, -1, "You have entered an boombox area");
	            }
				return 1;
	        }
	    }
	}
	return 1;
}

public OnPlayerLeaveDynamicArea(playerid, areaid)
{
    foreach(Player, i)
	{
	    if(GetPVarType(i, "BBArea"))
	    {
	        if(areaid == GetPVarInt(i, "BBArea"))
	        {
	            StopStream(playerid);
	            SendClientMessage(playerid, -1, "You have left the boombox area");
				return 1;
	        }
	    }
	}
	return 1;
}

stock StopStream(playerid)
{
	DeletePVar(playerid, "pAudioStream");
    StopAudioStreamForPlayer(playerid);
}

stock PlayStream(playerid, url[], Float:posX = 0.0, Float:posY = 0.0, Float:posZ = 0.0, Float:distance = 50.0, usepos = 0)
{
	if(GetPVarType(playerid, "pAudioStream")) StopAudioStreamForPlayer(playerid);
	else SetPVarInt(playerid, "pAudioStream", 1);
    PlayAudioStreamForPlayer(playerid, url, posX, posY, posZ, distance, usepos);
}

stock PickUpBoombox(playerid)
{
    foreach(Player, i)
	{
 		if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
   		{
     		StopStream(i);
		}
	}
	DeletePVar(playerid, "BBArea");
	DestroyDynamicObject(GetPVarInt(playerid, "PlacedBB"));
	DestroyDynamic3DTextLabel(Text3D:GetPVarInt(playerid, "BBLabel"));
	DeletePVar(playerid, "PlacedBB"); DeletePVar(playerid, "BBLabel");
 	DeletePVar(playerid, "BBX"); DeletePVar(playerid, "BBY"); DeletePVar(playerid, "BBZ");
	DeletePVar(playerid, "BBInt");
	DeletePVar(playerid, "BBVW");
	DeletePVar(playerid, "BBStation");
	return 1;
}

stock SendNearbyMessage(playerid, Float:radius, string[], col1, col2, col3, col4, col5)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	new Float:ix, Float:iy, Float:iz;
	new Float:cx, Float:cy, Float:cz;
	foreach(Player, i)
	{
 		if(gPlayerLoggin{i})
	    {
	        if(GetPlayerInterior(playerid) == GetPlayerInterior(i) && GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(i))
	        {
				GetPlayerPos(i, ix, iy, iz);
				cx = (x - ix);
				cy = (y - iy);
				cz = (z - iz);
				if(((cx < radius/16) && (cx > -radius/16)) && ((cy < radius/16) && (cy > -radius/16)) && ((cz < radius/16) && (cz > -radius/16)))
				{
				    SendClientMessage(i, col1, string);
				}
				else if(((cx < radius/8) && (cx > -radius/8)) && ((cy < radius/8) && (cy > -radius/8)) && ((cz < radius/8) && (cz > -radius/8)))
				{
				    SendClientMessage(i, col2, string);
				}
				else if(((cx < radius/4) && (cx > -radius/4)) && ((cy < radius/4) && (cy > -radius/4)) && ((cz < radius/4) && (cz > -radius/4)))
				{
				    SendClientMessage(i, col3, string);
				}
				else if(((cx < radius/2) && (cx > -radius/2)) && ((cy < radius/2) && (cy > -radius/2)) && ((cz < radius/2) && (cz > -radius/2)))
				{
				    SendClientMessage(i, col4, string);
				}
				else if(((cx < radius) && (cx > -radius)) && ((cy < radius) && (cy > -radius)) && ((cz < radius) && (cz > -radius)))
				{
				    SendClientMessage(i, col5, string);
				}
			}
	    }
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_BOOMBOX)
    {
    	if(!response)
     	{
            SendClientMessage(playerid, COLOR_WHITE, " You cancel the Music Station");
        	return 1;
        }
		switch(listitem)
  		{
    		case 0:
      		{
      		    ShowPlayerDialog(playerid,DIALOG_BOOMBOX1,DIALOG_STYLE_LIST,"bli lish","1\n2","Select","Cancel");
            }
            case 1:
            {
                ShowPlayerDialog(playerid,DIALOG_BOOMBOX2,DIALOG_STYLE_LIST,"tatal","1\n2","Select","Cancel");
            }
            case 2:
            {
                ShowPlayerDialog(playerid,DIALOG_BOOMBOX3,DIALOG_STYLE_LIST,"Yas","Sefareshi\nEsalat","Select","Cancel");
            }
            case 3:
            {
                ShowPlayerDialog(playerid,DIALOG_BOOMBOX4,DIALOG_STYLE_LIST,"Eminem","Lose Yourself\nThe Monster","Select","Cancel");
			}
			case 4:
			{
			    ShowPlayerDialog(playerid,DIALOG_BOOMBOX5,DIALOG_STYLE_LIST,"Ariana Grande","Positions\n7 Rings","Select","Cancel");
			}
			case 5:
			{
			    ShowPlayerDialog(playerid,DIALOG_BOOMBOX6,DIALOG_STYLE_LIST,"Taylor Swift","Willow\nEvermore","Select","Cancel");
			}
			case 6:
			{
			    ShowPlayerDialog(playerid,DIALOG_BOOMBOX7,DIALOG_STYLE_INPUT, "Boombox Input URL", "Please put a Music URL to play the Music", "Play", "Cancel");
			}
			case 7:
			{
                if(GetPVarType(playerid, "BBArea"))
			    {
			        new string[128], pName[MAX_PLAYER_NAME];
			        GetPlayerName(playerid, pName, sizeof(pName));
					format(string, sizeof(string), "* %s has turned off their boombox.", pName);
					SendNearbyMessage(playerid, 15, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			        foreach(Player, i)
					{
			            if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
			            {
			                StopStream(i);
						}
					}
			        DeletePVar(playerid, "BBStation");
				}
				SendClientMessage(playerid, COLOR_WHITE, "You've turn off your boombox");
			}
        }
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX1)//Billie Eilish
	{
	    if(!response)
	    {
     		ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","bilish\ntatal\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		if(response)
        {
            if(listitem == 0)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://dl.baarzesh.net/music/2021/1/Billie%20Eilish_Lo_Vas_A_Olvidar_128.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://dl.baarzesh.net/music/2021/1/Billie%20Eilish_Lo_Vas_A_Olvidar_128.mp3");
				}
			}
		 	if(listitem == 1)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://xx.atlas-music.ir/archive/a/Amir%20Tataloo/1398/Amir%20Tataloo%20-%20Velesh%20Kon.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://xx.atlas-music.ir/archive/a/Amir%20Tataloo/1398/Amir%20Tataloo%20-%20Velesh%20Kon.mp3");
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX2)//Halsey
	{
	    if(!response)
	    {
            ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","Billie Eilish\ntatal\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		if(response)
        {
            if(listitem == 0)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20200515/Marshmello_Halsey_-_Be_Kind_69552860.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20200515/Marshmello_Halsey_-_Be_Kind_69552860.mp3");
				}
			}
			if(listitem == 1)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20181006/Halsey_-_Without_Me_59449998.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20181006/Halsey_-_Without_Me_59449998.mp3");
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX3)//Yas
	{
	    if(!response)
	    {
     		ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","Billie Eilish\nHalsey\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		if(response)
        {
            if(listitem == 0)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "http://dl.avangtv.com/music/Yas/Sefareshi%20-%20Yas.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "http://dl.avangtv.com/music/Yas/Sefareshi%20-%20Yas.mp3");
				}
			}
			if(listitem == 1)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "http://dl.avangtv.com/music/Yas/04.%20Yas%20-%20Esalat%20%282%29.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "http://dl.avangtv.com/music/Yas/04.%20Yas%20-%20Esalat%20%282%29.mp3");
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX4)//Eminem
	{
	    if(!response)
	    {
     		ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","Billie Eilish\nHalsey\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		if(response)
        {
            if(listitem == 0)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20170830/Eminem_-_Lose_Yourself_47829428.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20170830/Eminem_-_Lose_Yourself_47829428.mp3");
				}
			}
			if(listitem == 1)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20170902/Eminem_Rihanna_-_The_Monster_47964981.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20170902/Eminem_Rihanna_-_The_Monster_47964981.mp3");
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX5)//Ariana Grande
	{
	    if(!response)
	    {
     		ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","Billie Eilish\nHalsey\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		if(response)
        {
            if(listitem == 0)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20201107/Ariana_Grande_-_positions_71525418.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20201107/Ariana_Grande_-_positions_71525418.mp3");
				}
			}
   			if(listitem == 1)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20190119/Ariana_Grande_-_7_rings_61522389.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20190119/Ariana_Grande_-_7_rings_61522389.mp3");
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX6)//Taylor Swift
	{
	    if(!response)
	    {
        ShowPlayerDialog(playerid,DIALOG_BOOMBOX,DIALOG_STYLE_LIST,"Music List","Billie Eilish\nHalsey\nYas\nEminem\nAriana Grande\nTaylor Swift\nEnter URL\nTurn Off Boombox","Select", "Cancel");
		}
		if(response)
        {
            if(listitem == 0)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20201217/Taylor_Swift_-_willow_71994326.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20201217/Taylor_Swift_-_willow_71994326.mp3");
				}
			}
   			if(listitem == 1)
            {
                if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, "https://en.muzmo.org/get/music/20201212/Taylor_Swift_Bon_Iver_-_evermore_71937861.mp3", GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", "https://en.muzmo.org/get/music/20201212/Taylor_Swift_Bon_Iver_-_evermore_71937861.mp3");
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_BOOMBOX7)//SET URL
	{
		if(response == 1)
		{
		    if(isnull(inputtext))
		    {
		        SendClientMessage(playerid, COLOR_WHITE, "You did not enter anything" );
		        return 1;
		    }
		    if(strlen(inputtext))
		    {
		        if(GetPVarType(playerid, "PlacedBB"))
				{
				    foreach(Player, i)
					{
						if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
						{
							PlayStream(i, inputtext, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
				  		}
				  	}
			  		SetPVarString(playerid, "BBStation", inputtext);
				}
			}
		}
		else
		{
		    return 1;
		}
	}
	return 1;
}
