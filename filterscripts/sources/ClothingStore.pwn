#include <a_samp>

#define MinSkinPrice 50
#define MaxSkinPrice 100

new IsInShop[MAX_PLAYERS];
new KeyTimer[MAX_PLAYERS];
new wait[MAX_PLAYERS];
new count[MAX_PLAYERS];
new HasBoughtNewSkin[MAX_PLAYERS];
new Float:LastPos[MAX_PLAYERS][4], LastInterior[MAX_PLAYERS], LastVW[MAX_PLAYERS], LastSkin[MAX_PLAYERS];
new Text:TextDraw[MAX_PLAYERS];
new TextDrawString[MAX_PLAYERS][128];
new TextdrawActive[MAX_PLAYERS];
new Skin[MAX_PLAYERS];
new IsDead[MAX_PLAYERS];

/*
DO NOT USE THESE SKIN-ID's!!!!!! They will crash the client/server
3, 4, 5, 6, 8, 42, 65, 74, 86, 119, 149, 208, 273, 289
*/


new AvailableSkins[] =
{
	0, 1, 2, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
	20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33,
	34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47, 48,
	49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62,
	63, 64, 66, 67, 68, 69, 70, 71, 72, 73, 75, 76, 77, 78,
	79, 80, 81, 82, 83, 84, 85, 87, 88, 89, 90, 91, 92, 93,
	94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105,
	106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
	117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128,
	129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
	140, 141, 142, 143, 144, 145, 146, 147, 148, 150, 151,
	152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162,
	163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173,
	174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184,
	185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195,
	196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206,
	207, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218,
	219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229,
	230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240,
	241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251,
	252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262,
	263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 274,
	275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285,
	286, 287, 288, 290, 291, 292, 293, 294, 295, 296, 297,
	298, 299
};

new SkinPrices[sizeof(AvailableSkins)];

new TotalSkins = sizeof(AvailableSkins);

public OnFilterScriptInit()
{
	print("\n---------------------------------------------");
	print("   [FS]ClothingStore by =>Sandra<= Loaded!   ");
	print("---------------------------------------------\n");
	MakeSkinPriceArray();
	return 1;
}

public OnPlayerConnect(playerid)
{
    IsInShop[playerid] = 0;
 	KeyTimer[playerid] = -1;
	wait[playerid] = 0;
	count[playerid] = 0;
	HasBoughtNewSkin[playerid] = 0;
	LastPos[playerid][0] = 0;
	LastPos[playerid][1] = 0;
	LastPos[playerid][2] = 0;
	LastPos[playerid][3] = 0;
	LastInterior[playerid] = 0;
	LastVW[playerid] = 0;
	LastSkin[playerid] = 0;
	TextdrawActive[playerid] = 0;
	Skin[playerid] = 0;
	IsDead[playerid] = 0;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(TextdrawActive[playerid] == 1)
	{
		TextDrawHideForPlayer(playerid, TextDraw[playerid]);
		TextDrawDestroy(TextDraw[playerid]);
	}
}

public OnPlayerDeath(playerid, killerid, reason)
{
	IsDead[playerid] = 1;
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(IsDead[playerid] == 1)
	{
	    SetPlayerSkin(playerid, Skin[playerid]);
	    IsDead[playerid] = 0;
	}
	return 1;
}


public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/enterstore", cmdtext, true) == 0)
	{
	    count[playerid] = 0;
	    format(TextDrawString[playerid], 128, "~y~Press ~r~~k~~PED_SPRINT~ ~y~to buy this skin~n~Price: ~r~$%d~n~~n~~y~(%d/%d)", SkinPrices[count[playerid]], count[playerid]+1, TotalSkins);
		TextDraw[playerid] = TextDrawCreate(320, 390, TextDrawString[playerid]);
		TextDrawLetterSize(TextDraw[playerid],0.40,1.10);
		TextDrawAlignment(TextDraw[playerid], 2);
		TextDrawSetShadow(TextDraw[playerid], 0);
		TextDrawSetOutline(TextDraw[playerid], 1);
		TextDrawUseBox(TextDraw[playerid], 1);
		TextDrawBoxColor(TextDraw[playerid], 0x000000AA);
		TextDrawTextSize(TextDraw[playerid], 250, 220);
		TextDrawShowForPlayer(playerid, TextDraw[playerid]);
		TextdrawActive[playerid] = 1;
		
		//GameTextForPlayer(playerid, str, 99999999, 3);
		HasBoughtNewSkin[playerid] = 0;
	    GetPlayerPos(playerid, LastPos[playerid][0], LastPos[playerid][1], LastPos[playerid][2]);
	    GetPlayerFacingAngle(playerid, LastPos[playerid][3]);
	    LastInterior[playerid] = GetPlayerInterior(playerid);
	    LastVW[playerid] = GetPlayerVirtualWorld(playerid);
	    LastSkin[playerid] = GetPlayerSkin(playerid);
	    SetPlayerVirtualWorld(playerid, playerid+1);
	    SetPlayerInterior(playerid, 18);
	    SetPlayerPos(playerid, 181.7410,-87.4888,1002.0234);
		SetPlayerFacingAngle(playerid, 128.0);
		SetPlayerCameraPos(playerid, 178.2804,-89.5319,1003.0234);
		SetPlayerCameraLookAt(playerid, 181.7410,-87.4888,1002.0234);
		TogglePlayerControllable(playerid, 0);
		IsInShop[playerid] = 1;
		KeyTimer[playerid] = SetTimerEx("CheckKeyPress", 75, 1, "i", playerid);
		wait[playerid] = 0;
		SetPlayerSkin(playerid, AvailableSkins[0]);
		SendClientMessage(playerid, 0x40E0D0AA, "Welcome in the clothing store. Use the arrowkeys to scroll through available skins");
		SendClientMessage(playerid, 0x40E0D000, "Use /exitstore to exit the store without buying a new skin.");
		
		return 1;
	}
	if (strcmp("/exitstore", cmdtext, true) == 0)
	{
	    if(IsInShop[playerid] == 1)
	    {
	        KillTimer(KeyTimer[playerid]);
	        GameTextForPlayer(playerid, " ", 10, 6);
	        SetPlayerInterior(playerid, LastInterior[playerid]);
		    SetPlayerPos(playerid, LastPos[playerid][0], LastPos[playerid][1], LastPos[playerid][2]);
		    SetPlayerFacingAngle(playerid, LastPos[playerid][3]);
		    TextDrawHideForPlayer(playerid, TextDraw[playerid]);
		    TextdrawActive[playerid] = 0;
		    TextDrawDestroy(TextDraw[playerid]);
		    SetPlayerVirtualWorld(playerid, LastVW[playerid]);
			if(HasBoughtNewSkin[playerid] == 0)
			{
		    	SetPlayerSkin(playerid, LastSkin[playerid]);
			}
			TogglePlayerControllable(playerid, 1);
			SetCameraBehindPlayer(playerid);
			IsInShop[playerid] = 0;
			wait[playerid] = 0;
			count[playerid] = 0;
		}
		else
		{
		    SendClientMessage(playerid, 0xFF0000AA, "You're not the Clothing-Shop! Use /enterstore to enter!");
		}
		return 1;
	}
	if (strcmp("/gotoskin", cmdtext, true, 9) == 0)
	{
	    if(IsInShop[playerid] == 1)
	    {
	        new str[128];
			if(!strlen(cmdtext[10]))
			{
			    format(str, 128, "Use: /gotoskin [1-%d]", TotalSkins);
			    SendClientMessage(playerid, 0xFF0000AA, str);
			    return 1;
			}
			new skin = strval(cmdtext[10]);
			if(skin < 1 || skin > TotalSkins)
			{
			    format(str, 128, "Invalid Number! Use /gotoskin [1-%d]", TotalSkins);
			    SendClientMessage(playerid, 0xFF0000AA, str);
			    return 1;
			}
			count[playerid] = skin-1;
			SetPlayerSkin(playerid, AvailableSkins[count[playerid]]);
            wait[playerid] = 1;
            SetTimerEx("ResetWait", 90, 0, "i", playerid);
            format(TextDrawString[playerid], 128, "~y~Press ~r~~k~~PED_SPRINT~ ~y~to buy this skin~n~Price: ~r~$%d~n~~n~~y~(%d/%d)", SkinPrices[count[playerid]], count[playerid]+1, TotalSkins);
			TextDrawHideForPlayer(playerid, TextDraw[playerid]);
			TextdrawActive[playerid] = 0;
			TextDrawSetString(TextDraw[playerid], TextDrawString[playerid]);
			TextDrawShowForPlayer(playerid, TextDraw[playerid]);
			TextdrawActive[playerid] = 1;
 		}
		else
		{
		    SendClientMessage(playerid, 0xFF0000AA, "You're not the Clothing-Shop! Use /enterstore to enter!");
		}
		return 1;
	}
	return 0;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(IsInShop[playerid] == 1)
	{
		if (newkeys & KEY_SPRINT)
		{
			if(GetPlayerMoney(playerid) < SkinPrices[count[playerid]])
			{
			    GameTextForPlayer(playerid, "~r~Not Enough Money!", 9999999, 3);
			}
			else
			{
			    PlayerPlaySound(playerid, 1139, 181.7410,-87.4888,1002.023);
			    GivePlayerMoney(playerid, (0-SkinPrices[count[playerid]]));
			    Skin[playerid] = AvailableSkins[count[playerid]];
			    TextDrawHideForPlayer(playerid, TextDraw[playerid]);
			    TextdrawActive[playerid] = 0;
		   		TextDrawDestroy(TextDraw[playerid]);
			    HasBoughtNewSkin[playerid] = 1;
			    OnPlayerCommandText(playerid, "/exitstore");
			}
		}
	}
}

forward CheckKeyPress(playerid);
public CheckKeyPress(playerid)
{
	if(wait[playerid] == 0)
	{
		new keys, updown, leftright;
        GetPlayerKeys(playerid, keys, updown, leftright);
        if(leftright == KEY_RIGHT)
        {
            if(IsInShop[playerid] == 1)
            {
	        	count[playerid]++;
	        	if(count[playerid] > TotalSkins)
				{
				    count[playerid] = 0;
				}
	        	SetPlayerSkin(playerid, AvailableSkins[count[playerid]]);
	            wait[playerid] = 1;
	            SetTimerEx("ResetWait", 90, 0, "i", playerid);
	            format(TextDrawString[playerid], 128, "~y~Press ~r~~k~~PED_SPRINT~ ~y~to buy this skin~n~Price: ~r~$%d~n~~n~~y~(%d/%d)", SkinPrices[count[playerid]], count[playerid]+1, TotalSkins);
				TextDrawHideForPlayer(playerid, TextDraw[playerid]);
				TextdrawActive[playerid] = 0;
				TextDrawSetString(TextDraw[playerid], TextDrawString[playerid]);
				TextDrawShowForPlayer(playerid, TextDraw[playerid]);
				TextdrawActive[playerid] = 1;
			}
	    }
        if(leftright == KEY_LEFT)
        {
            if(IsInShop[playerid] == 1)
            {
	            count[playerid]--;
	            if(count[playerid] == -1)
				{
				    count[playerid] = TotalSkins;
				}
	        	SetPlayerSkin(playerid, AvailableSkins[count[playerid]]);
	            wait[playerid] = 1;
	            SetTimerEx("ResetWait", 90, 0, "i", playerid);
	            format(TextDrawString[playerid], 128, "~y~Press ~r~~k~~PED_SPRINT~ ~y~to buy this skin~n~Price: ~r~$%d~n~~n~~y~(%d/%d)", SkinPrices[count[playerid]], count[playerid]+1, TotalSkins);
				TextDrawHideForPlayer(playerid, TextDraw[playerid]);
				TextdrawActive[playerid] = 0;
				TextDrawSetString(TextDraw[playerid], TextDrawString[playerid]);
				TextDrawShowForPlayer(playerid, TextDraw[playerid]);
				TextdrawActive[playerid] = 1;
			}
        }
    }
}

forward ResetWait(playerid);
public ResetWait(playerid)
{
	wait[playerid] = 0;
}

MakeSkinPriceArray()
{
	for(new i; i<sizeof(SkinPrices); i++)
	{
	    SkinPrices[i] = (random(MaxSkinPrice-MinSkinPrice)+MinSkinPrice);
	}
}
	


