#include <a_samp>

stock ResetWeapons(playerid)
{

	SetPVarInt(playerid, "Brass Knuckles", 0);
	SetPVarInt(playerid, "Golf Club", 0);
	SetPVarInt(playerid, "Nightstick", 0);
	SetPVarInt(playerid, "Knife", 0);
	SetPVarInt(playerid, "Baseball Bat", 0);
	SetPVarInt(playerid, "Shovel", 0);
	SetPVarInt(playerid, "Pool Cue", 0);
	SetPVarInt(playerid, "Shovel", 0);
	SetPVarInt(playerid, "Katana", 0);
	SetPVarInt(playerid, "Chainsaw", 0);
	SetPVarInt(playerid, "Purple Dildo", 0);
	SetPVarInt(playerid, "Dildo", 0);
	SetPVarInt(playerid, "Vibrator", 0);
	SetPVarInt(playerid, "Silver Vibrator", 0);
	SetPVarInt(playerid, "Flowers", 0);
	SetPVarInt(playerid, "Cane", 0);
	SetPVarInt(playerid, "Tear Gas", 0);
	SetPVarInt(playerid, "RPG", 0);
	SetPVarInt(playerid, "HS Rocket", 0);
	SetPVarInt(playerid, "Flamethrower", 0);
	SetPVarInt(playerid, "Satchel Charge", 0);
	SetPVarInt(playerid, "Spraycan", 0);
	SetPVarInt(playerid, "Fire Extinguisher", 0);
	SetPVarInt(playerid, "Camera", 0);
	SetPVarInt(playerid, "Night Vis Goggles", 0);
	SetPVarInt(playerid, "Thermal Goggles", 0);
 	SetPVarInt(playerid, "Grenade", 0);
	SetPVarInt(playerid, "Molotov Cocktail", 0);
	SetPVarInt(playerid, "9mm", 0);
	SetPVarInt(playerid, "Silenced 9mm", 0);
	SetPVarInt(playerid, "Desert Eagle", 0);
	SetPVarInt(playerid, "Shotgun", 0);
	SetPVarInt(playerid, "Sawn-off Shotgun", 0);
	SetPVarInt(playerid, "Combat Shotgun", 0);
	SetPVarInt(playerid, "Micro SMG/Uzi", 0);
	SetPVarInt(playerid, "MP5", 0);
	SetPVarInt(playerid, "AK-47", 0);
	SetPVarInt(playerid, "M4", 0);
	SetPVarInt(playerid, "Tec-9", 0);
	SetPVarInt(playerid, "Country Rifle", 0);
	SetPVarInt(playerid, "Sniper Rifle", 0);
	ResetPlayerWeapons(playerid);
}

stock GivePlayerServerWeapon(playerid, weapid, ammo)
{
	new gunname[32];
	GivePlayerWeapon(playerid, weapid, ammo);
	GetWeaponName(weapid, gunname, sizeof(gunname));
	SetPVarInt(playerid, gunname, ammo);
}