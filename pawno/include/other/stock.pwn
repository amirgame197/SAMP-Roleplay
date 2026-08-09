stock GiveItem(playerid,item)
{
	new skinid = GetPlayerSkin(playerid ) ;
	switch(item)
	{
		case 19319, 19318, 19317: // Гитары
		{
			SetAttachToSkin(playerid, 1, skinid, item ) ;
		}
		case 2690: // Огнетушитель
		{
			SetAttachToSkin(playerid, 2, skinid, item ) ;
		}
		case 2045: // Бита с гвоздями
		{
			SetAttachToSkin(playerid, 3, skinid, item ) ;
		}
		case 19590: // Меч
		{
			SetAttachToSkin(playerid, 4, skinid, item ) ;

		}
		case 3056: // Магнит
		{
			SetAttachToSkin(playerid, 5, skinid, item ) ;
		}
		case 2226: // Бумбокс
		{
			SetAttachToSkin(playerid, 6, skinid, item ) ;
		}
		case 19591: // Веер
		{
			SetAttachToSkin(playerid, 7, skinid, item ) ;
		}
		case 1575: // Пакет с наркотиками
		{
			SetAttachToSkin(playerid, 9, skinid, item ) ;
		}
		case 19878: // Скейт
		{
			SetAttachToSkin(playerid, 10, skinid, item ) ;
		}
		case 19079: // Попугай на плечо
		{
			SetAttachToSkin(playerid, 11, skinid, item ) ;
		}
		case 1276: // Амулет
		{
			SetAttachToSkin(playerid, 12, skinid, item ) ;
		}
		case 2511: // Самолёт на спину
		{
			SetAttachToSkin(playerid, 13, skinid, item ) ;
		}
		case 338: // Кий
		{
			SetAttachToSkin(playerid, 14, skinid, item ) ;
		}
		case 1654: // C4 на спину
		{
			SetAttachToSkin(playerid, 15, skinid, item ) ;
		}
	}
	return true;
}
stock SetAttachToSkin(playerid, type, skinid, setobject)
{
	if(type == 1) // Гитары
	{
		switch (skinid)
		{
			case 1: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.080000,-0.118999,-0.045999, 0.000000,113.100006,0.000000, 0.717999,1.000000,0.702999 ) ;
			case 2: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.023000,-0.130000,-0.034000, 0.000000,119.000015,0.000000, 0.688000,1.000000,0.696000 ) ;
			case 3: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.023000,-0.127000,-0.034000, 0.000000,119.000015,0.000000, 0.688000,1.000000,0.696000 ) ;
			case 4: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.063000,-0.119000,-0.034000, 0.000000,119.000015,0.000000, 0.688000,1.000000,0.696000 ) ;
			case 5: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.082999,-0.159000,-0.052999, 0.000000,119.000015,0.000000, 0.688000,1.000000,0.696000 ) ;
			case 6: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.082999,-0.148999,-0.052999, 0.000000,119.000015,0.000000, 0.688000,1.000000,0.696000 ) ;
			case 7: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.082999,-0.120999,-0.052999, 0.000000,119.000015,0.000000, 0.688000,1.000000,0.696000 ) ;
			case 9: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.095999,-0.052999, 8.699999,119.000015,-3.999999, 0.688000,1.000000,0.696000 ) ;
			case 12: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.076999,-0.052999, 8.699999,119.000015,-3.999999, 0.688000,1.000000,0.696000 ) ;
			case 13: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.084999,-0.052999, 8.699999,119.000015,-3.999999, 0.688000,1.000000,0.696000 ) ;
			case 14: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.089999,-0.052999, 8.699999,119.000015,-3.999999, 0.688000,1.000000,0.696000 ) ;
			case 15: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.111999,-0.052999, 8.699999,119.000015,-3.999999, 0.688000,1.000000,0.696000 ) ;
			case 17: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.096999,-0.052999, 8.699999,119.000015,-3.999999, 0.688000,1.000000,0.696000 ) ;
			case 18: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.108999,-0.052999, -8.800000,119.000007,8.100000, 0.688000,1.000000,0.696000 ) ;
			case 19: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.108999,-0.052999, 2.799998,119.000007,0.900001, 0.688000,1.000000,0.696000 ) ;
			case 20: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.110999,-0.052999, 10.099999,119.000007,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 21: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.119999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 22: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.142999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 23: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.129999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 24: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.117999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 25: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.117999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 28: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.106999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 29: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.145999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 30: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.105999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 32: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.079999,-0.052999, 8.299997,120.000000,-6.299997, 0.688000,1.000000,0.696000 ) ;
			case 33: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.102999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 34: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.102999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 35: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.113999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 36: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.113999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 37: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.112999,-0.113999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 43: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.094999,-0.112999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 44: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.094999,-0.092999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 45: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.134999,-0.106999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 46: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.134999,-0.134999,-0.052999, -2.700004,113.800003,4.400001, 0.688000,1.000000,0.696000 ) ;
			case 47: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.120999,-0.052999, 10.799995,114.099998,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 48: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.109999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 57: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.109999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 58: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.082999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 59: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.128999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 60: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.128999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 61: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.103999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 66: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.126999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 67: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.126999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 68: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.099999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 70: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.086000,-0.105999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 71: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.121999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 72: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.097999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 73: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.097999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 78: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.134999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 79: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.129999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 82: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.110999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 83: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.110999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 84: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.130999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 86: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.130999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 94: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.095999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 95: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.107000,-0.088999,-0.024999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 96: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.150000,-0.118999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 97: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.150000,-0.106999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 98: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.150000,-0.123999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 100: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.150000,-0.111999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 101: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.150000,-0.137999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 102: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.150000,-0.116999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 103: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.157000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 104: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.140999,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 105: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.163000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 106: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.134000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 107: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.134000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 108: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.104000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 109: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.109000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 110: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.109000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 111: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.109000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 112: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.109000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 113: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.109000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 114: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.109000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 115: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.117000,-0.014999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 116: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.099000,-0.130000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 119: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.121000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 120: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.132000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 121: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.141000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 122: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.108000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 123: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.123000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 124: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.083000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 125: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.109000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 126: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.123000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 127: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.127000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 128: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.097000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 132: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.090000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 133: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.099000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 134: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.087000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 135: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.120000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 136: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.084000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 137: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.087000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 141: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.083000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 142: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.141000,-0.135000,-0.032999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 143: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.058000,-0.135000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 144: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.058000,-0.135000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 147: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.058000,-0.102000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 148: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.088000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 150: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.077000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 153: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.098000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 154: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.112000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 155: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.139000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 156: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.105000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 158: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.105000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 159: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.105000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 160: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.089000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 161: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.109000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 162: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.101000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 164: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.103000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 165: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 166: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 167: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.104000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 168: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.104000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 169: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.083000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 170: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.116000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 171: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.110000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 172: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.076000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 173: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.107000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 174: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.107000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 175: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.107000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 176: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.134000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 177: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.134000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 179: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.104000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 180: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.122000,-0.130000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 181: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.162000,-0.096000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 182: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.070000,-0.120000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 183: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.070000,-0.099000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 184: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.107000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 185: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.126000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 186: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.126000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 187: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.102000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 188: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.100000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 189: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.119000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 200: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.107000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 202: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.102000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 203: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 204: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 206: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.101000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 208: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.122999,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 212: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.082000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 213: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.114000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 217: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.097000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 220: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 221: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.106000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 222: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.106000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 223: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.133000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 227: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.128000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 228: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.128000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 230: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.083000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 231: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.105000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 234: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.085000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 235: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.098000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 236: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.086000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 239: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.118000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 240: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.124000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 241: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.139000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 242: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.137000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 247: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.106000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 248: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.106000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 249: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.113000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 250: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.113000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 254: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.104000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 255: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.104000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 258: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.131000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 259: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.131000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 261: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.090000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 262: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 265: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.137000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 266: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.092000,-0.137000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 267: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.292000,-0.135000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 269: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.052000,-0.178000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 270: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.133000,-0.127000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 271: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.135000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 272: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.134000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 273: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.111000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 274: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 275: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 276: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 280: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 281: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 282: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 283: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 284: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.121000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 286: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.135000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 288: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 289: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.128000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 290: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.124000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 291: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.116000,-0.124000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 292: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.176000,-0.108000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 294: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.176000,-0.128000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 295: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.059000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 296: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.059000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 297: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.094000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 299: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.131000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 300: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 301: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 302: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 303: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 304: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 305: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.123000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 306: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.090000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 307: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.090000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 308: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.090000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 309: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.090000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 310: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			case 311: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
			default: SetPlayerAttachedObject  ( playerid, 6, setobject, 1, 0.114000,-0.122000,-0.052999, 4.199994,119.299995,-4.700001, 0.688000,1.000000,0.696000 ) ;
		}
	}
	else if(type == 2) // Огнетушитель
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.093000, -0.184000, 0.016000, 4.100003, 60.199981, 0.000000, 1.000000, 1.000000, 1.000000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.093000, -0.184000, 0.016000, 4.100003, 60.199981, 0.000000, 1.000000, 1.000000, 1.000000);
		}
	}	
	else if(type == 3) // Бита с гвоздями
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.088999, -0.117000, -0.021000, 2.000000, -23.900011, -79.199974, 1.000000, 1.000000, 1.000000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.088999, -0.117000, -0.021000, 2.000000, -23.900011, -79.199974, 1.000000, 1.000000, 1.000000);
		}
	}
	else if(type == 4) // Меч
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1, -0.101999, -0.140000, -0.105999, 0.000000, -27.400001, 90.199966, 1.000000, 1.000000, 1.000000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, -0.101999, -0.140000, -0.105999, 0.000000, -27.400001, 90.199966, 1.000000, 1.000000, 1.000000);
		}
	}
	else if(type == 5) // Магнит
	{
		switch (skinid) 
		{
			case 1..20: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.304999, -0.142000, 0.000000,  0.000000, 87.700035, 89.600059,  0.477000, 0.501999, 0.440999); // 1
			case 21..48: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.304999, -0.142000, 0.000000,  0.000000, 87.700035, 89.600059,  0.477000, 0.501999, 0.440999); // 21
			case 49..170: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.304999, -0.112000, 0.000000,  0.000000, 87.700035, 89.600059,  0.477000, 0.501999, 0.440999); // 160
			case 171..299: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.304999, -0.122000, 0.000000,  0.000000, 87.700035, 89.600059,  0.477000, 0.501999, 0.440999); // 171
			case 300..311: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.316999, -0.127000, 0.000000,  0.000000, 87.700035, 89.600059,  0.477000, 0.501999, 0.440999); // 303
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.316999, -0.127000, 0.000000,  0.000000, 87.700035, 89.600059,  0.477000, 0.501999, 0.440999);
		}
	}
	else if(type == 6) // Бумбокс
	{
		switch (skinid) 
		{
			case 1: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071000, -0.202000, -0.065999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 1
			case 2: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071000, -0.209000, -0.065999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 2
			case 3: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071000, -0.195999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 3
			case 4: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086000, -0.195999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 4
			case 5: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086000, -0.238000, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 5
			case 6: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.102000, -0.227000, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 6
			case 7: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.070000, -0.208000, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 7
			case 8: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.070000, -0.196999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 8
			case 9: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.070000, -0.184999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 9
			case 10: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.021000, -0.184999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 10
			case 11: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.109999, -0.163999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 11
			case 12: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.074999, -0.163999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 12
			case 13: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.106999, -0.163999, -0.057999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 13
			case 14: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.106999, -0.163999, -0.063999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 14
			case 15: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.192999, -0.063999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 15
			case 16: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.117999, -0.192999, -0.063999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 16
			case 17: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.180999, -0.063999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 17
			case 18: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.061999, -0.180999, -0.063999,  0.000000, 37.099975, 0.000000,  0.651999, 0.767000, 0.738000); // 18
			case 19: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.102999, -0.180999, -0.063999,  0.000000, 37.099975, 0.000000,  0.647999, 0.767000, 0.738000); // 19
			case 20: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.188999, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 20
			case 21: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.204999, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 21
			case 22: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.219999, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 22
			case 23: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.196999, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 23
			case 24: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.196999, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 24
			case 25: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.196999, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 25
			case 27: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.085999, -0.193000, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 27
			case 28: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.085999, -0.187000, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 28
			case 29: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.060999, -0.210000, -0.063999,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 29
			case 30: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083999, -0.187000, -0.077000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 30
			case 31: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.044999, -0.189000, -0.077000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 31
			case 32: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.067999, -0.161999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 32
			case 33: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.045999, -0.161999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 33
			case 34: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.189000, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 34
			case 35: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.183000, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 35
			case 36: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.080999, -0.179000, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 36
			case 37: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.076999, -0.172999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 37
			case 38: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.023999, -0.166999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 38
			case 39: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.023999, -0.191000, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 39
			case 40: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.168999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 40
			case 41: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.091999, -0.156999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 41
			case 42: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.077999, -0.169999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 42
			case 43: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.038999, -0.169999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 43
			case 44: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.038999, -0.157999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 44
			case 45: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.065999, -0.177999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 45
			case 46: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.203999, -0.062000,  0.000000, 37.099975, 0.899999,  0.647999, 0.767000, 0.738000); // 46
			case 47: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.196999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 47
			case 48: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.186999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 48
			case 49: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.171999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 49
			case 50: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.190999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 50
			case 51: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.115999, -0.175999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 51
			case 52: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.115999, -0.175999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 52
			case 53: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.038999, -0.175999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 53
			case 54: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.024999, -0.175999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 54
			case 55: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.163999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 55
			case 56: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.154999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 56
			case 57: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.107999, -0.183999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 57
			case 58: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.059999, -0.164999, -0.062000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 58
			case 59: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.074999, -0.177999, -0.070000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 59
			case 60: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.192999, -0.070000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 60
			case 61: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.179999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 61
			case 62: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.171999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 62
			case 63: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.103999, -0.152999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 63
			case 64: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.133999, -0.152999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 64
			case 65: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.133999, -0.152999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 65
			case 66: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.096999, -0.193999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 66
			case 67: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.096999, -0.193999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 67
			case 68: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.174999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 68
			case 69: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.154999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 69
			case 70: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.080999, -0.180999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 70
			case 71: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.080999, -0.190999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 71
			case 72: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.072999, -0.182999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 72
			case 73: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.072999, -0.172999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 73
			case 74: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.110999, -0.168999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 74
			case 75: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.110999, -0.155999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 75
			case 76: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094000, -0.146999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 76
			case 77: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.024000, -0.174999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 77
			case 78: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.103999, -0.199999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 78
			case 79: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.192999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 79
			case 80: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.177999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 80
			case 81: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.177999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 81
			case 82: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.186999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 82
			case 83: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.180999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 83
			case 84: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.195999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 84
			case 85: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.101000, -0.176999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 85
			case 86: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083000, -0.203999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 86
			case 87: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.131000, -0.156999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 87
			case 88: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.036000, -0.156999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 88
			case 89: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.026000, -0.187999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 89
			case 90: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.120000, -0.154999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 90
			case 91: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.103000, -0.149999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 91
			case 92: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.103000, -0.132999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 92
			case 93: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.105000, -0.149999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 93
			case 94: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.070000, -0.149999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 94
			case 95: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.070000, -0.145999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 95
			case 96: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.135000, -0.186999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 96
			case 97: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.082000, -0.174999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 97
			case 98: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.078000, -0.201999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 98
			case 99: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.123000, -0.162999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 99
			case 100: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.106000, -0.180999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 100
			case 101: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.107000, -0.215999, -0.063000,  0.000000, 37.099975, 1.300000,  0.647999, 0.767000, 0.738000); // 101
			case 102: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.092000, -0.192999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 102
			case 103: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.121000, -0.224999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 103
			case 104: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.093000, -0.213999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 104
			case 105: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.110000, -0.230999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 105
			case 106: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083000, -0.206999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 106
			case 107: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.093000, -0.200999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 107
			case 108: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.101000, -0.178999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 108
			case 109: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075000, -0.176999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 109
			case 110: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081000, -0.181999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 110
			case 111: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.088000, -0.172999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 111
			case 112: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.062000, -0.172999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 112
			case 113: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.076000, -0.185999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 113
			case 114: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090000, -0.182999, -0.063000,  0.000000, 37.099975, 2.800000,  0.647999, 0.767000, 0.738000); // 114
			case 115: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084000, -0.188999, -0.063000,  0.000000, 37.099975, 5.700001,  0.647999, 0.767000, 0.738000); // 115
			case 116: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.093000, -0.199999, -0.063000,  0.000000, 37.099975, 5.700001,  0.632999, 0.767000, 0.738000); // 116
			case 117: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089000, -0.188999, -0.072000,  0.000000, 37.099975, 5.700001,  0.632999, 0.767000, 0.738000); // 117
			case 118: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.082000, -0.197999, -0.072000,  0.000000, 37.099975, 5.700001,  0.632999, 0.767000, 0.738000); // 118
			case 119: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071000, -0.190999, -0.069999,  0.000000, 37.099975, 3.000002,  0.632999, 0.767000, 0.738000); // 119
			case 120: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071000, -0.199999, -0.069999,  0.000000, 37.099975, 3.000002,  0.632999, 0.767000, 0.738000); // 120
			case 121: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086000, -0.210999, -0.069999,  0.000000, 37.099975, 3.000002,  0.632999, 0.767000, 0.738000); // 121
			case 122: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090000, -0.187999, -0.070999,  0.000000, 37.099975, 3.000002,  0.632999, 0.767000, 0.738000); // 122
			case 123: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084000, -0.187999, -0.070999,  0.000000, 37.099975, 3.000002,  0.632999, 0.767000, 0.738000); // 123
			case 124: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084000, -0.170999, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 124
			case 125: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.067999, -0.185999, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 125
			case 126: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.067999, -0.198999, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 126
			case 127: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.067999, -0.209999, -0.059999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 127
			case 128: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.069000, -0.179999, -0.059999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 128
			case 129: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.033000, -0.167999, -0.059999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 129
			case 130: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.033000, -0.185999, -0.059999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 130
			case 131: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.116000, -0.164999, -0.059999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 131
			case 132: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.043000, -0.151999, -0.059999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 132
			case 133: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084000, -0.171999, -0.051999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 133
			case 134: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.034000, -0.158999, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 134
			case 135: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.069000, -0.192999, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 135
			case 136: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.016000, -0.164999, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 136
			case 137: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.078000, -0.155999, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 137
			case 138: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.122999, -0.146999, -0.056999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 138
			case 139: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.122999, -0.146999, -0.076999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 139
			case 140: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.122999, -0.146999, -0.076999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 140
			case 141: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.112999, -0.158999, -0.076999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 141
			case 142: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.102999, -0.193999, -0.083000,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 142
			case 143: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.193999, -0.079000,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 143
			case 144: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.209999, -0.079000,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 144
			case 145: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.096999, -0.161999, -0.079000,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 145
			case 146: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.096999, -0.179999, -0.079000,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 146
			case 147: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.173999, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 147
			case 148: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.159999, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 148
			case 149: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.260999, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 149
			case 150: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.155999, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 150
			case 151: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.168999, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 151
			case 152: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.152998, -0.070999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 152
			case 153: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.172998, -0.052999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 153
			case 154: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.172998, -0.052999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 154
			case 155: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.208999, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 155
			case 156: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.181998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 156
			case 157: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.081999, -0.157998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 157
			case 158: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.088999, -0.171998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 158
			case 159: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084999, -0.171998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 159
			case 160: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.143998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 160
			case 161: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.185998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 161
			case 162: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.172998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 162
			case 163: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.110999, -0.183998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 163
			case 164: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.110999, -0.177998, -0.073999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 164
			case 165: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.037999, -0.196998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 165
			case 166: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.040999, -0.196998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 166
			case 167: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.104999, -0.175998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 167
			case 168: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.082999, -0.175998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 168
			case 169: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083000, -0.151998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 169
			case 170: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083000, -0.183998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 170
			case 171: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083000, -0.183998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 171
			case 172: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.096000, -0.154998, -0.064999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 172
			case 173: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.096000, -0.181998, -0.071999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 173
			case 174: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.091000, -0.185998, -0.071999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 174
			case 175: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.091000, -0.181998, -0.071999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 175
			case 176: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084000, -0.211998, -0.071999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 176
			case 177: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084000, -0.211998, -0.071999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 177
			case 178: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.102000, -0.162998, -0.071999,  0.000000, 37.099975, 3.000002,  0.644999, 0.767000, 0.738000); // 178
			case 179: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.173998, -0.071999,  0.000000, 37.099975, -0.499997,  0.644999, 0.767000, 0.738000); // 179
			case 180: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.079999, -0.203998, -0.071999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 180
			case 181: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.121999, -0.177998, -0.071999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 181
			case 182: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.177998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 182
			case 183: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.164998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 183
			case 184: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.190998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 184
			case 185: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.079999, -0.184998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 185
			case 186: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.079999, -0.192998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 186
			case 187: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071999, -0.177998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 187
			case 188: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071999, -0.177998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 188
			case 189: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083999, -0.185998, -0.059999,  0.000000, 37.099975, 2.000003,  0.644999, 0.767000, 0.738000); // 189
			case 190: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.120999, -0.165998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 190
			case 191: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.132999, -0.154998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 191
			case 192: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.132999, -0.145998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 192
			case 193: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.132999, -0.145998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 193
			case 194: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.117999, -0.142998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 194
			case 195: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.106999, -0.142998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 195
			case 196: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.021999, -0.158998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 196
			case 197: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.021999, -0.199998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 197
			case 198: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.111999, -0.170998, -0.059999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 198
			case 199: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.027999, -0.170998, -0.065999,  0.000000, 37.099975, 4.400004,  0.644999, 0.767000, 0.738000); // 199
			case 200: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.170998, -0.065999,  0.000000, 37.099975, -0.099994,  0.644999, 0.767000, 0.738000); // 200
			case 201: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.111999, -0.157998, -0.065999,  0.000000, 37.099975, 1.700005,  0.644999, 0.767000, 0.738000); // 201
			case 202: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.111999, -0.169998, -0.065999,  0.000000, 37.099975, 1.700005,  0.644999, 0.767000, 0.738000); // 202
			case 203: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.098999, -0.186998, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 203
			case 204: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.098999, -0.186998, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 204
			case 205: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.098999, -0.186998, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 205
			case 206: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.098999, -0.176998, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 206
			case 207: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.098999, -0.171998, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 207
			case 208: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.098999, -0.197998, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 208
			case 209: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.055999, -0.162997, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 209
			case 210: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.049999, -0.154997, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 210
			case 211: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.100999, -0.143997, -0.065999,  0.000000, 37.099975, 5.500004,  0.644999, 0.767000, 0.738000); // 211
			case 212: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.027999, -0.162997, -0.065999,  0.000000, 37.099975, 1.400005,  0.644999, 0.767000, 0.738000); // 212
			case 213: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.080999, -0.189997, -0.065999,  0.000000, 37.099975, 4.200005,  0.644999, 0.767000, 0.738000); // 213
			case 214: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.152997, -0.065999,  0.000000, 37.099975, 4.200005,  0.644999, 0.767000, 0.738000); // 214
			case 215: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.152997, -0.065999,  0.000000, 37.099975, 4.200005,  0.644999, 0.767000, 0.738000); // 215
			case 216: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.152997, -0.065999,  0.000000, 37.099975, 4.200005,  0.644999, 0.767000, 0.738000); // 216
			case 217: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.163997, -0.065999,  0.000000, 37.099975, 0.700006,  0.644999, 0.767000, 0.738000); // 217
			case 218: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.023999, -0.163997, -0.065999,  0.000000, 37.099975, 0.700006,  0.644999, 0.767000, 0.738000); // 218
			case 219: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.150997, -0.065999,  0.000000, 37.099975, 0.700006,  0.644999, 0.767000, 0.738000); // 219
			case 220: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.086999, -0.193997, -0.065999,  0.000000, 37.099975, 5.500005,  0.644999, 0.767000, 0.738000); // 220
			case 221: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.176997, -0.065999,  0.000000, 37.099975, 4.200006,  0.644999, 0.767000, 0.738000); // 221
			case 222: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.176997, -0.065999,  0.000000, 37.099975, 4.200006,  0.644999, 0.767000, 0.738000); // 222
			case 223: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.196997, -0.065999,  0.000000, 37.099975, 6.300006,  0.644999, 0.767000, 0.738000); // 223
			case 224: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.074999, -0.135997, -0.042999,  0.000000, 37.099975, -7.699989,  0.644999, 0.767000, 0.738000); // 224
			case 225: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.074999, -0.135997, -0.042999,  0.000000, 37.099975, -7.699989,  0.644999, 0.767000, 0.738000); // 225
			case 226: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.074999, -0.135997, -0.042999,  0.000000, 37.099975, -7.699989,  0.644999, 0.767000, 0.738000); // 226
			case 227: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.200997, -0.065999,  0.000000, 37.099975, -0.699989,  0.644999, 0.767000, 0.738000); // 227
			case 228: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.080999, -0.191997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 228
			case 229: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.045999, -0.159997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 229
			case 230: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.061999, -0.154997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 230
			case 231: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.002999, -0.154997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 231
			case 232: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.002999, -0.154997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 232
			case 233: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.100999, -0.154997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 233
			case 234: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.040999, -0.150997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 234
			case 235: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.040999, -0.150997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 235
			case 236: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.047999, -0.150997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 236
			case 237: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.150997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 237
			case 238: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.150997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 238
			case 239: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.192997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 239
			case 240: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.187997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 240
			case 241: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.075999, -0.213997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 241
			case 242: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.205997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 242
			case 243: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.177997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 243
			case 244: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.094999, -0.157997, -0.065999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 244
			case 245: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.069999, -0.204997, -0.055000,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 245
			case 246: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.069999, -0.168997, -0.055000,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 246
			case 247: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.084999, -0.180997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 247
			case 248: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.078999, -0.180997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 248
			case 249: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071999, -0.180997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 249
			case 250: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.088999, -0.180997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 250
			case 251: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.161997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 251
			case 252: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.161997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 252
			case 253: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.050999, -0.161997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 253
			case 254: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.183997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 254
			case 255: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.078999, -0.168997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 255
			case 256: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.158997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 256
			case 257: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.158997, -0.062999,  0.000000, 37.099975, 2.500010,  0.644999, 0.767000, 0.738000); // 257
			case 258: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.202997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 258
			case 259: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.202997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 259
			case 260: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.188997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 260
			case 261: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.052999, -0.172997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 261
			case 262: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.061999, -0.193997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 262
			case 263: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.100999, -0.159997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 263
			case 264: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.077999, -0.208997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 264
			case 265: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.077999, -0.208997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 265
			case 266: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.077999, -0.208997, -0.062999,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 266
			case 267: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.304999, -0.199997, -0.087000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 267
			case 268: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.191997, -0.079000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 268
			case 269: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.237997, -0.079000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 269
			case 270: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.203997, -0.068000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 270
			case 271: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.078999, -0.203997, -0.068000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 271
			case 272: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.070999, -0.203997, -0.068000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 272
			case 273: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.058999, -0.187997, -0.068000,  0.000000, 37.099975, 5.400009,  0.644999, 0.767000, 0.738000); // 273
			case 274: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.187997, -0.068000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 274
			case 275: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.187997, -0.068000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 275
			case 276: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.187997, -0.068000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 276
			case 277: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.090999, -0.225997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 277
			case 278: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.122999, -0.217997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 278
			case 279: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.122999, -0.217997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 279
			case 280: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.194997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 280
			case 281: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.194997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 281
			case 282: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.097999, -0.197997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 282
			case 283: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.091999, -0.187997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 283
			case 284: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.077999, -0.177997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 284
			case 285: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.077999, -0.188997, -0.058000,  0.000000, 37.099975, 1.700010,  0.644999, 0.767000, 0.738000); // 285
			case 286: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.188997, -0.058000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 286
			case 287: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.196997, -0.062000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 287
			case 288: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.087999, -0.190997, -0.062000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 288
			case 289: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071999, -0.200997, -0.062000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 289
			case 290: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.071999, -0.195996, -0.062000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 290
			case 291: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.079999, -0.185996, -0.062000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 291
			case 292: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.185996, -0.062000,  0.000000, 37.099975, 3.300009,  0.644999, 0.767000, 0.738000); // 292
			case 293: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.101999, -0.185996, -0.062000,  0.000000, 37.099975, 0.000010,  0.644999, 0.767000, 0.738000); // 293
			case 294: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.083999, -0.185996, -0.062000,  0.000000, 37.099975, 0.000010,  0.644999, 0.767000, 0.738000); // 294
			case 295: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.016999, -0.195996, -0.062000,  0.000000, 37.099975, 0.000010,  0.644999, 0.767000, 0.738000); // 295
			case 296: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.016999, -0.195996, -0.062000,  0.000000, 37.099975, 0.000010,  0.644999, 0.767000, 0.738000); // 296
			case 297: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.064999, -0.195996, -0.062000,  0.000000, 37.099975, 0.000010,  0.644999, 0.767000, 0.738000); // 297
			case 298: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.102999, -0.180996, -0.062000,  0.000000, 37.099975, 0.000010,  0.644999, 0.767000, 0.738000); // 298
			case 299: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.135999, -0.201996, -0.062000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 299
			case 300: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.195996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 300
			case 301: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.195996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 301
			case 302: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.095999, -0.190996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 302
			case 303: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.190996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 303
			case 304: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.190996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 304
			case 305: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.190996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 305
			case 306: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.162996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 306
			case 307: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.155996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 307
			case 308: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.155996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 308
			case 309: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.155996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 309
			case 310: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.188996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 310
			case 311: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.184996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); // 311
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.089999, -0.184996, -0.063000,  0.000000, 37.099975, 3.400009,  0.644999, 0.767000, 0.738000); 
		}
	}	
	else if(type == 7) // Веер
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.000000, -0.174999, 0.000000, -10.500010, 102.599945, 9.400003, 0.690999, 0.739000, 0.796000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.000000, -0.174999, 0.000000, -10.500010, 102.599945, 9.400003, 0.690999, 0.739000, 0.796000);
		}
	}	
	else if(type == 9) // Пакет с наркотиками
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.065999, -0.026000, -0.015000,  93.899986, 0.000000, 0.000000,  0.886000, 1.000000, 1.000000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.065999, -0.026000, -0.015000,  93.899986, 0.000000, 0.000000,  0.886000, 1.000000, 1.000000);
		}
	}	
	else if(type == 10) // Скейт
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.146999, -0.155000, -0.012000, -88.499992, -4.499999, -42.999996, 0.607999, 0.582000, 1.000000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.146999, -0.155000, -0.012000, -88.499992, -4.499999, -42.999996, 0.607999, 0.582000, 1.000000);
		}	
	}	
	else if(type == 11) // Попугай на плечо
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 6, setobject, 17, 0.029000, -0.057000, 0.148000, 0.000000, 0.000000, 0.000000, 0.603999, 0.543000, 0.594999, 0, 0);
			default: SetPlayerAttachedObject(playerid, 6, setobject, 17, 0.029000, -0.057000, 0.148000, 0.000000, 0.000000, 0.000000, 0.603999, 0.543000, 0.594999, 0, 0);
		}	
	}	
	else if(type == 12) // Амулет
	{
		switch (skinid) 
		{
			case 1..21: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.118999, -0.175999, -0.016000,  2.200000, 89.999992, 89.299995,  0.835999, 0.804999, 0.755999); // 21
			case 22..49: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.127999, -0.157999, -0.016000,  2.399999, 89.400009, 89.299995,  0.835999, 0.804999, 0.755999); // 49
			case 50..62: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.127999, -0.157999, -0.016000,  2.399999, 89.400009, 89.299995,  0.835999, 0.804999, 0.755999); // 62
			case 63..171: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.127999, -0.171999, -0.007999,  2.399999, 89.400009, 89.299995,  0.835999, 0.804999, 0.755999); // 171
			case 172..311: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.164000, -0.171999, -0.007999,  2.399999, 89.400009, 89.299995,  0.835999, 0.804999, 0.755999); // 286
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1,  0.164000, -0.171999, -0.007999,  2.399999, 89.400009, 89.299995,  0.835999, 0.804999, 0.755999);
		}	
	}	
	else if(type == 13) // Самолёт на спину
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1 ,0.189999, -0.185999, -0.035999, 82.199905, 16.000019, 70.899978, 0.205999, 0.401000, 0.319999, 0, 0);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.189999, -0.185999, -0.035999, 82.199905, 16.000019, 70.899978, 0.205999, 0.401000, 0.319999, 0, 0);
		}		
	}	
	else if(type == 14) // Кий
	{
		switch (skinid) 
		{
			case 1.311: SetPlayerAttachedObject(playerid, 5, setobject, 1, -0.371000, -0.134999, -0.074999, 6.599999, 65.300010, 0.000000, 1.000000, 1.000000, 1.000000);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, -0.371000, -0.134999, -0.074999, 6.599999, 65.300010, 0.000000, 1.000000, 1.000000, 1.000000);
		}
	}	
	else if(type == 15) // C4 на спину
	{
		switch (skinid) 
		{
			case 1..311: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.1030, -0.2240, 0.0069, 0.0000, 55.0999, -1.6999, 1.4749, 1.4040, 1.4449, 0, 0);
			default: SetPlayerAttachedObject(playerid, 5, setobject, 1, 0.1030, -0.2240, 0.0069, 0.0000, 55.0999, -1.6999, 1.4749, 1.4040, 1.4449, 0, 0);
		}								
	}				
	return true;
}
stock get_accessorie_name ( modelid )
{
	new model_name [ 28 ] ;
	switch ( modelid )
	{
		case 2690: strcat ( model_name, "Fire extinguisher" ) ;
		case 2045: strcat ( model_name, "Bat with nails" ) ;
		case 19590: strcat ( model_name, "Sword" ) ;
		case 19319, 19318, 19317: strcat ( model_name, "Guitar" ) ;
		case 3056: strcat ( model_name, "Magnet" ) ;
		case 2226: strcat ( model_name, "Boombox" ) ;
		case 19591: strcat ( model_name, "Fan" ) ;
		case 1575: strcat ( model_name, "Drug bag" ) ;
		case 19878: strcat ( model_name, "Skate" ) ;
		case 19079: strcat ( model_name, "Parrot on shoulder" ) ;
		case 1276: strcat ( model_name, "Amulet" ) ;
		case 2511: strcat ( model_name, "Airplane on the back" ) ;
		case 338: strcat ( model_name, "Cue" ) ;
		case 1654: strcat (model_name, "C4 (Bomb)" ) ;
		default: strcat ( model_name, "Unknown item" ) ;
	}
	return model_name ;
}	
