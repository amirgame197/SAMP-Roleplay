/*------------------------------------------------------------------------------
	AntiCheat на Здоровье/Health
	AntiCheat на Броню/Armour
	AntiCheat на ГодМод/GodMode
	AntiCheat на NOP SetPlayerHealth
	AntiCheat на NOP SetPlayerArmour
	AntiCheat на Оружие/Weapon
	AntiCheat на Патроны/Ammo
	AntiCheat на Бесконечные патроны без перезарядки/Infinite ammo without reloading
	AntiCheat на Быстрая стрельба/Rapid fire (также +С Bug)
	AntiCheat на Увеличитель урона/Magnifier damage
	AntiCheat на Киллер/Killer
	AntiCheat на СпидХак/SpeedHack(транспорт)
	AntiCheat на Pizdorvanka/Пиздорванка(транспорт)
	AntiCheat на Каршот/Carshot(транспорт)
	AntiCheat на Починка транспорта/Repair of transport
	AntiCheat на Тюнинг/Tune
	AntiCheat на Цвет транспорта/Color transport
	AntiCheat на Покрасочная работа/The painting work
	AntiCheat на АирБрейк/AirBreak(пешка)
	AntiCheat на Телепорт/Teleport(пешка)
	AntiCheat на КоордМастер/CoordMaster(пешка)
	AntiCheat на АирБрейк/AirBreak(транспорт)
	AntiCheat на Телепорт/Teleport(транспорт)
	AntiCheat на КоордМастер/CoordMaster(транспорт)
	AntiCheat на Автодрайвер,Телепорт в транспорт,Супер пушка,Лаггер*Солнце,Торнадо*Магнит,Спавнер*Граббер,Змейка*Антигравитация,Управление другим транспортом
	AntiCheat на Бог автомобилей/God of cars
	AntiCheat на Флуд убийствами,смертями/Flood Death/Spawn
	AntiCheat на Телепорт транспорта/Teleport transport
	AntiCheat на Хэнкок/Hancock(пешка)
	AntiCheat на ФлайХак/FlyHack(пешка)
	AntiCheat на ФастХак/FastWalk(пешка)
	AntiCheat на Фугга/Fugga(пешка)
	AntiCheat на Неведимку/Invisible

--------------------------------------------------------------------------------

Установка:

1) JC_AntiCheat.amx закинуть в папку filterscripts и прописать в server.cfg
2) В server.cfg прописать bind ИП
2) Инклуд JC_AntiCheat.inc закинуть в папку pawno/include и прописать его в моде:
#include <JC_AntiCheat>
3) При успешной авторизации/регистрации или OnPlayerSpawn прописать
SetPVarInt(playerid,"Q_uploaded_time",GetTickCount() + 1000);
* 1000 - время игнора в мс, 1000мс - 1 секунда
4) Если при авторизации/регистрации античит ложно реагирует,найдите отвечающий за него паблик наказания и пропишите в начале:
if(GetPVarInt(playerid,"Q_uploaded_time") > GetTickCount())return 1;

------------------------------------------------------------------------------*/
#define Q_Kick(%0) SetTimerEx("Q_Kick_", 300, false, "d", %0)
forward Q_Kick_(playerid);
public Q_Kick_(playerid)
{
	Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
#define SetPlayerHealth Q_SetPlayerHealth
#define SetPlayerArmour Q_SetPlayerArmour
#define GivePlayerWeapon Q_GivePlayerWeapon
#define ResetPlayerWeapons Q_ResetPlayerWeapons
#define SetPlayerAmmo Q_SetPlayerAmmo
#define SetPlayerArmedWeapon Q_SetPlayerArmedWeapon
#define AddPlayerClass Q_AddPlayerClass
#define AddPlayerClassEx Q_AddPlayerClassEx
#define SetSpawnInfo Q_SetSpawnInfo
#define SetPlayerPos Q_SetPlayerPos
#define SetVehiclePos Q_SetVehiclePos
#define SpawnPlayer Q_SpawnPlayer
#define PutPlayerInVehicle Q_PutPlayerInVehicle
#define SetVehicleHealth Q_SetVehicleHealth
#define RepairVehicle Q_RepairVehicle
#define ChangeVehicleColor Q_ChangeVehicleColor
#define ChangeVehiclePaintjob Q_ChangeVehiclePaintjob
#define AddStaticVehicle Q_AddStaticVehicle
#define AddStaticVehicleEx Q_AddStaticVehicleEx
#define CreateVehicle Q_CreateVehicle
#define DestroyVehicle Q_DestroyVehicle
#define AddVehicleComponent Q_AddVehicleComponent
#define RemoveVehicleComponent Q_RemoveVehicleComponent
#define TogglePlayerSpectating Q_TogglePlayerSpectating
/*----------------------------------------------------------------------------*/
stock Q_SetPlayerHealth(playerid,Float:health)return CallRemoteFunction("Q_SetPlayerHealth","df",playerid,Float:health);
stock Q_SetPlayerArmour(playerid,Float:armour)return CallRemoteFunction("Q_SetPlayerArmour","df",playerid,Float:armour);
stock Q_GivePlayerWeapon(playerid,weaponid,ammo)return CallRemoteFunction("Q_GivePlayerWeapon","ddd",playerid,weaponid,ammo);
stock Q_ResetPlayerWeapons(playerid)return CallRemoteFunction("Q_ResetPlayerWeapons","d",playerid);
stock Q_SetPlayerAmmo(playerid,weaponid,ammo)return CallRemoteFunction("Q_SetPlayerAmmo","ddd",playerid,weaponid,ammo);
stock Q_SetPlayerArmedWeapon(playerid,weaponid)return CallRemoteFunction("Q_SetPlayerArmedWeapon","dd",playerid,weaponid);
stock Q_AddPlayerClass(skin,Float:x,Float:y,Float:z,Float:Angle,weapon1,weapon1_ammo,weapon2,weapon2_ammo,weapon3,weapon3_ammo)return CallRemoteFunction("Q_AddPlayerClass","dffffdddddd",skin,Float:x,Float:y,Float:z,Float:Angle,weapon1,weapon1_ammo,weapon2,weapon2_ammo,weapon3,weapon3_ammo);
stock Q_AddPlayerClassEx(teamid,skin,Float:x,Float:y,Float:z,Float:Angle,weapon1,weapon1_ammo,weapon2,weapon2_ammo,weapon3,weapon3_ammo)return CallRemoteFunction("Q_AddPlayerClassEx","ddffffdddddd",teamid,skin,Float:x,Float:y,Float:z,Float:Angle,weapon1,weapon1_ammo,weapon2,weapon2_ammo,weapon3,weapon3_ammo);
stock Q_SetSpawnInfo(playerid,team,skin,Float:x,Float:y,Float:z,Float:Angle,weapon1,weapon1_ammo,weapon2,weapon2_ammo,weapon3,weapon3_ammo)return CallRemoteFunction("Q_SetSpawnInfo","dddffffdddddd",playerid,team,skin,Float:x,Float:y,Float:z,Float:Angle,weapon1,weapon1_ammo,weapon2,weapon2_ammo,weapon3,weapon3_ammo);
stock Q_SetPlayerPos(playerid,Float:x,Float:y,Float:z)return CallRemoteFunction("Q_SetPlayerPos","dfff",playerid,Float:x,Float:y,Float:z);
stock Q_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z)return CallRemoteFunction("Q_SetVehiclePos","dfff",vehicleid,Float:x,Float:y,Float:z);
stock Q_SpawnPlayer(playerid)return CallRemoteFunction("Q_SpawnPlayer","d",playerid);
stock Q_PutPlayerInVehicle(playerid,vehicleid,seatid)return CallRemoteFunction("Q_PutPlayerInVehicle","ddd",playerid,vehicleid,seatid);
stock Q_SetVehicleHealth(vehicleid,Float:health)return CallRemoteFunction("Q_SetVehicleHealth","df",vehicleid,Float:health);
stock Q_RepairVehicle(vehicleid)return CallRemoteFunction("Q_RepairVehicle","d",vehicleid);
stock Q_AddStaticVehicle(modelid,Float:spawn_x,Float:spawn_y,Float:spawn_z,Float:z_angle,color1,color2)return CallRemoteFunction("Q_AddStaticVehicle","dffffdd",modelid,Float:spawn_x,Float:spawn_y,Float:spawn_z,Float:z_angle,color1,color2);
stock Q_AddStaticVehicleEx(modelid,Float:spawn_x,Float:spawn_y,Float:spawn_z,Float:z_angle,color1,color2,respawn_delay)return CallRemoteFunction("Q_AddStaticVehicleEx","dffffddd",modelid,Float:spawn_x,Float:spawn_y,Float:spawn_z,Float:z_angle,color1,color2,respawn_delay);
stock Q_CreateVehicle(modelid,Float:x,Float:y,Float:z,Float:angle,color1,color2,respawn_delay)return CallRemoteFunction("Q_CreateVehicle", "dffffddd",modelid,Float:x,Float:y,Float:z,Float:angle,color1,color2,respawn_delay);
stock Q_DestroyVehicle(currentveh)return CallRemoteFunction("Q_DestroyVehicle","d",currentveh);
stock Q_AddVehicleComponent(vehicleid,componentid)return CallRemoteFunction("Q_AddVehicleComponent","dd",vehicleid,componentid);
stock Q_RemoveVehicleComponent(vehicleid,componentid)return CallRemoteFunction("Q_RemoveVehicleComponent","dd",vehicleid,componentid);
stock Q_ChangeVehicleColor(vehicleid,color1,color2)return CallRemoteFunction("Q_ChangeVehicleColor","ddd",vehicleid,color1,color2);
stock Q_ChangeVehiclePaintjob(vehicleid,paintjobid)return CallRemoteFunction("Q_ChangeVehiclePaintjob","dd",vehicleid,paintjobid);
stock Q_TogglePlayerSpectating(playerid, spec)return CallRemoteFunction("Q_TogglePlayerSpectating","dd",playerid, spec);
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Здоровье/Health
*/
forward _HealthCheat(playerid,Float:health);/* playerid - ид читера | health - сколько было здоровья */
public _HealthCheat(playerid,Float:health)
{
	if(GetPVarInt(playerid,"Q_uploaded_time") > GetTickCount())return 1;
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #001");
    SetPlayerHealth(playerid,health);/* Задаём старый уровень здоровья игрока */
    //Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Броню/Armour
*/
forward _ArmourCheat(playerid,Float:armour);/* playerid - ид читера | armour - сколько было брони */
public _ArmourCheat(playerid,Float:armour)
{
	if(GetPVarInt(playerid,"Q_uploaded_time") > GetTickCount())return 1;
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #002");
    SetPlayerArmour(playerid,armour);/* Задаём старый уровень брони игрока */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на ГодМод/GodMode
	AntiCheat на NOP SetPlayerHealth
	AntiCheat на NOP SetPlayerArmour
*/
forward _GodModeCheat(playerid,number);/* playerid - ид читера */
public _GodModeCheat(playerid,number)
{
	switch(number)
	{
    	case 1:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #003");
		case 2:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #004");
	}
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Оружие/Weapon
*/
forward _WeaponCheat(playerid,weaponid);/* playerid - ид читера | weaponid - ид оружия */
public _WeaponCheat(playerid,weaponid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #005");
    ResetPlayerWeapons(playerid);/*Отбираем всё оружие у игрока*/
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Патроны/Ammo
*/
forward _AmmoCheat(playerid,weaponid);/* playerid - ид читера | weaponid - ид оружия */
public _AmmoCheat(playerid,weaponid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #006");
    ResetPlayerWeapons(playerid);/*Отбираем всё оружие у игрока*/
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Бесконечные патроны без перезарядки/Infinite ammo without reloading
*/
forward _AmmoReloadingCheat(playerid,weaponid);/* playerid - ид читера | weaponid - ид оружия */
public _AmmoReloadingCheat(playerid,weaponid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #007");
    ResetPlayerWeapons(playerid);/*Отбираем всё оружие у игрока*/
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Быстрая стрельба/Rapid fire (также +С Bug)
*/
forward _RapidFireCheat(playerid,weaponid);/* playerid - ид читера | weaponid - ид оружия */
public _RapidFireCheat(playerid,weaponid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #008");
    ResetPlayerWeapons(playerid);/*Отбираем всё оружие у игрока*/
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Увеличитель урона/Magnifier damage
*/
forward _MagnifierDamagerCheat(playerid,weaponid);/* playerid - ид читера | weaponid - ид оружия */
public _MagnifierDamagerCheat(playerid,weaponid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #009");
    ResetPlayerWeapons(playerid);/*Отбираем всё оружие у игрока*/
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Киллер/Killer
*/
forward _KillerCheat(playerid);/* playerid - ид читера */
public _KillerCheat(playerid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #010");
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на СпидХак/SpeedHack(транспорт)
	AntiCheat на Pizdorvanka/Пиздорванка(Транспорт)
	AntiCheat на Каршот/Carshot(транспорт)
*/
forward _SpeedVehCheat(playerid,number);/* playerid - ид читера | number - номер античита */
public _SpeedVehCheat(playerid,number)
{
    switch(number)
	{
	    case 1:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #011");
	    case 2:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #012");
	    case 3:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #013");
	    case 4:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #014");
	}
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Починка транспорта/Repair of transport
*/
forward _VehHealthCheat(playerid,vehicleid,Float:hp);/* playerid - ид читера | vehicleid - ид транспорта | hp - старый уровень здоровья транспорта */
public _VehHealthCheat(playerid,vehicleid,Float:hp)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #015");
    SetVehicleHealth(vehicleid,hp);/* Устанавиваем старый уровень здоровья транспорта */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Тюнинг/Tune
*/
forward _VehTunCheat(playerid,vehicleid,component);/* playerid - ид читера | vehicleid - ид транспорта | component - начитеренный компонент */
public _VehTunCheat(playerid,vehicleid,component)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #016");
    RemoveVehicleComponent(vehicleid,component);/* Удаляем компонент с транспорта */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Цвет транспорта/Color transport
*/
forward _ResprayVehCheat(playerid,vehicleid,color1,color2);/* playerid - ид читера | vehicleid - ид транспорта | color1 - старый первый цвет транспорта | color2 - старый второй цвет транспорта */
public _ResprayVehCheat(playerid,vehicleid,color1,color2)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #017");
    ChangeVehicleColor(vehicleid,color1,color2);/* Изменяем цвет транспорта на старый */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Покрасочная работа/The painting work
*/
forward _PaintjobVehCheat(playerid,vehicleid,paintjobid);/* playerid - ид читера | vehicleid - ид транспорта | paintjobid - старая покрасочная работа */
public _PaintjobVehCheat(playerid,vehicleid,paintjobid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #018");
	ChangeVehiclePaintjob(vehicleid,paintjobid);/* Изменяем покрасочную работу транспорта на старый */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
 	AntiCheat на АирБрейк/AirBreak(пешка)
   	AntiCheat на Телепорт/Teleport(пешка)
	AntiCheat на КоордМастер/CoordMaster(пешка)
*/
forward _PlayerPosCheat(playerid,Float:x,Float:y,Float:z);/* playerid - ид читера | x,y,z старая позиция игрока */
public _PlayerPosCheat(playerid,Float:x,Float:y,Float:z)
{
	if(GetPVarInt(playerid,"Q_uploaded_time") > GetTickCount())return 1;
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #019");
 	SetPlayerPos(playerid,Float:x,Float:y,Float:z);/* Устанавливаем старую позицию игрока */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
 	AntiCheat на АирБрейк/AirBreak(транспорт)
   	AntiCheat на Телепорт/Teleport(транспорт)
	AntiCheat на КоордМастер/CoordMaster(транспорт)
*/
forward _VehPosCheat(playerid,Float:x,Float:y,Float:z);/* playerid - ид читера | x,y,z старая позиция игрока */
public _VehPosCheat(playerid,Float:x,Float:y,Float:z)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #020");
    RemovePlayerFromVehicle(playerid);/* Выбрасываем игрока с транспорта */
 	SetPlayerPos(playerid,Float:x,Float:y,Float:z);/* Устанавливаем старую позицию игрока */
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Автодрайвер,Телепорт в транспорт,Супер пушка,Лаггер*Солнце,Торнадо*Магнит,Спавнер*Граббер,Змейка*Антигравитация,Управление другим транспортом
*/
forward _VehTeleportCheat(playerid);/* playerid - ид читера  */
public _VehTeleportCheat(playerid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #021");
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Бог автомобилей/God of cars
*/
forward _Veh_GodOfCar(playerid,number);/* playerid - ид читера | number - номер античита */
public _Veh_GodOfCar(playerid,number)
{
    switch(number)
	{
	    case 1:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #022");
	    case 2:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #023");
 	}
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Флуд убийствами,смертями/Flood Death/Spawn
*/
forward _FloodDeathSpawn(playerid,number);/* playerid - ид читера | number - номер античита */
public _FloodDeathSpawn(playerid,number)
{
    switch(number)
	{
	    case 1:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #024");
	    case 2:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #025");
 	}
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Хэнкок/Hancock(пешка)
	AntiCheat на ФлайХак/FlyHack(пешка)
	AntiCheat на ФастХак/FastWalk(пешка)
	AntiCheat на Фугга/Fugga(пешка)
*/
forward _FlyingAnim(playerid,number);/* playerid - ид читера | number - номер античита */
public _FlyingAnim(playerid,number)
{
    switch(number)
	{
	    case 1:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #026");
	    case 2:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #027");
	    case 3:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #028");
	    case 4:SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #029");
 	}
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
/*
	AntiCheat на Неведимку/Invisible
*/
forward _Spect(playerid);/* playerid - ид читера  */
public _Spect(playerid)
{
    SendClientMessage(playerid, 0xCC0000FF, "[G-AC BETA]: Вы кикнуты по подозрению в читерстве! #030");
    Q_Kick(playerid);
	return 1;
}
/*----------------------------------------------------------------------------*/
