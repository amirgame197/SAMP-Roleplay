#if defined _FIX_PutPlayerInVeh_included
    #endinput
#endif
#define _FIX_PutPlayerInVeh_included

stock PPIV___PutPlayerInVehicle(playerid, vehicleid, seatid)
{
    if(!PutPlayerInVehicle(playerid, vehicleid, seatid)) return 0;
    SetPVarInt(playerid, !"car_state_id", vehicleid);
    if(IsPlayerInAnyVehicle(playerid))
    {
        static Float:x, Float:y, Float:z;

        GetVehiclePos(vehicleid, x, y, z);
        SetPlayerPos(playerid, x, y, z);

        return SetTimerEx("PPIV_TIMER___PutPlayerInVehicle", 10, false, "iii", playerid, vehicleid, seatid);
    }
    else return PutPlayerInVehicle(playerid, vehicleid, seatid);
}

#if defined _ALS_PutPlayerInVehicle
    #undef PutPlayerInVehicle
#else
    #define _ALS_PutPlayerInVehicle
#endif
#define PutPlayerInVehicle PPIV___PutPlayerInVehicle

forward PPIV_TIMER___PutPlayerInVehicle(playerid, vehicleid, seatid);
public PPIV_TIMER___PutPlayerInVehicle(playerid, vehicleid, seatid)
{
    return PutPlayerInVehicle(playerid, vehicleid, seatid);
}