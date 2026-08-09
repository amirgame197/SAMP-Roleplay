/*
|====================================================|
|++ Include     : pLoading.inc (v1.0)                |
|++ Information : Load Screen (SinglePlayer)         |
|++ Credits: Toribio/Southclaw,PeterLinkson,Incognito|
|====================================================|
*/

#if defined _pLoading_included
    #endinput
#endif
 
#define _pLoading_included
 
#if !defined _progress2_included
    #tryinclude <progress2>
    #if !defined _progress2_included
        #error could not locate progress2.inc file, download ( github.com/Southclaws/progress2 )
    #endif
#endif

#include audio //http://forum.sa-mp.com/showthread.php?t=82162
 
enum pL_enum
{
    pL_Timer_TD,
    pL_Timer_Bar,
    Float:pL_Value,
    Float:pL_Max,
    PlayerBar:pL_Bar,
    PlayerText:pL_TD,
	pL_Sound
};
 
new pL_Loading[MAX_PLAYERS][pL_enum];

forward OnPlayerLoadingStart(playerid);
forward OnPlayerLoadingEnd(playerid);

public OnGameModeInit()
{
    Audio_SetPack("loading");
	
	#if defined pL_Load_OnGameModeInit
        pL_Load_OnGameModeInit();
    #endif
    return 1;
}

public Audio_OnClientConnect(playerid)
{
	Audio_TransferPack(playerid);
	return 1;
}

new handle[MAX_PLAYERS];
public OnPlayerConnect(playerid)
{
	handle[playerid] = -1;
	handle[playerid] = Audio_Play(playerid, 1);
	Audio_Stop(playerid, handle[playerid]);
	
    pL_Loading[playerid][pL_TD] = CreatePlayerTextDraw(playerid,0.0, 0.0, "_");
    PlayerTextDrawFont(playerid, pL_Loading[playerid][pL_TD], 4);
    PlayerTextDrawUseBox(playerid, pL_Loading[playerid][pL_TD], 1);
    PlayerTextDrawTextSize(playerid, pL_Loading[playerid][pL_TD], 650.0, 470.0);
   
    pL_Loading[playerid][pL_Bar] = CreatePlayerProgressBar(playerid, 53.000000, 427.000000, 183.000000, 3.699997, -1429936641, 100.0, 0);
   
    #if defined pL_Load_OnPlayerConnect
        pL_Load_OnPlayerConnect(playerid);
    #endif
    return 1;
}
 
stock ShowPlayerLoading(playerid, Float:time = 10.0)
{
	CallLocalFunction("OnPlayerLoadingStart", "d", playerid);

    new pL_string[20], pL_number = random(14);
   
    pL_Loading[playerid][pL_Max] = time;
 
    if(pL_number == 0) pL_string = "loadsc1:loadsc1";
    else format(pL_string, 20, "loadsc%d:loadsc%d", pL_number, pL_number);
 
    SetPlayerProgressBarMaxValue(playerid, pL_Loading[playerid][pL_Bar], pL_Loading[playerid][pL_Max]);
    PlayerTextDrawSetString(playerid, pL_Loading[playerid][pL_TD], pL_string);

	TogglePlayerControllable(playerid, false);
    PlayerTextDrawShow(playerid, pL_Loading[playerid][pL_TD]);
    ShowPlayerProgressBar(playerid, pL_Loading[playerid][pL_Bar]);
   
    pL_Loading[playerid][pL_Timer_TD] = SetTimerEx("Loading_TD", 2750, true, "d", playerid);
    pL_Loading[playerid][pL_Timer_Bar] = SetTimerEx("Loading_Bar", 50, true, "d", playerid);
	
	switch(pL_Loading[playerid][pL_Sound])
	{
		case 0: handle[playerid] = Audio_Play(playerid, 1);
		case 1: handle[playerid] = Audio_Play(playerid, 2);
		case 2: handle[playerid] = Audio_Play(playerid, 3);
	}
	
	for(new i; i < 20; ++i) SendClientMessage(playerid, -1, "");
    return 1;
}

stock HidePlayerLoading(playerid)
{
	CallLocalFunction("OnPlayerLoadingEnd", "d", playerid);
	
    KillTimer(pL_Loading[playerid][pL_Timer_TD]);
    KillTimer(pL_Loading[playerid][pL_Timer_Bar]);
    TogglePlayerControllable(playerid, true);
    PlayerTextDrawHide(playerid, pL_Loading[playerid][pL_TD]);
    HidePlayerProgressBar(playerid, pL_Loading[playerid][pL_Bar]);
   
    pL_Loading[playerid][pL_Value] = 0;
	Audio_Stop(playerid, handle[playerid]);
    return 1;
}
 
forward Loading_TD(playerid);
public Loading_TD(playerid)
{
    new pL_string[20], pL_number = random(14);
 
    if(pL_number == 0) pL_string = "loadsc1:loadsc1";
    else format(pL_string, 20, "loadsc%d:loadsc%d", pL_number, pL_number);
   
    return PlayerTextDrawSetString(playerid, pL_Loading[playerid][pL_TD], pL_string);
}
 
forward Loading_Bar(playerid);
public Loading_Bar(playerid)
{
    if(pL_Loading[playerid][pL_Value] >= pL_Loading[playerid][pL_Max])
    {
        HidePlayerLoading(playerid);
    }
    else
    {
        pL_Loading[playerid][pL_Value] += 0.06;
        SetPlayerProgressBarValue(playerid, pL_Loading[playerid][pL_Bar], pL_Loading[playerid][pL_Value]);
    }
    return 1;
}


#if defined _ALS_OnGameModeInit
	#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif
#define OnGameModeInit pL_Load_OnGameModeInit
#if defined pL_Load_OnGameModeInit
	forward pL_Load_OnGameModeInit();
#endif

#if defined _ALS_OnPlayerConnect
    #undef OnPlayerConnect
#else
    #define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect pL_Load_OnPlayerConnect
#if defined pL_Load_OnPlayerConnect
    forward pL_Load_OnPlayerConnect(playerid);
#endif
