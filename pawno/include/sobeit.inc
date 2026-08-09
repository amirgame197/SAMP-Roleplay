/* SA-MP s0beit detected by Vinpure
*/
forward OnPlayerSobeitDetected(playerid,detected);
forward s0beitdetected(playerid);

new s0beitCheckTimer[MAX_PLAYERS];
stock CheckSobeit(playerid)
{
    TogglePlayerControllable(playerid,false);
	s0beitCheckTimer[playerid] = SetTimerEx("s0beitdetected",5000,0,"i",playerid);
	return 1;
}
public s0beitdetected(playerid)
{
	new Float:aX, Float:aY, Float:aZ;
	GetPlayerCameraFrontVector(playerid, aX, aY, aZ);
	#pragma unused aX
	#pragma unused aY
	if(aZ < -0.7)
	{
    CallLocalFunction("OnPlayerSobeitDetected","ii",playerid,1);
	}
	else
	{
	CallLocalFunction("OnPlayerSobeitDetected","ii",playerid,0);
	}
	TogglePlayerControllable(playerid, true);
	KillTimer(s0beitCheckTimer[playerid]);
 	return 1;
}