#include <a_samp>

#define MUSOR 300 //Bazikon Baray Har Zobale Be Sorat Pishfarz 300$ Migirad

//_______________________________[TextDraw's]___________________________________
new Text:work0;
new Text:work1;
new Text:work2;
new Text:work3;
new Text:work4;
new Text:work5;
new Text:work6;
//______________________________________________________________________________
new total[MAX_PLAYERS];//Megdar Zobale.
new clearmusor;//Jam Avari Zobale.
new musor[MAX_PLAYERS];//Bazrasi.
//_______________________________[Object's]_____________________________________
new object1[MAX_PLAYERS];
new object2[MAX_PLAYERS];
new object3[MAX_PLAYERS];
new object4[MAX_PLAYERS];
new object5[MAX_PLAYERS];
new object6[MAX_PLAYERS];

forward PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z);//Makan Pakhsh

public OnFilterScriptInit()
{
	clearmusor = CreatePickup(1328, 23, 500.3105,-1816.4789,5.7757, 0);//Jam Avari Zobale.
	CreatePickup(1239, 23, 504.9208,-1816.0354,5.7904, 0);//Dastgah Dar Mahal.
	Create3DTextLabel("{E8FF68}Stash Trash", 0x447494FF, 500.3105,-1816.4789,5.7757,10.0, 0, 1);
	Create3DTextLabel("{E8FF68}Use: {119400}/work", 0x447494FF, 504.9208,-1816.0354,5.7904,10.0, 0, 1);
	CreateObject(8168, 503.738769,-1812.714355,6.567204, 0.000000,0.000000,0.000000);
	CreateObject(1236, 500.550720,-1815.381713,5.295200, 0.000000,0.000000,-17.700000);
	CreateObject(710, 507.594909,-1817.003662,6.529620, 0.000000,0.000000,0.000000);
	CreateActor(144, 505.177215, -1815.161865, 5.814987, 161.485198);// Cleaner Robat.
	Create3DTextLabel("Cleaner", 0x447494FF, 505.177215, -1815.161865, 6.914987,40.0, 0, 1);// Cleaner Robat.
	//_________________________________[TextDraw's]_____________________________
	work0 = TextDrawCreate(491.411773, 225.500000, "usebox");
	TextDrawLetterSize(work0, 0.000000, 2.599999);
	TextDrawTextSize(work0, 417.294128, 0.000000);
	TextDrawAlignment(work0, 1);
	TextDrawColor(work0, 0);
	TextDrawUseBox(work0, true);
	TextDrawBoxColor(work0, 102);
	TextDrawSetShadow(work0, 0);
	TextDrawSetOutline(work0, 0);
	TextDrawFont(work0, 0);

	work1 = TextDrawCreate(489.117767, 228.250030, "usebox");
	TextDrawLetterSize(work1, 0.000000, 1.941176);
	TextDrawTextSize(work1, 419.647125, 0.000000);
	TextDrawAlignment(work1, 1);
	TextDrawColor(work1, 0);
	TextDrawUseBox(work1, true);
	TextDrawBoxColor(work1, -1523963137);
	TextDrawSetShadow(work1, 0);
	TextDrawSetOutline(work1, 0);
	TextDrawBackgroundColor(work1, -1523963137);
	TextDrawFont(work1, 0);

	work2 = TextDrawCreate(491.470611, 254.500015, "usebox");
	TextDrawLetterSize(work2, 0.000000, 2.505882);
	TextDrawTextSize(work2, 417.294128, 0.000000);
	TextDrawAlignment(work2, 1);
	TextDrawColor(work2, 0);
	TextDrawUseBox(work2, true);
	TextDrawBoxColor(work2, 102);
	TextDrawSetShadow(work2, 0);
	TextDrawSetOutline(work2, 0);
	TextDrawFont(work2, 0);

	work3 = TextDrawCreate(489.176513, 257.250000, "usebox");
	TextDrawLetterSize(work3, 0.000000, 1.894117);
	TextDrawTextSize(work3, 419.176452, 0.000000);
	TextDrawAlignment(work3, 1);
	TextDrawColor(work3, 0);
	TextDrawUseBox(work3, true);
	TextDrawBoxColor(work3, -1523963137);
	TextDrawSetShadow(work3, 0);
	TextDrawSetOutline(work3, 0);
	TextDrawFont(work3, 0);

	work4 = TextDrawCreate(426.352844, 216.416625, "WORK STATUS:");
	TextDrawLetterSize(work4, 0.244823, 0.876666);
	TextDrawAlignment(work4, 1);
	TextDrawColor(work4, -1);
	TextDrawSetShadow(work4, 0);
	TextDrawSetOutline(work4, 1);
	TextDrawBackgroundColor(work4, 51);
	TextDrawFont(work4, 1);
	TextDrawSetProportional(work4, 1);

	work5 = TextDrawCreate(427.764587, 230.416687, "_");
	TextDrawLetterSize(work5, 0.324344, 1.343326);
	TextDrawAlignment(work5, 1);
	TextDrawColor(work5, -1);
	TextDrawSetShadow(work5, 0);
	TextDrawSetOutline(work5, 1);
	TextDrawBackgroundColor(work5, 51);
	TextDrawFont(work5, 3);
	TextDrawSetProportional(work5, 1);

	work6 = TextDrawCreate(424.529357, 260.000000, "_");
	TextDrawLetterSize(work6, 0.257529, 1.150833);
	TextDrawAlignment(work6, 1);
	TextDrawColor(work6, -1);
	TextDrawSetShadow(work6, 0);
	TextDrawSetOutline(work6, 1);
	TextDrawBackgroundColor(work6, 51);
	TextDrawFont(work6, 3);
	TextDrawSetProportional(work6, 1);
	return 1;
}

public OnPlayerConnect(playerid)
{
	musor[playerid] = 0;//Bazrasi.
	total[playerid] = 0;//Meghdar Zobale Hara Tanzim Mokonim.
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	musor[playerid] = 0;//Bazrasi.
	total[playerid] = 0;//Tanzim Meghdar Jadid Zobale.
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	musor[playerid] = 0;//Bazrasi.
	total[playerid] = 0;//Tanzim Meghdar Jadid Zobale.
	DisablePlayerCheckpoint(playerid);//Nogat Bazrasi Ra Bardarid.
	//________________________[Удаляем объекты]_________________________________
	DestroyPlayerObject(playerid, object1[playerid]);
	DestroyPlayerObject(playerid, object2[playerid]);
	DestroyPlayerObject(playerid, object3[playerid]);
	DestroyPlayerObject(playerid, object4[playerid]);
	DestroyPlayerObject(playerid, object5[playerid]);
	DestroyPlayerObject(playerid, object6[playerid]);
	//________________________[Hazf Text Draw]_________________________________
	TextDrawHideForPlayer(playerid, work0);
	TextDrawHideForPlayer(playerid, work1);
	TextDrawHideForPlayer(playerid, work2);
	TextDrawHideForPlayer(playerid, work3);
	TextDrawHideForPlayer(playerid, work4);
	TextDrawHideForPlayer(playerid, work5);
	TextDrawHideForPlayer(playerid, work6);
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp("/work", cmdtext, true, 10) == 0)//Tim Baray Shoro.
	{
		if(PlayerToPoint(1.0,playerid, 504.9208,-1816.0354,5.7904))//Baresi Mogiat Makani Player.
	    {
	        if(musor[playerid] == 0)//Baresi Inke Aya Pakhsh Konande Kar Mikonad Ya Kheyr
	        {
	        	ShowPlayerDialog(playerid, 4499, DIALOG_STYLE_MSGBOX, "{FFFFFF}Work","{FFFFFF}Cleaner:\n\nThere are a lot of trash around the city. do you want to help us clean them?\nYou will be paid.","Yes","No");
			}else SendClientMessage(playerid, 0xFFFFFFAA, "{1562C6}[Clean]: {FFFFFF}You are working right now.");
		}
		return 1;
	}
	return 0;
}

public OnPlayerEnterCheckpoint(playerid)
{
	if(musor[playerid] == 1)//Bazrasi.
	{
	    total[playerid] += 1;//Ezafe +1 Zobale Avard.
	    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0);//Jam Avari Zobale.
	    //________________________[Hazf]_____________________________
	    DestroyPlayerObject(playerid, object1[playerid]);
	    DestroyPlayerObject(playerid, object2[playerid]);
	    DestroyPlayerObject(playerid, object3[playerid]);
	    DestroyPlayerObject(playerid, object4[playerid]);
	    DestroyPlayerObject(playerid, object5[playerid]);
	    DestroyPlayerObject(playerid, object6[playerid]);
	    //________________________[Tokhm Rizi .]_____________________
	    new rand666=random(6);
		switch (rand666)
		{
			case 0:SetPlayerCheckpoint(playerid,508.5461,-1823.4453,5.5823,0.6), object1[playerid] = CreatePlayerObject(playerid, 1264, 508.5461,-1823.4453,5.5823-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
			case 1:SetPlayerCheckpoint(playerid,559.0388,-1871.4319,4.1248,0.6), object2[playerid] = CreatePlayerObject(playerid, 917, 559.0388,-1871.4319,4.1248-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
			case 2:SetPlayerCheckpoint(playerid,513.3473,-1897.3883,1.5154,0.6), object3[playerid] = CreatePlayerObject(playerid, 2672, 513.3473,-1897.3883,1.5154-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
			case 3:SetPlayerCheckpoint(playerid,494.5392,-1873.6088,3.2831,0.6), object4[playerid] = CreatePlayerObject(playerid, 1264, 494.5392,-1873.6088,3.2831-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
			case 4:SetPlayerCheckpoint(playerid,463.7719,-1853.4425,3.6171,0.6), object5[playerid] = CreatePlayerObject(playerid, 1264, 463.7719,-1853.4425,3.6171-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
			case 5:SetPlayerCheckpoint(playerid,462.6543,-1822.2416,5.4836,0.6), object6[playerid] = CreatePlayerObject(playerid, 1264, 462.6543,-1822.2416,5.4836-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
		}
	}
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	if(pickupid == clearmusor)//Jam Avari Zobale.
	{
		if(total[playerid] >= 0)
		{
			new zp[200];
			format(zp,sizeof(zp),"{1562C6}[Cleaner]: {FFFFFF}You got {1562C6}%d$.{FFFFFF} Come again.", total[playerid]*MUSOR);
			SendClientMessage(playerid, 0xFFFFFFAA, zp);
		    SetPlayerSkin(playerid, GetPVarInt(playerid, "SKINID"));//Be Plaeyr Barmigardanim.
		    GivePlayerMoney(playerid, total[playerid]*MUSOR);//Hogogh Ra Midahim. GivePlayerMoney Ba Anti Cheat Tanzim Konid.
		    new tx[10];
		    format(tx,sizeof(tx),"~g~+%d$",total[playerid]*MUSOR);
		    GameTextForPlayer(playerid,tx,100,1);
		    total[playerid] = 0;//Tanzim Mojadad Megdar Zobale.
		    musor[playerid] = 0;//Bazrasi.
		    PlayerPlaySound(playerid, 17000, 0.0, 0.0, 10.0);//Efekt Soti
		    DisablePlayerCheckpoint(playerid);//Hazf Bazrasi
		    //________________________[Hazf Pish Nevis]_______________________
			TextDrawHideForPlayer(playerid, work0);
			TextDrawHideForPlayer(playerid, work1);
			TextDrawHideForPlayer(playerid, work2);
			TextDrawHideForPlayer(playerid, work3);
			TextDrawHideForPlayer(playerid, work4);
			TextDrawHideForPlayer(playerid, work5);
			TextDrawHideForPlayer(playerid, work6);
			//________________________[Hazf Ashia]_____________________
		    DestroyPlayerObject(playerid, object1[playerid]);
		    DestroyPlayerObject(playerid, object2[playerid]);
		    DestroyPlayerObject(playerid, object3[playerid]);
		    DestroyPlayerObject(playerid, object4[playerid]);
		    DestroyPlayerObject(playerid, object5[playerid]);
		    DestroyPlayerObject(playerid, object6[playerid]);
		}else SendClientMessage(playerid, 0xFFFFFFAA, "{FF0000}[Cleaner]: {FFFFFF}You must have a bag full of garbage. Go collect.");
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	new updatetotal[50];
	format(updatetotal,50,"~w~TOTAL: ~b~%d", total[playerid]);
	TextDrawSetString(work5, updatetotal);
	new updatemoney[50];
	format(updatemoney,50,"~w~MONEY: ~g~%d$", total[playerid]*MUSOR);
	TextDrawSetString(work6, updatemoney);
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == 4499)
	{
	    if(response)
	    {
	        SetPVarInt(playerid, "SKINID", GetPlayerSkin(playerid));//Post Bazikon Ra Zakhire Konid.
	        SetPlayerSkin(playerid, 262);//Nasb. Poste.
	        //________________________[Tokhm Rizi.]_____________________
	    	new rand666=random(6);
	    	switch (rand666)
	    	{
				case 0:SetPlayerCheckpoint(playerid,508.5461,-1823.4453,5.5823,0.6), object1[playerid] = CreatePlayerObject(playerid, 1264, 508.5461,-1823.4453,5.5823-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
				case 1:SetPlayerCheckpoint(playerid,559.0388,-1871.4319,4.1248,0.6), object2[playerid] = CreatePlayerObject(playerid, 917, 559.0388,-1871.4319,4.1248-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
				case 2:SetPlayerCheckpoint(playerid,513.3473,-1897.3883,1.5154,0.6), object3[playerid] = CreatePlayerObject(playerid, 2672, 513.3473,-1897.3883,1.5154-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
				case 3:SetPlayerCheckpoint(playerid,494.5392,-1873.6088,3.2831,0.6), object4[playerid] = CreatePlayerObject(playerid, 1264, 494.5392,-1873.6088,3.2831-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
				case 4:SetPlayerCheckpoint(playerid,463.7719,-1853.4425,3.6171,0.6), object5[playerid] = CreatePlayerObject(playerid, 1264, 463.7719,-1853.4425,3.6171-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
				case 5:SetPlayerCheckpoint(playerid,462.6543,-1822.2416,5.4836,0.6), object6[playerid] = CreatePlayerObject(playerid, 1264, 462.6543,-1822.2416,5.4836-0.5, 0, 0, 96, 300.0), musor[playerid] = 1;
    		}
    		total[playerid] = 0;//Tanzim Mojadad
    		//________________________[Pish Nevis]_____________________
    		TextDrawShowForPlayer(playerid, work0);
    		TextDrawShowForPlayer(playerid, work1);
    		TextDrawShowForPlayer(playerid, work2);
    		TextDrawShowForPlayer(playerid, work3);
    		TextDrawShowForPlayer(playerid, work4);
    		TextDrawShowForPlayer(playerid, work5);
    		TextDrawShowForPlayer(playerid, work6);
    		SendClientMessage(playerid, 0xFFFFFFAA, "{1562C6}[Cleaner]: {FFFFFF}Here is a bag for you. Fill it at the beach and return it.");
	    }else SendClientMessage(playerid, 0xFFFFFFAA, "{1562C6}[Cleaner]: {FFFFFF}Bye..");
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

stock PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z)//Baresi Mogiat Makani.
{
    if(IsPlayerConnected(playerid))
    {
	     new Float:oldposx, Float:oldposy, Float:oldposz;
	     new Float:tempposx, Float:tempposy, Float:tempposz;
	     GetPlayerPos(playerid, oldposx, oldposy, oldposz);
	     tempposx = (oldposx -x);
	     tempposy = (oldposy -y);
	     tempposz = (oldposz -z);
	     if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi))) return 1;
    }
	return 0;
}
