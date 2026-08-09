/*
* MTA maploader
* By IPrototypeI
*/

/*
* Native
* native LoadMap(path[]);
* native RestartRace();
* native StartRace(time);
*/
#if !defined _sscanf2_included
    #include <sscanf2>
#endif

#if !defined _streamer_included
    #include <streamer>
#endif

enum mapData {
	pMmodelid,
	pMcolorID,
	pMtype[30],
	Float:pMX,
	Float:pMY,
	Float:pMZ,
	Float:pMRX,
	Float:pMRY,
	Float:pMRZ,
	Float:pNMRZ
};
new mapValues[mapData];

native IsValidVehicle(vehicleid);
forward OnPlayerFinishRace(playerid);

static const VehicleNames[212][20 char] = {
	{!"Landstalker"},{!"Bravura"},{!"Buffalo"},{!"Linerunner"},{!"Perrenial"},{!"Sentinel"},{!"Dumper"},
	{!"Firetruck"},{!"Trashmaster"},{!"Stretch"},{!"Manana"},{!"Infernus"},{!"Voodoo"},{!"Pony"},{!"Mule"},
	{!"Cheetah"},{!"Ambulance"},{!"Leviathan"},{!"Moonbeam"},{!"Esperanto"},{!"Taxi"},{!"Washington"},
	{!"Bobcat"},{!"Mr Whoopee"},{!"BF Injection"},{!"Hunter"},{!"Premier"},{!"Enforcer"},{!"Securicar"},
	{!"Banshee"},{!"Predator"},{!"Bus"},{!"Rhino"},{!"Barracks"},{!"Hotknife"},{!"Trailer 1"},{!"Previon"},
	{!"Coach"},{!"Cabbie"},{!"Stallion"},{!"Rumpo"},{!"RC Bandit"},{!"Romero"},{!"Packer"},{!"Monster"},
	{!"Admiral"},{!"Squalo"},{!"Seasparrow"},{!"Pizzaboy"},{!"Tram"},{!"Trailer 2"},{!"Turismo"},
	{!"Speeder"},{!"Reefer"},{!"Tropic"},{!"Flatbed"},{!"Yankee"},{!"Caddy"},{!"Solair"},{!"Berkley's RC Van"},
	{!"Skimmer"},{!"PCJ-600"},{!"Faggio"},{!"Freeway"},{!"RC Baron"},{!"RC Raider"},{!"Glendale"},{!"Oceanic"},
	{!"Sanchez"},{!"Sparrow"},{!"Patriot"},{!"Quad"},{!"Coastguard"},{!"Dinghy"},{!"Hermes"},{!"Sabre"},
	{!"Rustler"},{!"ZR-350"},{!"Walton"},{!"Regina"},{!"Comet"},{!"BMX"},{!"Burrito"},{!"Camper"},{!"Marquis"},
	{!"Baggage"},{!"Dozer"},{!"Maverick"},{!"News Chopper"},{!"Rancher"},{!"FBI Rancher"},{!"Virgo"},{!"Greenwood"},
	{!"Jetmax"},{!"Hotring"},{!"Sandking"},{!"Blista Compact"},{!"Police Maverick"},{!"Boxville"},{!"Benson"},
	{!"Mesa"},{!"RC Goblin"},{!"Hotring Racer A"},{!"Hotring Racer B"},{!"Bloodring Banger"},{!"Rancher"},
	{!"Super GT"},{!"Elegant"},{!"Journey"},{!"Bike"},{!"Mountain Bike"},{!"Beagle"},{!"Cropdust"},{!"Stunt"},
	{!"Tanker"}, {!"Roadtrain"},{!"Nebula"},{!"Majestic"},{!"Buccaneer"},{!"Shamal"},{!"Hydra"},{!"FCR-900"},
	{!"NRG-500"},{!"HPV1000"},{!"Cement Truck"},{!"Tow Truck"},{!"Fortune"},{!"Cadrona"},{!"FBI Truck"},
	{!"Willard"},{!"Forklift"},{!"Tractor"},{!"Combine"},{!"Feltzer"},{!"Remington"},{!"Slamvan"},
	{!"Blade"},{!"Freight"},{!"Streak"},{!"Vortex"},{!"Vincent"},{!"Bullet"},{!"Clover"},{!"Sadler"},
	{!"Firetruck LA"},{!"Hustler"},{!"Intruder"},{!"Primo"},{!"Cargobob"},{!"Tampa"},{!"Sunrise"},{!"Merit"},
	{!"Utility"},{!"Nevada"},{!"Yosemite"},{!"Windsor"},{!"Monster A"},{!"Monster B"},{!"Uranus"},{!"Jester"},
	{!"Sultan"},{!"Stratum"},{!"Elegy"},{!"Raindance"},{!"RC Tiger"},{!"Flash"},{!"Tahoma"},{!"Savanna"},
	{!"Bandito"},{!"Freight Flat"},{!"Streak Carriage"},{!"Kart"},{!"Mower"},{!"Duneride"},{!"Sweeper"},
	{!"Broadway"},{!"Tornado"},{!"AT-400"},{!"DFT-30"},{!"Huntley"},{!"Stafford"},{!"BF-400"},{!"Newsvan"},
	{!"Tug"},{!"Trailer 3"},{!"Emperor"},{!"Wayfarer"},{!"Euros"},{!"Hotdog"},{!"Club"},{!"Freight Carriage"},
	{!"Trailer 3"},{!"Andromada"},{!"Dodo"},{!"RC Cam"},{!"Launch"},{!"Police Car (LSPD)"},{!"Police Car (SFPD)"},
	{!"Police Car (LVPD)"},{!"Police Ranger"},{!"Picador"},{!"S.W.A.T. Van"},{!"Alpha"},{!"Phoenix"},{!"Glendale"},
	{!"Sadler"},{!"Luggage Trailer A"},{!"Luggage Trailer B"},{!"Stair Trailer"},{!"Boxville"},{!"Farm Plow"},
	{!"Utility Trailer"}
};


#if !defined _ALS_
    forward public _ALS_();
    _ALS_()<_ALS_:unhooked>{}
    _ALS_()<_ALS_:hooked>{}
    _ALS_()<>{}
#endif

public OnGameModeInit()
{
    state _ALS_:hooked;
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT,1000);
	Streamer_SetTickRate(25);
    return H_OnGameModeInit();
}
forward H_OnGameModeInit();
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
public H_OnGameModeInit() <_ALS_:unhooked> return 1;
public H_OnGameModeInit() <> return 1;
#define OnGameModeInit(%0) H_OnGameModeInit(%0)<_ALS_:hooked>
new mapN3[156];

public OnPlayerEnterDynamicArea(playerid, areaid)
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return 0;
    state _ALS_:hooked;
	new kind = Streamer_GetIntData(STREAMER_TYPE_AREA, areaid, E_STREAMER_EXTRA_ID);
	switch(kind){
		case 1:AddVehicleComponent(GetPlayerVehicleID(playerid), 1010);
		case 2:RepairVehicle(GetPlayerVehicleID(playerid));
		default: {
			new vehicle = GetPlayerVehicleID(playerid);
			if(GetVehicleModel(vehicle) != kind && kind != 0){
				new Float:vData[7];
				GetVehiclePos(vehicle,vData[0],vData[1],vData[2]);
				GetVehicleZAngle(vehicle,vData[3]);
				GetVehicleVelocity(vehicle,vData[4],vData[5],vData[6]);
				DestroyVehicle(vehicle);
				vehicle = CreateVehicle(kind,vData[0],vData[1],vData[2],vData[3],random(255),random(255),-1);
				PutPlayerInVehicle(playerid,vehicle,0);
				SetVehicleVelocity(vehicle,vData[4],vData[5],vData[6]);
				if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 425)
				{
					SetVehicleVelocity(vehicle,vData[4],vData[5],vData[6]+2.0);
					OnPlayerFinishRace(playerid);
				}
			}
		}
	}
    return H_OnPlayerEnterDynamicArea(playerid, areaid);
}
forward H_OnPlayerEnterDynamicArea(playerid, areaid);
#if defined _ALS_OnPlayerEnterDynamicArea
    #undef OnPlayerEnterDynamicArea
#else
    #define _ALS_OnPlayerEnterDynamicArea
#endif
public H_OnPlayerEnterDynamicArea(playerid, areaid) <_ALS_:unhooked> return 1;
public H_OnPlayerEnterDynamicArea(playerid, areaid) <> return 1;
#define OnPlayerEnterDynamicArea(%0,%1) H_OnPlayerEnterDynamicArea(%0,%1)<_ALS_:hooked>

stock LoadMap(path[], Float:offZ=0.0){
	if(UnloadMap()){
		new loadstr[400],count;
		if(!fexist(path))return 0;
		new File:fhandle = fopen(path,io_read);
		while(fread(fhandle, loadstr)){
			if(!loadstr[0])continue;
			if(!sscanf(loadstr, "p<\">'object''model='d'posX='f'posY='f'posZ='f'rotX='f'rotY='f'rotZ='f",mapValues[pMmodelid], mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ])){
				CreateDynamicObject(mapValues[pMmodelid], mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ],-1,-1,-1,300.0,300.0);
			}else if(!sscanf(loadstr, "p<\">'racepickup''type='s[30]'vehicle='d'posX='f'posY='f'posZ='f'rotX='f'rotY='f'rotZ='f",mapValues[pMtype],mapValues[pMmodelid], mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ])){
				if(strcmp(mapValues[pMtype],"nitro") == 0)CreateRacePickup(mapValues[pMX], mapValues[pMY], mapValues[pMZ],1);
				else if(strcmp(mapValues[pMtype],"repair") == 0)CreateRacePickup(mapValues[pMX], mapValues[pMY], mapValues[pMZ],2);
				else if(strcmp(mapValues[pMtype],"vehiclechange") == 0)CreateRacePickup(mapValues[pMX], mapValues[pMY], mapValues[pMZ],3,mapValues[pMmodelid]);			
			}else if(!sscanf(loadstr, "p<\">'spawnpoint''vehicle='d'posX='f'posY='f'posZ='f'rotX='f'rotY='f'rotZ='f",mapValues[pMmodelid], mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ])){
				++count;
				CreateRaceSpawn(mapValues[pMmodelid], mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRZ],count);
			}else if(!sscanf(loadstr, "p<\">'marker''color='s[10]'posX='f'posY='f'posZ='f",mapValues[pMtype],mapValues[pMX], mapValues[pMY], mapValues[pMZ])){
				mapValues[pMmodelid] = CreateDynamicObject(1559,mapValues[pMX], mapValues[pMY], mapValues[pMZ],0.0,0.0,0.0,-1,-1,-1,400.0,400.0);
				mapValues[pMcolorID] = ConvertStringToHex(mapValues[pMtype]);
				SetDynamicObjectMaterial(mapValues[pMmodelid], 0, 1231, "dynsigns", "white64", mapValues[pMcolorID]);		
			}else if(!sscanf(loadstr, "p<\">'speedboost''posX='f'posY='f'posZ='f'veloX='f'veloY='f'veloZ='f", mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ])){
				CreateRacePickup(mapValues[pMX], mapValues[pMY], mapValues[pMZ]+offZ,4, 0 ,mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ]);
			} else if(!sscanf(loadstr, "p<\">'teleport''posX='f'posY='f'posZ='f'nposX='f'nposY='f'nposZ='f'rotX='f'rotY='f'rotZ='f",mapValues[pMX], mapValues[pMY], mapValues[pMZ], mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ],mapValues[pNMRZ],mapValues[pNMRZ],mapValues[pNMRZ])){
				CreateRacePickup(mapValues[pMX], mapValues[pMY], mapValues[pMZ]+offZ,5 , 0 ,mapValues[pMRX], mapValues[pMRY], mapValues[pMRZ]+offZ,mapValues[pNMRZ]);
			}
		}
		fclose(fhandle);
		if(!count) return 0;
		LoadFromMeta(mapN3);
	}
	return 1;
}

stock static LoadFromMeta(path[]) {
	if(!fexist(path))return 0;
	new File:fhandle = fopen(path,io_read),loadstr[400];
	while(fread(fhandle, loadstr)){
		if(strfind(loadstr,"#weather") != -1){
			strmid(loadstr, loadstr, strfind(loadstr,"[")+1, strfind(loadstr,"]"));
			SetWeather(strval(loadstr));
			break;
		}
		if(strfind(loadstr,"#time") != -1){
			strmid(loadstr, loadstr, strfind(loadstr,"[")+1, strfind(loadstr,"]"));
			SetWorldTime(strval(loadstr));
			break;
		}
	}
	fclose(fhandle);
	return 1;
}

stock CreateRacePickup(Float:X, Float:Y, Float:Z, Kind, vehicleid = 0, Float:nX = 0.0, Float:nY = 0.0, Float:nZ = 0.0, Float:nRZ = 0.0) {
	new savestr[40],id;
	switch(Kind){
		case 1:{
			CreateDynamicObject(1010, X, Y, Z, 0.0, 0.0, 0.0,-1, -1, -1, 400.0, 400.0);
			Streamer_SetIntData(STREAMER_TYPE_AREA, CreateDynamicSphere(X, Y, Z, 8.0), E_STREAMER_EXTRA_ID, 1);
			CreateDynamic3DTextLabel("{bdf228}[ {ffffff}Nitro {bdf228}]", -1, X, Y, Z, 300.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 300.0);
		}
		case 2:{
			CreateDynamicObject(3096, X, Y, Z, 0.0, 0.0, 0.0,-1, -1, -1, 400.0, 400.0);
			Streamer_SetIntData(STREAMER_TYPE_AREA, CreateDynamicSphere(X, Y, Z, 8.0), E_STREAMER_EXTRA_ID, 2);
			CreateDynamic3DTextLabel("{bdf228}[ {ffffff}Repair {bdf228}]", -1, X, Y, Z, 300.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 300.0);
		}
		case 3:{
			CreateDynamicObject(1559, X, Y, Z, 0.0, 0.0, 0.0,-1, -1, -1, 400.0, 400.0);
			Streamer_SetIntData(STREAMER_TYPE_AREA, CreateDynamicSphere(X, Y, Z, 8.0), E_STREAMER_EXTRA_ID, vehicleid);
			new hstr[76];
			format(hstr,sizeof hstr, "{bdf228}[ {ffffff}%s {bdf228}]", GetVehicleName(vehicleid));
			CreateDynamic3DTextLabel(hstr, -1, X, Y, Z, 300.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 300.0);
		}
		case 4:{
			format(savestr,40,"%f|%f|%f",nX,nY,nZ);
			id = CreateDynamicSphere(X, Y, Z, 8.0);
			setproperty(0, "", 1000000+id, savestr);
			CreateDynamicObject(1252, X, Y, Z, 0.0, 0.0, 0.0, 10);
			Streamer_SetIntData(STREAMER_TYPE_AREA, id, E_STREAMER_EXTRA_ID, 4);
			CreateDynamic3DTextLabel("{bdf228}[ {ffffff}Speedboost {bdf228}]", -1, X, Y, Z, 300.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 300.0);
		}
		case 5:{
			format(savestr,40,"%f|%f|%f|%f",nX,nY,nZ,nRZ);
			id = CreateDynamicSphere(X, Y, Z, 8.0);
			setproperty(0, "", 1000000+id, savestr);
			CreateDynamicObject(1318, X, Y, Z, 0.0, 0.0, 0.0,-1, -1, -1, 400.0, 400.0);
			Streamer_SetIntData(STREAMER_TYPE_AREA, id, E_STREAMER_EXTRA_ID, 5);
			CreateDynamic3DTextLabel("{bdf228}[ {ffffff}Teleports {bdf228}]", -1, X, Y, Z+1.5, 300.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 10, -1, -1, -1, 300.0);
		}
	}
	return 1;
}
stock InitializeRace() {
	new pos = 10000 + 1, loadstr[64], vw, mapValues[mapData];
	for(new i; i != MAX_PLAYERS; ++i){
		if(!IsPlayerConnected(i))continue;
		switch(existproperty(0, "", pos)){
			case true:{
				getproperty(0, "", pos, loadstr);
				strunpack(loadstr, loadstr, sizeof(loadstr));
				sscanf(loadstr,"p<|>e<i-i-s[30]fff-f-ff>",mapValues);
				Streamer_UpdateEx(i, mapValues[pMX],mapValues[pMY],mapValues[pMZ], vw, -1);
				mapValues[pMmodelid] = CreateVehicle(mapValues[pMmodelid],mapValues[pMX],mapValues[pMY],mapValues[pMZ],mapValues[pMRZ]+5,random(255),random(255),-1);
				SetVehicleVirtualWorld(mapValues[pMmodelid],vw);
				TogglePlayerControllable(i,false);
				SetPlayerVirtualWorld(i,vw);
				PutPlayerInVehicle(i,mapValues[pMmodelid],0);
				TextDrawShowForPlayer(i, Waiting0);
				TextDrawShowForPlayer(i, Waiting1);
				TextDrawShowForPlayer(i, Waiting2);
				TextDrawShowForPlayer(i, Waiting3);
				TextDrawShowForPlayer(i, Waiting4);
				TextDrawShowForPlayer(i, Waiting5);
			}
			case false:{
				pos = 10000 + 1;
				++vw;
				getproperty(0, "", pos, loadstr);
				strunpack(loadstr, loadstr, sizeof(loadstr));
				sscanf(loadstr,"p<|>e<i-i-s[30]fff-f-ff>",mapValues);
				Streamer_UpdateEx(i, mapValues[pMX],mapValues[pMY],mapValues[pMZ], vw, -1);
				mapValues[pMmodelid] = CreateVehicle(mapValues[pMmodelid],mapValues[pMX],mapValues[pMY],mapValues[pMZ],mapValues[pMRZ]+5,random(255),random(255),-1);
				SetVehicleVirtualWorld(mapValues[pMmodelid],vw);
				TogglePlayerControllable(i,false);
				SetPlayerVirtualWorld(i,vw);
				PutPlayerInVehicle(i,mapValues[pMmodelid],0);
				TextDrawShowForPlayer(i, Waiting0);
				TextDrawShowForPlayer(i, Waiting1);
				TextDrawShowForPlayer(i, Waiting2);
				TextDrawShowForPlayer(i, Waiting3);
				TextDrawShowForPlayer(i, Waiting4);
				TextDrawShowForPlayer(i, Waiting5);				
			}
		}
		++pos;	
	}
	return 1;
}
stock RestartRace() {
	if(RemoveVehicles())StartRace(getproperty(0, "CountdownTime"));
	return 1;
}

stock StartRace(time){
	if(InitializeRace()){
		setproperty(.name = "CountdownTime", .value = time);
		return SetTimerEx("@Countdown",1000,false,"i",time);
	}
	return 1;
}

forward @Countdown(time);
@Countdown(time){
	new str[5];
	valstr(str,time/1000);
	time -= 1000;
	if(!time) {
		for(new i; i != MAX_PLAYERS; ++i)if(IsPlayerConnected(i))PlayerPlaySound(i, 1057, 0.0, 0.0, 0.0),progressMap=false,ServerData[Started] = true, GameTextForPlayer(i, "~b~~h~~h~Go!", 500, 4),TogglePlayerControllable(i,true);
	} else {
		for(new i; i != MAX_PLAYERS; ++i) if(IsPlayerConnected(i))PlayerPlaySound(i, 1056, 0.0, 0.0, 0.0),GameTextForPlayer(i, str, 500, 4);
		return SetTimerEx("@Countdown",1000,false,"i",time);
	}
	return 1;
}
stock static UnloadMap(){
	new i = 10000+1;
	while(existproperty(0, "", i)){
		deleteproperty(0, "", i);
		++i;
	}
	Streamer_DestroyAllItems(STREAMER_TYPE_OBJECT , true);
	RemoveVehicles();
	return 1;
}

stock static ConvertStringToHex(string[],size = sizeof(string)){
	new stringR[10];
	strmid(stringR,string,7,strlen(string));
	strdel(string,7,strlen(string));
	strdel(string,0,1);
	strins(string,"0x",0,size);
	strins(string,stringR,2,size);
	new i, cur=1,res=0;
	for (i=strlen(string);i>0;i--) {
    	if (string[i-1]<58) res=res+cur*(string[i-1]-48); else res=res+cur*(string[i-1]-65+10);
	 	cur=cur*16;
	}
 	return res;
}
stock static GetVehicleName(modelid)
{
    static vehName[30];
    strunpack(vehName, VehicleNames[modelid - 400]);
    return vehName;
}
stock RemoveVehicles(){
	for(new i; i != MAX_VEHICLES; ++i)DestroyVehicle(i);
	return 1;
} 
stock static CreateRaceSpawn(Modelid, Float:X, Float:Y, Float:Z, Float:rZ, count) {
	new savestr[64];
	format(savestr,64,"%d|%f|%f|%f|%f",Modelid,X,Y,Z,rZ);
	setproperty(0, "", 10000+count, savestr);
	return 1;
}