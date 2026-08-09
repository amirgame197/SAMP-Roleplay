#include <a_samp>
#include <core>
#include <float>
#include <time>
#include <file>
#include <utils>
#include <morphinc>
#include <dini>

#define FILTERSCRIPT
#define COLOR_DARKBLUE 0x0000D0FF
#define COLOR_WHITE 0xFFFFFFFF
#define COLOR_LIGHTBLUE 0xBBFFFFFF
#define COLOR_BLACK 0x000000FF
#define COLOR_PURPLE 0xC2A2DAAA
#define COLOR_GROVE 0x00FF00FF
#define STRTOK

forward KeyChanges();
forward PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z);
forward ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5);
forward SafeGivePlayerMoney(plyid, amounttogive);
forward CustomPickups();
forward MetalDetector(playerid);
forward AntiInvasione();

new giocatore[MAX_PLAYERS];
new arbitro[MAX_PLAYERS];
new stuart[MAX_PLAYERS];
new fumogeno[MAX_PLAYERS];
new biglietto[MAX_PLAYERS];
new spettatore[MAX_PLAYERS];
new allenamento[MAX_PLAYERS];
new squadra1[60] = "Team1";
new squadra2[60] = "Team2";
new goal1 = 0;
new goal2 = 0;
new annunciata = 0;
new skin[MAX_PLAYERS];

new palla;
new object1;
new object2;
new object3;
new object4;
new object5;
new object6;
new object7;
new object8;
new object9;
new object10;
new object11;
new object12;
new object13;
new object14;
new object15;
new object16;
new object17;
new object18;
new object19;
new object20;
new object21;
new object22;
new object23;
new object24;
new object25;
new object26;
new object27;
new object28;
new object29;
new object30;
new object31;
new object32;
new object33;
new object34;
new object35;
new object36;
new object37;
new object38;
new object39;
new object40;
new object41;
new object42;
new object43;
new object44;
new object45;
new object46;
new object47;
new object48;
new object49;
new object50;
new object51;
new object52;
new object53;

#if defined FILTERSCRIPT
main()
{

}
public OnPlayerConnect(playerid)
{
giocatore[playerid] = 0;
arbitro[playerid] = 0;
stuart[playerid] = 0;
fumogeno[playerid] = 0;
biglietto[playerid] = 0;
spettatore[playerid]= 0;
skin[playerid] = 0;
allenamento[playerid] = 0;
SetTimerEx("KeyChanges", 100, 1, "i", playerid);
SetTimer("AntiInvasione", 1000, 1);
SendClientMessage(playerid, COLOR_DARKBLUE, "This server uses Football Filterscript created by Giuseppe Mazzei");
//do NOT remove credits, if you want you can add:
//SendClientMessage(playerid, COLOR_DBLUE, "Modified by [your name]");

}
public OnFilterScriptInit()

{
print("|_________Football Filterscript__________|");
print("|______Created By Giuseppe_Mazzei________|");
print("|_______________Loaded___________________|");

object1 = CreateObject(3452, -151.817719, -32.392899, 7.841612, 0.0000, 0.0000, 67.5000);
object2 = CreateObject(3452, -140.492004, -5.026214, 7.841612, 0.0000, 0.0000, 67.5000);
object3 = CreateObject(3452, -218.382690, -6.787929, 7.841612, 0.0000, 0.0000, 247.5000);
object4 = CreateObject(3452, -207.174911, 20.435522, 7.841612, 0.0000, 0.0000, 247.5000);
object5 = CreateObject(3452, -161.063416, 40.956612, 7.841612, 0.0000, 0.0000, 157.5000);
object6 = CreateObject(3452, -197.899384, -52.907509, 7.841612, 0.0000, 0.0000, 337.5000);
object7 = CreateObject(3453, -135.337158, 24.373688, 7.841611, 0.0000, 0.0000, 67.5000);
object8 = CreateObject(3453, -190.542664, 46.279572, 7.841611, 0.0000, 0.0000, 157.5000);
object9 = CreateObject(3453, -223.720779, -36.300037, 7.841611, 0.0000, 0.0000, 247.5000);
object10 = CreateObject(3453, -168.429810, -58.201828, 7.841611, 0.0000, 0.0000, 337.5000);
object11 = CreateObject(10954, -182.091522, -11.985844, 18.400000, 0.0000, 0.0000, 247.5000);
object12 = CreateObject(6063, -182.162048, -109.804596, 9.006953, 0.0000, 0.0000, 258.7500);
object13 = CreateObject(3660, -187.470535, -159.805954, 5.099154, 0.0000, 0.0000, 348.7500);
object14 = CreateObject(7306, -153.592636, 47.829258, 16.330467, 0.0000, 0.0000, 22.5000);
object15 = CreateObject(7307, -203.894562, -60.224949, 16.427698, 0.0000, 0.0000, 112.5001);
object16 = CreateObject(4639, -222.447067, -84.841454, 3.813767, 0.0000, 0.0000, 337.5000);
object17 = CreateObject(17037, -166.016022, 26.244095, 4.608662, 0.0000, 0.0000, 67.5000);
object18 = CreateObject(17037, -194.827393, -40.763809, 4.608662, 0.0000, 0.0000, 247.5000);
object19 = CreateObject(3819, -208.973663, -14.270916, 3.114948, 0.0000, 0.0000, 157.5000);
object20 = CreateObject(3819, -197.349945, 14.621197, 3.114946, 0.0000, 0.0000, 157.5000);
object21 = CreateObject(14485, -155.380585, -141.228271, -0.558419, 0.0000, 0.0000, 90.0000);
object22 = CreateObject(14387, -186.612839, -126.812271, 3.101299, 0.0000, 0.0000, 90.0000);
object23 = CreateObject(1508, -184.073410, -115.547798, 3.779578, 0.0000, 0.0000, 0.0000);
object24 = CreateObject(1508, -183.999069, -136.225800, 5.740783, 0.0000, 0.0000, 270.0000);
object25 = CreateObject(8332, -197.508453, -122.987892, 6.405175, 0.0000, 0.0000, 90.0000);
object26 = CreateObject(7592, -198.493240, 4.074304, 2.670010, 0.0000, 0.0000, 337.5000);
object27 = CreateObject(7592, -159.629807, -13.374039, 2.677804, 0.0000, 0.0000, 337.5000);
object28 = CreateObject(7592, -166.538422, 24.221302, 2.677805, 0.0000, 0.0000, 247.5000);
object29 = CreateObject(7592, -186.473572, -42.112274, 2.677804, 0.0000, 0.0000, 247.5000);
object30 = CreateObject(10397, -179.837433, -6.690983, 6.042799, 0.0000, 0.0000, 247.5000);
object31 = CreateObject(3114, -224.517517, -11.732142, 14.000000, 0.0000, 0.0000, 247.5000);
object32 = CreateObject(3114, -216.446411, 7.763443, 14.000000, 0.0000, 0.0000, 247.5000);
object33 = CreateObject(3114, -208.367935, 27.250381, 14.000000, 0.0000, 0.0000, 247.5000);
object34 = CreateObject(7614, -241.212860, 48.856384, 3.690308, 0.0000, 0.0000, 337.5000);
object35 = CreateObject(8040, -244.767609, 24.944824, 2.243017, 0.0000, 0.0000, 247.5000);
object36 = CreateObject(978, -264.232971, -9.865314, 2.317612, 0.0000, 0.0000, 157.5000);
object37 = CreateObject(8042, -259.987183, -11.032295, 7.352411, 0.0000, 0.0000, 258.7501);
object38 = CreateObject(979, -263.734314, -6.865885, 2.317614, 0.0000, 0.0000, 337.5000);
object39 = CreateObject(986, -188.261139, 41.596863, 6.872591, 0.0000, 0.0000, 303.7500);
object40 = CreateObject(986, -191.223618, 45.965206, 8.614551, 0.0000, 0.0000, 303.7500);
object41 = CreateObject(986, -194.798935, 51.257202, 10.341534, 0.0000, 0.0000, 303.7500);
object42 = CreateObject(986, -139.869202, 22.509758, 6.872591, 0.0000, 0.0000, 202.5000);
object43 = CreateObject(986, -134.512268, 24.695408, 8.606966, 0.0000, 0.0000, 202.5000);
object44 = CreateObject(986, -129.533249, 26.873953, 10.341534, 0.0000, 0.0000, 202.5000);
object45 = CreateObject(986, -219.514694, -33.217968, 6.872591, 0.0000, 0.0000, 22.5000);
object46 = CreateObject(986, -223.991638, -35.054913, 8.614550, 0.0000, 0.0000, 22.5000);
object47 = CreateObject(986, -230.190796, -37.662083, 9.911654, 0.0000, 0.0000, 22.5000);
object48 = CreateObject(986, -171.166641, -53.654182, 6.872591, 0.0000, 0.0000, 101.2500);
object49 = CreateObject(986, -169.950790, -59.846634, 8.614550, 0.0000, 0.0000, 101.2500);
object50 = CreateObject(986, -168.824356, -65.592049, 10.349154, 0.0000, 0.0000, 101.2500);
object51 = CreateObject(7613, -201.964142, -88.057030, 3.516296, 0.0000, 0.0000, 247.5000);
object52 = CreateObject(10955, -181.623108, -11.519028, 15.778145, 0.0000, 0.0000, 247.5000);
object53 = CreateObject(7306, -138.546173, -23.999727, 16.275385, 0.0000, 0.0000, 292.5000);
palla = CreateObject(1598, -180.464828, -7.425705, 2.414398, 0.0000, 0.0000, 0.0000);
AddStaticPickup(1239, 2, -222.5425,-86.7066,3.1172);//biglietteria
AddStaticPickup(1239, 2, -202.9730,-66.6648,3.3062);//ingresso stadio
AddStaticPickup(1239, 2, -195.1585,-100.0893,3.1163);//ingresso sala stampa
AddStaticPickup(1239, 2, -184.8640,-114.0260,3.1213);//uscita sala stampa
AddStaticPickup(1239, 2, -182.5193,-135.1851,5.0900);//ingresso spogliatoio
AddStaticPickup(1239, 2, -210.6958,-3.7785,3.1094);//campo
SetTimer("CustomPickups", 1000, 1);

return 1;
}

public OnFilterScriptExit()
{
DestroyObject(palla);
DestroyObject(object1);
DestroyObject(object2);
DestroyObject(object3);
DestroyObject(object4);
DestroyObject(object5);
DestroyObject(object6);
DestroyObject(object7);
DestroyObject(object8);
DestroyObject(object9);
DestroyObject(object10);
DestroyObject(object11);
DestroyObject(object12);
DestroyObject(object13);
DestroyObject(object14);
DestroyObject(object15);
DestroyObject(object16);
DestroyObject(object17);
DestroyObject(object18);
DestroyObject(object19);
DestroyObject(object20);
DestroyObject(object21);
DestroyObject(object22);
DestroyObject(object23);
DestroyObject(object24);
DestroyObject(object25);
DestroyObject(object26);
DestroyObject(object27);
DestroyObject(object28);
DestroyObject(object29);
DestroyObject(object30);
DestroyObject(object31);
DestroyObject(object32);
DestroyObject(object33);
DestroyObject(object34);
DestroyObject(object35);
DestroyObject(object36);
DestroyObject(object37);
DestroyObject(object38);
DestroyObject(object39);
DestroyObject(object40);
DestroyObject(object41);
DestroyObject(object42);
DestroyObject(object43);
DestroyObject(object44);
DestroyObject(object45);
DestroyObject(object46);
DestroyObject(object47);
DestroyObject(object48);
DestroyObject(object49);
DestroyObject(object50);
DestroyObject(object51);
DestroyObject(object52);
DestroyObject(object53);
}

#else

main()
{
	print(" Football Stadium [FS] LOADED");
}

#endif

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

GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance)
{
	new Float:a;
	GetPlayerPos(playerid, x, y, a);
	GetPlayerFacingAngle(playerid, a);
	if (GetPlayerVehicleID(playerid))
	{
	    GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
	}
	x += (distance * floatsin(-a, degrees));
	y += (distance * floatcos(-a, degrees));
}
public CustomPickups()
{
	new Float:oldposx, Float:oldposy, Float:oldposz;

	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			GetPlayerPos(i, oldposx, oldposy, oldposz);
			if (PlayerToPoint(1.7, i, -222.5425,-86.7066,3.1172))
			{//biglietteria
			 GameTextForPlayer(i, "~g~Tikets,~n~~y~press the key to ~r~RUN~y~~n~~w~to buy somthing", 5000, 3);
			}
			else if (PlayerToPoint(1.7, i, -202.9730,-66.6648,3.3062))
			{//entrata allo stadio
			 GameTextForPlayer(i, "~g~Entrance~n~~y~press the key to ~r~RUN~y~~n~~w~to enter", 5000, 3);
			}
			else if(PlayerToPoint(1.7, i, -195.1585,-100.0893,3.1163))
			{//ingresso sala stampa
			SetPlayerPos(i, -186.7655,-116.7739,3.1213);
			GameTextForPlayer(i, "~g~Newsroom", 5000, 1);
			}
			else if(PlayerToPoint(1.7, i, -184.8640,-114.0260,3.1213))
			{//uscita sala stampa
			SetPlayerPos(i, -199.5605,-99.5375,3.1163);
			GameTextForPlayer(i, "~r~Exit", 5000, 1);
			}
			else if(PlayerToPoint(1.7, i, -210.6958,-3.7785,3.1094))
			{//uscita dal campo
			GameTextForPlayer(i, "~g~Exit~n~~y~press the key to ~r~RUN~y~~n~~w~to go out", 5000, 3);
			}
			else if(PlayerToPoint(1.7, i, -182.5193,-135.1851,5.0900))
			{//ingresso in campo
			if(annunciata == 1)
			{
			if(arbitro[i] == 1 || giocatore[i] >= 1 || stuart[i] == 1)
			{
			GameTextForPlayer(i, "~g~Entrance~n~~y~press the key to ~r~RUN~y~~n~~w~to enter", 5000, 3);
			}
			else
			{
			GameTextForPlayer(i, "~r~You can not enter", 5000, 1);
			}
			}
			else//annunciata == 0
			{
			if(arbitro[i] == 1)
			{
			GameTextForPlayer(i, "~g~Entrance~n~~y~press the key to ~r~RUN~y~~n~~w~to enter", 5000, 3);
			}
			else
			{
			GameTextForPlayer(i, "~g~Entrance~n~~y~press the key to ~r~RUN~y~~n~~w~to start training", 5000, 3);
			}
			}
			}
			}


		}
	}
public KeyChanges()
{
    new keys, updown, leftright;
    new string[256];
    for(new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        if(IsPlayerConnected(playerid))
        {
	GetPlayerKeys(playerid, keys, updown, leftright);

	new Float:ox, Float:oy, Float:oz;
	GetObjectPos(palla, ox, oy, oz);

	new Float:px, Float:py, Float:pz;

	new Float:angle;
	GetPlayerFacingAngle(playerid, angle);

	if(keys == KEY_FIRE && giocatore[playerid] >= 1 || keys == KEY_FIRE && allenamento[playerid] >= 1)
			    {
				if(PlayerToPoint(2.5,playerid,ox,oy,oz))
				{
				GetPlayerPos(playerid, px, py, pz);
				GetXYInFrontOfPlayer(playerid, px, py, 10.0);
				MoveObject(palla,px,py,2.414398,8.0);
				PlayerPlaySound(playerid,1130,0.0,0.0,0.0);
				ApplyAnimation(playerid,"FIGHT_D","FightD_1",4.1,0,1,1,0,0);
				}
				}
    else if(keys == KEY_FIRE + KEY_SPRINT && giocatore[playerid] >= 1 || keys == KEY_FIRE + KEY_SPRINT && allenamento[playerid] >= 1)
			    {
			    if(PlayerToPoint(2.5,playerid,ox,oy,oz))
				{
				GetPlayerPos(playerid, px, py, pz);
				GetXYInFrontOfPlayer(playerid, px, py, 10.0);
				MoveObject(palla,px,py,2.414398,10.0);
				PlayerPlaySound(playerid,1130,0.0,0.0,0.0);
				ApplyAnimation(playerid,"FIGHT_D","FightD_1",4.1,0,1,1,0,0);
		    	}
		    	}
   	else if(keys == KEY_SPRINT && PlayerToPoint(1.7, playerid, -222.5425,-86.7066,3.1172))
		    	{
		    	if(annunciata == 1)
		    	{
		    	ShowPlayerDialog(playerid, 13, DIALOG_STYLE_LIST, "Tickets - Choose what you want to buy", "Ticket\nSmoker $30", "Seleziona", "Cancella");
		    	}
		    	else
		    	{
                GameTextForPlayer(playerid, "~r~Closed", 5000, 1);
                PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
                return 1;
                }
                }

	else if(keys == KEY_SPRINT && PlayerToPoint(1.7, playerid, -182.5193,-135.1851,5.0900))
			{//ingresso in campo
			if(annunciata == 1)
			{
			if(arbitro[playerid] == 1 || giocatore [playerid] == 1 || stuart[playerid] == 1)
			{
			SetPlayerPos(playerid, -210.6958,-3.7785,3.1094);
			}
			}
			else//annunciata == 0
			{
			if(arbitro[playerid] == 1)
			{
			SetPlayerPos(playerid, -204.9500,-5.2410,3.1094);
			}
			else
			{
			SetPlayerPos(playerid, -204.9500,-5.2410,3.1094);
			allenamento[playerid] = 1;
			}
			}
			}//sono

	else if(keys == KEY_SPRINT && PlayerToPoint(1.7, playerid, -210.6958,-3.7785,3.1094))
	{
	if(spettatore[playerid] != 1)
	{
	if(allenamento[playerid] == 1)
	{
	SetPlayerPos(playerid, -183.8667,-131.6020,5.0900);
	SendClientMessage(playerid, COLOR_WHITE, "Finish training");
	allenamento[playerid] = 0;
	}
	else
	{
	SetPlayerPos(playerid, -183.8667,-131.6020,5.0900);
	}
	}
	}

    else if(keys == KEY_SPRINT && PlayerToPoint(1.7, playerid, -202.9730,-66.6648,3.3062))
		    	{
		    	if(biglietto[playerid] == 1)
		    	{
		    	SetPlayerPos(playerid, -211.9384,3.9319,7.9039);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	biglietto[playerid] = 0;
		    	spettatore[playerid] = 1;
		    	MetalDetector(playerid);
		    	}
		    	else if(biglietto[playerid] == 2)
		    	{
                SetPlayerPos(playerid, -147.5607,-19.1419,8.0165);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	biglietto[playerid] = 0;
		    	spettatore[playerid] = 1;
		    	MetalDetector(playerid);                }
                else if(biglietto[playerid] == 3)
		    	{
                SetPlayerPos(playerid, -200.3670,-55.6259,9.6309);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	biglietto[playerid] = 0;
		    	spettatore[playerid] = 1;
		    	MetalDetector(playerid);                }
                else if(biglietto[playerid] == 4)
		    	{
                SetPlayerPos(playerid, -160.0574,40.9410,8.3338);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	biglietto[playerid] = 0;
		    	spettatore[playerid] = 1;
		    	MetalDetector(playerid);
                }
                else if(biglietto[playerid] == 0 && stuart[playerid]== 1)
                {
                format(string, sizeof(string), "grandstand\ndiscovery platform\ncurve fans %s\ncurve fans %s", squadra1, squadra2);
                ShowPlayerDialog(playerid, 15, DIALOG_STYLE_LIST, "Stuart Entrance - Choose where to go", string, "Select", "Delete");
                }
                else
                {
                SendClientMessage(playerid, COLOR_WHITE, "You don't have a ticket!");
                return 1;
                }
                }
		}
	}return 1;
}

public MetalDetector(playerid)
{
new ammo,weap;
GetPlayerWeaponData(playerid, 8,weap,ammo);
if (weap == 17 && ammo >= 1)
{
ResetPlayerWeapons(playerid);
GivePlayerWeapon(playerid, 17, 1);
}
else
{
ResetPlayerWeapons(playerid);
}
}

public AntiInvasione()
{
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(spettatore[i] == 1)
{
new Float:X, Float:Y, Float:Z;
GetPlayerPos(i, X, Y, Z);
if(Z < 4 || Z > 12)
{
SetPlayerPos(i, -202.9730,-66.6648,3.3062);
spettatore[i] = 0;
GameTextForPlayer(i, "~r~Exit", 5000, 1);
}
}
}
}


public SafeGivePlayerMoney(plyid, amounttogive)
{
	new curHour, curMinute, curSecond;
	gettime(curHour, curMinute, curSecond);
	if (amounttogive < 0)
	{
		GivePlayerMoney(plyid, amounttogive);
	}
	else
	{
		GivePlayerMoney(plyid, amounttogive);
	}
	return 1;
}

public ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5)
{
	if(IsPlayerConnected(playerid))
	{
		new Float:posx, Float:posy, Float:posz;
		new Float:oldposx, Float:oldposy, Float:oldposz;
		new Float:tempposx, Float:tempposy, Float:tempposz;
		GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		//radi = 2.0; //Trigger Radius
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
			if(IsPlayerConnected(i) && (GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(i)))
			{
					GetPlayerPos(i, posx, posy, posz);
					tempposx = (oldposx -posx);
					tempposy = (oldposy -posy);
					tempposz = (oldposz -posz);
					//printf("DEBUG: X:%f Y:%f Z:%f",posx,posy,posz);
					if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16)))
					{
						SendClientMessage(i, col1, string);
					}
					else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8)))
					{
						SendClientMessage(i, col2, string);
					}
					else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4)))
					{
						SendClientMessage(i, col3, string);
					}
					else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2)))
					{
						SendClientMessage(i, col4, string);
					}
					else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
					{
						SendClientMessage(i, col5, string);
					}
			}
		}
	}//not connected
	return 1;
}

public PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z)
{
    if(IsPlayerConnected(playerid))
	{
		new Float:oldposx, Float:oldposy, Float:oldposz;
		new Float:tempposx, Float:tempposy, Float:tempposz;
		GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		tempposx = (oldposx -x);
		tempposy = (oldposy -y);
		tempposz = (oldposz -z);
		//printf("DEBUG: X:%f Y:%f Z:%f",posx,posy,posz);
		if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
		{
			return 1;
		}
	}
	return 0;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    new string[256];
	new sendername[MAX_PLAYER_NAME];
	new giveplayer[MAX_PLAYER_NAME];
	new cmd[256];
	new tmp[256];
	new idx;
	cmd = strtok(cmdtext, idx);
	if(strcmp(cmd, "/referee", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if(!IsPlayerAdmin(playerid))
	        {
	        SendClientMessage(playerid, COLOR_WHITE, "You are not logged into RCON");
	        return 1;
	        }
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_WHITE, "USAGE: /referee [playerid/PartOfName]");
				return 1;
			}
			new para1;
			para1 = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
            if(IsPlayerConnected(para1))
			    {
			        if(para1 != INVALID_PLAYER_ID)
			        {
						GetPlayerName(para1, giveplayer, sizeof(giveplayer));
						GetPlayerName(playerid, sendername, sizeof(sendername));
						arbitro[para1] = 1;
						printf("%s chooses %s as referee.", sendername, giveplayer);
						format(string, sizeof(string), "   %s chooses you as referee", sendername);
						SendClientMessage(para1, COLOR_WHITE, string);
						format(string, sizeof(string), "   You choose %s as referee.", giveplayer);
						SendClientMessage(playerid, COLOR_WHITE, string);
						format(string, sizeof(string), " %s is the referee for the next match! Go to the stadium!", giveplayer);
						SendClientMessageToAll(COLOR_GROVE, string);
						skin[para1] = GetPlayerSkin(para1);
						SetPlayerSkin(para1, 72);
					}
				}
		}
		return 1;
	}

	if(strcmp(cmd, "/rcmds", true) == 0)
    {
        if(IsPlayerConnected(playerid))
        {
        if(arbitro[playerid] == 1)
        {
        format(string, sizeof(string), "%s\n%s\nAnnounce\nStuart\nStart Match\nBall at centre\nBall here\nFire\nGoal\nStop Game\nEnd Match\nCoin", squadra1, squadra2);
        ShowPlayerDialog(playerid, 1, DIALOG_STYLE_LIST, "Referee Commands", string, "Select", "Exit");
        }
        }return 1;
        }
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	new sendername[MAX_PLAYER_NAME];
	new giveplayer[MAX_PLAYER_NAME];
	GetPlayerName(playerid, sendername, sizeof(sendername));
	new string[128];
	if(response)
	{
	if(dialogid == 1)
	{
		if(listitem == 0)
		{
		format(string, sizeof(string), " Referee commands - %s", squadra1);
		ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, string, "Change team name\nAdd player", "Select", "Exit");
		}
		if(listitem == 1)
		{
		format(string, sizeof(string), " Referee commands - %s", squadra2);
		ShowPlayerDialog(playerid, 3, DIALOG_STYLE_LIST, string, "Change team name\nAdd player", "Select", "Exit");
		}
		if(listitem == 2)
		{
		if(annunciata == 1)
		{
		SendClientMessage(playerid, COLOR_WHITE, "You announced the start of the match! Now type 'Start match'");
		return 1;
		}
		else
		{
		format(string, sizeof(string), " Football match between %s and %s will start in 20 minutes! Referee: %s", squadra1, squadra2, sendername);
		SendClientMessageToAll(COLOR_GROVE, string);
		annunciata = 1;
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
		if(allenamento[i] == 1)
		{
		SetPlayerPos(i, -182.5193,-135.1851,5.0900);
		SendClientMessage(i, COLOR_WHITE, "Training is finish because a match will start soon!");
		allenamento[i] = 0;
		}
		}
		}
		}
		if(listitem == 3)
		{
		ShowPlayerDialog(playerid, 10, DIALOG_STYLE_LIST, string, "Add Stuart\nFire Stuart", "Select", "Exit");
		}
		if(listitem == 4)
		{
		GetPlayerName(playerid, sendername, sizeof(sendername));
		format(string, sizeof(string), "* Referee %s starts the match.", sendername);
   		ProxDetector(50.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
   		}
		if(listitem == 5)
		{
		DestroyObject(palla);
		palla = CreateObject(1598, -180.464828, -7.425705, 2.414398, 0.0000, 0.0000, 0.0000);
		}
		if(listitem == 6)
		{
		new Float: X, Float: Y, Float: Z;
		GetPlayerPos(playerid, X, Y, Z);
		DestroyObject(palla);
		palla = CreateObject(1598, X, Y, 2.414398, 0.0000, 0.0000, 0.0000);
		}
		if(listitem == 7)
		{
		ShowPlayerDialog(playerid, 4, DIALOG_STYLE_INPUT, "Fire player", "Please insert id of the player", "Select", "Exit");
		}
		if(listitem == 8)
		{
		format(string, sizeof(string), "%s\n%s", squadra1, squadra2);
        ShowPlayerDialog(playerid, 5, DIALOG_STYLE_LIST, "Referee commands - Goal", string, "Select", "Exit");
		}
		if(listitem == 9)
		{
		GetPlayerName(playerid, sendername, sizeof(sendername));
		format(string, sizeof(string), "* Referee %s stops the match.", sendername);
   		ProxDetector(50.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
   		}
   		if(listitem == 10)
   		{
   		format(string, sizeof(string), "Match is finish: %s %d - %d %s", squadra1, goal1, goal2, squadra2);
   		SendClientMessageToAll(COLOR_GROVE, string);
   		goal1 = 0;
   		goal2 = 0;
   		annunciata = 0;
   		squadra1 = "Team1";
   		squadra2 = "Team2";
   		for(new i = 0; i < MAX_PLAYERS; i++)
   		{
   		if(giocatore[i] >= 1 || arbitro[i] == 1 || stuart[i] == 1)
   		{
   		SetPlayerSkin(i, skin[i]);
   		giocatore[i] = 0;
   		arbitro[i] = 0;
   		stuart[i] = 0;
   		}
   		}
   		}
   		if(listitem == 11)
   		{
   		new coin = random(2)+1;
		GetPlayerName(playerid, sendername, sizeof(sendername));
		new coinname[20];
		if(coin == 1) { coinname = "head"; }
		else { coinname = "tail"; }
		format(string, sizeof(string), "*** Referee %s flips a coin and lands on a %s", sendername,coinname);
		ProxDetector(20.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
   		}
   		}
	if(dialogid == 2)
	{
		if(listitem == 0)
		{
		ShowPlayerDialog(playerid, 6, DIALOG_STYLE_INPUT, "Change name", "Insert the name of the Team1", "Select", "Exit");
		}
		if(listitem == 1)
		{
		ShowPlayerDialog(playerid, 7, DIALOG_STYLE_INPUT, "Add player", "Insert id of the player to add", "Select", "Exit");
		}
	}
	if(dialogid == 3)
	{
		if(listitem == 0)
		{
		ShowPlayerDialog(playerid, 8, DIALOG_STYLE_INPUT, "Change name", "Insert the name of the Team2", "Select", "Exit");
		}
		if(listitem == 1)
		{
		ShowPlayerDialog(playerid, 9, DIALOG_STYLE_INPUT, "Add Player", "Insert id of the player to add", "Select", "Exit");
		}
	}
	if(dialogid == 4)
	{
	if(strlen(inputtext))
		    {
				new giveplayerid;
				giveplayerid = ReturnUser(inputtext);
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID && giocatore[giveplayerid] >= 1)
				    {
				    giocatore[giveplayerid] = 0;
				    SetPlayerSkin(giveplayerid, skin[giveplayerid]);
				    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
				    format(string, sizeof(string), "You fired %s", giveplayer);
				    SendClientMessage(playerid, COLOR_WHITE, string);
				    format(string, sizeof(string), "You were been fired by referee %s", sendername);
				    SendClientMessage(giveplayerid, COLOR_WHITE, string);
				    }
				}
			}
	}
	if(dialogid == 5)
	{
		if(listitem == 0)
		{
		goal1 ++;
		format(string, sizeof(string), "[SPEAKER]: Current goals: %s %d - %d %s", squadra1, goal1, goal2, squadra2);
		ProxDetector(100.0, playerid, string, COLOR_GROVE,COLOR_GROVE,COLOR_GROVE,COLOR_GROVE,COLOR_GROVE);
		}
		if(listitem == 1)
		{
		goal2 ++;
		format(string, sizeof(string), "[SPEAKER]: Current goals: %s %d - %d %s", squadra1, goal1, goal2, squadra2);
		ProxDetector(100.0, playerid, string, COLOR_GROVE,COLOR_GROVE,COLOR_GROVE,COLOR_GROVE,COLOR_GROVE);
		}
	}
	if(dialogid == 6)
	{
	if(strlen(inputtext))
		    {
				format(string, sizeof(string), "%s", inputtext);
				strmid(squadra1, string, 0, strlen(string), 255);
				format(string, sizeof(string), "Team1 name: %s", squadra1);
				SendClientMessage(playerid, COLOR_WHITE, string);
			}
	}
	if(dialogid == 7)
	{
	if(strlen(inputtext))
		    {
				new giveplayerid;
				giveplayerid = ReturnUser(inputtext);
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID)
				    {
				    giocatore[giveplayerid] = 1;
				    skin[giveplayerid] = GetPlayerSkin(giveplayerid);
				    SetPlayerSkin(giveplayerid, 96);
				    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
				    format(string, sizeof(string), "%s now plays for %s", giveplayer, squadra1);
				    SendClientMessage(playerid, COLOR_WHITE, string);
				    format(string, sizeof(string), " Referee %s authorized you to play", sendername);
				    SendClientMessage(giveplayerid, COLOR_WHITE, string);
				    }
				}
			}
	}
	if(dialogid == 8)
	{
	if(strlen(inputtext))
		    {
				format(string, sizeof(string), "%s", inputtext);
				strmid(squadra2, string, 0, strlen(string), 255);
				format(string, sizeof(string), "Team2 name: %s", squadra2);
				SendClientMessage(playerid, COLOR_WHITE, string);
			}
	}
	if(dialogid == 9)
	{
	if(strlen(inputtext))
		    {
				new giveplayerid;
				giveplayerid = ReturnUser(inputtext);
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID)
				    {
				    giocatore[giveplayerid] = 2;
				    skin[giveplayerid] = GetPlayerSkin(giveplayerid);
				    SetPlayerSkin(giveplayerid, 23);
				    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
				    format(string, sizeof(string), "%s now plays for %s", giveplayer, squadra2);
				    SendClientMessage(playerid, COLOR_WHITE, string);
				    format(string, sizeof(string), " Referee %s has authorized you to play", sendername);
				    SendClientMessage(giveplayerid, COLOR_WHITE, string);
				    }
				}
			}
	}
	if(dialogid == 10)
	{
	if(listitem == 0)
	{
	ShowPlayerDialog(playerid, 11, DIALOG_STYLE_INPUT, "Add Stuart", "Insert id of the player to add", "Select", "Exit");
	}
	if(listitem == 1)
	{
	ShowPlayerDialog(playerid, 12, DIALOG_STYLE_INPUT, "Fire Stuart", "Insert id of the player to fire", "Select", "Exit");
	}
	}
	if(dialogid == 11)
	{
	if(strlen(inputtext))
		    {
				new giveplayerid;
				giveplayerid = ReturnUser(inputtext);
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID)
				    {
				    stuart[giveplayerid] = 1;
				    skin[giveplayerid] = GetPlayerSkin(giveplayerid);
				    SetPlayerSkin(giveplayerid, 16);
				    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
				    format(string, sizeof(string), "%s now is a stuart", giveplayer);
				    SendClientMessage(playerid, COLOR_WHITE, string);
				    format(string, sizeof(string), " Referee %s authorized you as a stuart", sendername);
				    SendClientMessage(giveplayerid, COLOR_WHITE, string);
				    }
				}
			}
	}
	if(dialogid == 12)
	{
	if(strlen(inputtext))
		    {
				new giveplayerid;
				giveplayerid = ReturnUser(inputtext);
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID && stuart[giveplayerid] >= 1)
				    {
				    stuart[giveplayerid] = 0;
				    SetPlayerSkin(giveplayerid, skin[giveplayerid]);
				    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
				    format(string, sizeof(string), "You fired %s from", giveplayer);
				    SendClientMessage(playerid, COLOR_WHITE, string);
				    format(string, sizeof(string), "Referee %s has de-authorized you as stuart", sendername);
				    SendClientMessage(giveplayerid, COLOR_WHITE, string);
				    }
				}
			}
	}
	if(dialogid == 13)
	{
	if(listitem == 0)
	{
	format(string, sizeof(string), "grandstand $6\ndiscovery platform $5\ncurve fans %s $3\ncurve fans %s $3", squadra1, squadra2);
    ShowPlayerDialog(playerid, 14, DIALOG_STYLE_LIST, "Tickets - Buy ticket", string, "Select", "Exit");
	}
	if(listitem == 1)
	{
	new money = GetPlayerMoney(playerid);
	if(money < 30)
	{
	SendClientMessage(playerid, COLOR_WHITE, "You don't have $30!");
	return 1;
	}
	else
	{
	if(fumogeno[playerid] == 1)
	{
	SendClientMessage(playerid, COLOR_WHITE, "You can't buy another smoker for this match!");
	return 1;
	}
	else
	{
	GivePlayerMoney(playerid, -30);
	SendClientMessage(playerid, COLOR_WHITE, "You bought a smoker for $30!");
	GivePlayerWeapon(playerid, 17, 1);
	fumogeno[playerid] = 1;
	}
	}
	}
	}
	if(dialogid == 14)
	{
	if(listitem == 0)
	{
	new money = GetPlayerMoney(playerid);
	if(money < 6)
	{
	SendClientMessage(playerid, COLOR_WHITE, "You don't have $6!");
	return 1;
	}
	else
	{
	GivePlayerMoney(playerid, -6);
	biglietto[playerid] = 1;
	SendClientMessage(playerid, COLOR_WHITE, "You bought a ticket, it can't be used 2 times");
	SendClientMessage(playerid, COLOR_LIGHTBLUE, "[HINT]: You will pass into a metal detector and all your guns will be taken");
	}
	}
	if(listitem == 1)
	{
	new money = GetPlayerMoney(playerid);
	if(money < 5)
	{
	SendClientMessage(playerid, COLOR_WHITE, "You don't have $5!");
	return 1;
	}
	else
	{
	GivePlayerMoney(playerid, -5);
	biglietto[playerid] = 2;
	SendClientMessage(playerid, COLOR_WHITE, "You bought a ticket, it can't be used 2 times");
	SendClientMessage(playerid, COLOR_LIGHTBLUE, "[HINT]: You will pass into a metal detector and all your guns will be taken");
	}
	}
	if(listitem == 2)
	{
	new money = GetPlayerMoney(playerid);
	if(money < 3)
	{
	SendClientMessage(playerid, COLOR_WHITE, "You don't have $3!");
	return 1;
	}
	else
	{
	GivePlayerMoney(playerid, -3);
	biglietto[playerid] = 3;
	SendClientMessage(playerid, COLOR_WHITE, "You bought a ticket, it can't be used 2 times");
	SendClientMessage(playerid, COLOR_LIGHTBLUE, "[HINT]: You will pass into a metal detector and all your guns will be taken");
	}
	}
	if(listitem == 3)
	{
	new money = GetPlayerMoney(playerid);
	if(money < 5)
	{
	SendClientMessage(playerid, COLOR_WHITE, "You don't have $3!");
	return 1;
	}
	else
	{
	GivePlayerMoney(playerid, -3);
	biglietto[playerid] = 4;
	SendClientMessage(playerid, COLOR_WHITE, "You bought a ticket, it can't be used 2 times");
	SendClientMessage(playerid, COLOR_LIGHTBLUE, "[HINT]: You will pass into a metal detector and all your guns will be taken");
	}
	}
	}
	if(dialogid == 15)
	{
	if(listitem == 0)
		    	{
		    	SetPlayerPos(playerid, -211.9384,3.9319,7.9039);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	spettatore[playerid] = 1;
		    	}
	if(listitem == 1)
		    	{
                SetPlayerPos(playerid, -147.5607,-19.1419,8.0165);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	spettatore[playerid] = 1;               }
    if(listitem == 2)
		    	{
                SetPlayerPos(playerid, -200.3670,-55.6259,9.6309);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	spettatore[playerid] = 1;               }
    if(listitem == 3)
		    	{
                SetPlayerPos(playerid, -160.0574,40.9410,8.3338);
		    	SendClientMessage(playerid, COLOR_WHITE, "Go down from ladders to exit from the stadium");
		    	GameTextForPlayer(playerid, "~g~Welcome", 5000, 1);
		    	spettatore[playerid] = 1;
                }
	}


	}//end response
	return 1;
}

