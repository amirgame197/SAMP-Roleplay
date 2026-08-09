#include <a_samp>

#define END_BALL_STEP 16
#define DIALOG_HELP 1024

//=====================BasketBall===============================================
//==============================================================================
new BMode[3] = {0, 1, -1};
new Float: StartBallPos[3] = {2317.3474,-1515.4139,24.7};
new Float: BBP[2] = {2316.8721,-1514.9233};
new BallStep;
new CanJump[MAX_PLAYERS];
new Float: BallSteps[2];
new Float: ZBallPos[END_BALL_STEP] =
{0.6, 0.65, 0.7, 0.35, 0.30, 0.25, 0.2, 0.15,
-0.15, -0.25, -0.2, -0.3, -0.35, -0.7, -0.65, -0.6};
new Float: BallDown[8] = {-2.8, 2.1, -2.1, 1.5, -1.5, 0.7, -0.7, 0.0};
new Float: BallSide[10] = {1.8, -1.97, -2.6, 1.0, -1.0, 0.75, -0.75, 0.3, -0.3, 0.0};
new Mode;
new Float: BallPos[3];
new Ball;
new BallOn = -1;
new AnimTime;
//==============================================================================

forward AnimStop();

main ()
{

}

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

ReturnBall()
{
	DestroyObject(Ball);
	Ball = CreateObject(2114, StartBallPos[0], StartBallPos[1], StartBallPos[2], 0,0,0);
	BallPos[0] = StartBallPos[0];
	BallPos[1] = StartBallPos[1];
	BallPos[2] = StartBallPos[2];
	CanJump[BallOn] = 0;
	BallOn = -1;
}

public OnPlayerDisconnect(playerid)
{
	if (BallOn == playerid)
	{
	    ReturnBall();
	}
	return 1;
}

public AnimStop()
{
    TogglePlayerControllable(BallOn, 1);
	AttachObjectToPlayer(Ball, BallOn, 0.3, 0.5, 0, 0,0,0);
	ApplyAnimation(BallOn, "BSKTBALL", "BBALL_Jump_Shot_O", 4, 0, 0, 0, 1, 500);
	CanJump[BallOn] = 1;
	KillTimer(AnimTime);
}

public OnGameModeInit()
{
	Ball = CreateObject(2114, StartBallPos[0], StartBallPos[1], StartBallPos[2], 0,0,0);
	BallPos[0] = StartBallPos[0];
	BallPos[1] = StartBallPos[1];
	BallPos[2] = StartBallPos[2];
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if (newkeys & KEY_SPRINT &&
	!IsPlayerInAnyVehicle(playerid) &&
	IsPlayerInRangeOfPoint(playerid, 10, 2316.5007,-1520.9408,25.3438) &&
	CanJump[playerid] == 1)
	{
	    new Float: x, Float: y, Float: z;
	    GetPlayerPos(playerid, x,y,z);
	    SetPlayerPos(playerid, x,y,25.3438);
	    DestroyObject(Ball);
	    Ball = CreateObject(2114, x,y,24.9438, 0,0,0);
		new Float: dX = BBP[0] - x;
		new Float: dY = BBP[1] - y;
		new Float: PlayerAlpha = atan2(dX, dY);
	    new RandomModeRange;
	    new Float: ay, Float: BallSpeed;
		SetPlayerFacingAngle(playerid, -PlayerAlpha);
	    if (floatabs(BBP[0] - x) < 3 && floatabs(BBP[1] - y) < 3)
		{
  			ay = 0.5;
			RandomModeRange = 1;
			SetPlayerPos(playerid, BBP[0], BBP[1]+0.2, 25.3438);
			SetPlayerFacingAngle(playerid, -PlayerAlpha);
			ApplyAnimation(playerid, "BSKTBALL", "BBALL_Dnk", 4, 0, 1, 1, 1, 1000);
			BallSpeed = 5.3;
		}
	    else
		{
		    ay = 0.2;
			RandomModeRange = 3;
			ApplyAnimation(playerid, "BSKTBALL", "BBALL_Jump_Shot", 7, 0, 2, 2, 1, 1000);
			BallSpeed = 2.8;
		}

		BallStep = 0;
		BallSteps[0] = (BBP[0] - x) / END_BALL_STEP;
		BallSteps[1] = (BBP[1] - y) / END_BALL_STEP;
		CanJump[playerid] = 0;
	    MoveObject(Ball, x, y+ay, 27.3438, BallSpeed);
		Mode = BMode[random(RandomModeRange)];
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	if (IsPlayerInRangeOfPoint(playerid, 10, 2316.5007,-1520.9408,25.3438))
	{
		if (IsPlayerInRangeOfPoint(playerid, 1, BallPos[0], BallPos[1], BallPos[2]) && BallOn == -1)
		{
		    TogglePlayerControllable(playerid, 0);
		    new Float: x, Float: y, Float: z;
		    GetObjectPos(Ball, x,y,z);
		    SetPlayerPos(playerid, x,y-0.4,z);
			SetPlayerFacingAngle(playerid, 0);
		    ApplyAnimation(playerid, "BSKTBALL", "BBALL_pickup", 4, 0,1,1,1,1500);
		    BallOn = playerid;
			AnimTime = SetTimer("AnimStop", 1500, true);
		    return 1;
		}
	}

	else
	{
	    if (CanJump[playerid])
	    {
			ReturnBall();
 			return 1;
 		}
	}
	return 1;
}

public OnObjectMoved(objectid)
{
	if (objectid == Ball)
	{
		new Float: x, Float: y, Float: z;
		GetObjectPos(objectid, x,y,z);

		new n = END_BALL_STEP;
	    if (BallStep >= n)
	    {
	        new b;
	        if (!Mode) b = 8; else b = 10;
	        if (BallStep == n + b)
	        {
	            BallPos[0] = x;
	            BallPos[1] = y;
	            BallPos[2] = z;
	            CanJump[BallOn] = 0;
				ApplyAnimation(BallOn, "BSKTBALL", "BBALL_Jump_Shot_O", 4, 0, 0, 0, 1, 100);
				BallOn = -1;
			}
			else
			{
			    if (!Mode)
			    {
			        GameTextForPlayer(BallOn, "~g~+1", 3000, 6);
			    	new Float: a = BallDown[BallStep - n];
			    	MoveObject(objectid, x,y,z + a, 8-a);
			    	BallStep++;
			    }
			    else
			    {
			        new Float: a = BallSide[BallStep - n];
					MoveObject(objectid, x+0.15*Mode, y - 0.08, z + a, 8-a);
					BallStep++;
			    }
			}
	    }
		MoveObject(objectid, x+BallSteps[0], y+BallSteps[1], z+ZBallPos[BallStep], 7.65);
		BallStep++;
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp(cmdtext, "/basket", true) == 0)
	{
	    SetPlayerPos(playerid, 2316.5007,-1520.9408,25.3438);
	    return 1;
	}
	return 0;
}
