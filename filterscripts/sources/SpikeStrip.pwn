#include <a_samp>
#include <SpikeStrip>

strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	new cmd[256];
	new idx;
	cmd = strtok(cmdtext, idx);

	if (strcmp(cmd,"/createstrip",true) == 0)
	{
	    new Float:plocx,Float:plocy,Float:plocz,Float:ploca;
        GetPlayerPos(playerid, plocx, plocy, plocz);
        GetPlayerFacingAngle(playerid,ploca);
        CreateStrip(plocx,plocy,plocz,ploca);
	    return 1;
	}
	else if (strcmp(cmd,"/removestrip",true) == 0)
	{
        DeleteClosestStrip(playerid);
	    return 1;
	}
	else if (strcmp(cmd,"/removeallstrip",true) == 0)
	{
        DeleteAllStrip();
	    return 1;
	}
	
	return 0;
}
