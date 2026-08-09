#include <a_samp>

new MJBZ;


public OnFilterScriptExit()
{
    print("_______________________________________________________");
    print("		Close FilterScript");
    print("		Engine Dialog");
    print("_______________________________________________________");
    return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys == KEY_SPRINT)
    {
        if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	    {
			new carid = GetPlayerVehicleID(playerid);
    		new engine, lights, alarm, doors, bonnet, boot, objective;
    		GetVehicleParamsEx(carid, engine, lights, alarm, doors, bonnet, boot, objective);
            if(engine == 0)
            {
                ShowPlayerDialog(playerid, MJBZ, DIALOG_STYLE_MSGBOX, "", "You can turn the engine on with: {0CC4FF}/en","OK","");
            }
        }
    }
    return 1;
}
public OnFilterScriptInit()
{
    print("_______________________________________________________");
    print("		Load FilterScript");
    print("		Engine Dialog");
    print("_______________________________________________________");
    return 1;
}
