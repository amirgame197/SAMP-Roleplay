#if defined _fixflooring_included
	#endinput
#endif
#define _fixflooring_included

#define MAX_FLOORING 200

new FlooringObject[MAX_FLOORING];

stock DestroyFlooringFix(slotid)
{
	if(!FlooringObject[slotid]) return 0;
	DestroyObject(FlooringObject[slotid]);
	FlooringObject[slotid] = 0;
	return 1;
}
stock CreateFlooringFix(type, Float:pos_x, Float:pos_y, Float:pos_z)
{
	if(!(1 <= type <= 3)) return -1;
	new Float:diff, Float:roty, slotid, modelid;
 	switch(type)
 	{
 	    case 1: { diff = 1.09; roty = 90.0; modelid = 19356; }
 	    case 2: { diff = 1.09; roty = 90.0; modelid = 19380; }
 	    case 3: { diff = 1.51; roty = 0.0; modelid = 18753; }
 	}
	for(new i; i < MAX_FLOORING; i++) if(!FlooringObject[i]) { slotid = i; break; }
	if(slotid != -1) FlooringObject[slotid] = CreateObject(modelid, pos_x, pos_y, pos_z-diff, 0.0, roty, 0.0);
	return slotid;
}
