#include <a_samp>

#define _USE_FIXES

#if defined _USE_FIXES
#define FILTERSCRIPT
#define FIX_FILTERSCRIPT             (1)
#define FIX_OnPlayerConnect          (1)
#include <fixes>
#endif

public OnPlayerConnect(playerid)
{
	PlayAudioStreamForPlayer(playerid, "https://test.com/%samp.mp3");
	StopAudioStreamForPlayer(playerid);
	return 1;
}