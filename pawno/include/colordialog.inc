/*
				  _____           _     _       
				 |  __ \         | |   (_)      
				 | |  | |_ __ ___| |__  _ _ __  
				 | |  | | '__/ _ \ '_ \| | '_ \ 
				 | |__| | | |  __/ |_) | | | | |
				 |_____/|_|  \___|_.__/|_|_| |_|
							©Drebin 2013
		http://forum.sa-mp.com/showthread.php?p=2518564#post2518564
*/

#include <a_samp>

new PlayerText:ptd_box[MAX_PLAYERS];
new PlayerText:ptd_panel[MAX_PLAYERS][8][8];
new PlayerText:ptd_indicator[MAX_PLAYERS];
new ptd_shown[MAX_PLAYERS] = -1;
new ptd_posX[MAX_PLAYERS];
new ptd_posY[MAX_PLAYERS];

new panelcolors[8][8] = { //HEX Values of all car colors to set each textdraw's color, sorted by row and column
{0x000000FF, 0xF5F5F5FF, 0x2A77A1FF, 0x840410FF, 0x263739FF, 0x86446EFF, 0xD78E10FF, 0x4C75B7FF}, 
{0xBDBEC6FF, 0x5E7072FF, 0x46597AFF, 0x5D7E8DFF, 0x58595AFF, 0xD6DAD6FF, 0x9CA1A3FF, 0x335F3FFF}, 
{0x730E1AFF, 0x7B0A2AFF, 0x9F9D94FF, 0x732E3EFF, 0x691E3BFF, 0x3F3E45FF, 0x3D4A68FF, 0x421F21FF}, 
{0x5F272BFF, 0x8494ABFF, 0x5A5752FF, 0x252527FF, 0x221918FF, 0x6F675FFF, 0x7C1C2AFF, 0x5F0A15FF}, 
{0x193826FF, 0x9D9872FF, 0xADB0B0FF, 0x304F45FF, 0x162248FF, 0x272F4BFF, 0x4E6881FF, 0x917347FF}, 
{0x8E8C46FF, 0xAAAD8EFF, 0x6F8297FF, 0xAA9D84FF, 0x0E316DFF, 0x4D322FFF, 0x7C1B44FF, 0x2E5B20FF}, 
{0x364155FF, 0x6D6C6EFF, 0x0F6A89FF, 0x204B6BFF, 0x4D8495FF, 0x96816CFF, 0x105082FF, 0x385694FF}, 
{0x7F6956FF, 0x8C929AFF, 0x44624FFF, 0xA3ADC6FF, 0x695853FF, 0x624428FF, 0xEC6AAEFF, 0x000000FF}
};

/* new carcolids[8][8] = { //Vehicle color IDs shown in the dialog sorted by row and column
{0,		1,		2,		3,		4,		5,		6,		7},
{8,		9,		10,		12,		13,		14,		15,		16},
{17,	18,		19,		21,		22,		25,		28,		30},
{31,	32,		35,		36,		40,		41,		42,		43},
{44,	46,		49,		51,		53,		54,		59,		61},
{65,	68,		71,		77,		79,		84,		85,		86},
{91,	92,		93,		94,		98,		104,	106,	108},
{110,	111,	114,	118,	119,	123,	126,	127}
}; */

//Offsets used to calculate the spacing between each of the colors used in the dialog + offsets for cursor movements
#define OFFSET_COL_X		25.6 //The distance from "2" to "1" on the X axis. Y axis level doesn't change (they have an identical X axis value)
#define OFFSET_ROW_Y		24.0 //The distance from "3" to "1" on the Y axis. X axis level doesn't change (they have an identical Y axis value)
#define OFFSET_INDICATOR_X	25.6 //The X value the dialog cursor has to be moved on the X axis to get to the next color (Y value doesn't change when moving horizontally)
#define OFFSET_INDICATOR_Y	24.0 //The Y value the dialog cursor has to be moved on the Y axis to get to the next color (X value doesn't change when moving vertically)
//     OFFSETS
//	1  2  -  -  -  -  -  -
//	3  -  -  -  -  -  -  -
//	-  -  -  -  -  -  -  -
//	-  -  -  -  -  -  -  -
//	-  -  -  -  -  -  -  -
//	-  -  -  -  -  -  -  -
//	-  -  -  -  -  -  -  -
//	-  -  -  -  -  -  -  -

#define CURSOR_MOVE_UP		0
#define CURSOR_MOVE_DOWN	1
#define CURSOR_MOVE_LEFT	2
#define CURSOR_MOVE_RIGHT	3

#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

forward OnPlayerChangeSelectedColor(playerid, column, row);
forward OnPlayerSelectColor(playerid, column, row);

stock ShowPlayerColorSelectDialog(playerid)
{
	if(ptd_shown[playerid]) return 0;
	PlayerTextDrawShow(playerid, ptd_box[playerid]);
	PlayerTextDrawShow(playerid, ptd_indicator[playerid]);
	for(new i = 0; i < 8; i++) //Loop through every row
	{
		for(new k = 0; k < 8; k++) //Loop through every column
			PlayerTextDrawShow(playerid, ptd_panel[playerid][i][k]); //Show the textdraw
	}
	ptd_posX[playerid] = 0;
	ptd_posY[playerid] = 0;
	ptd_shown[playerid] = 1;
	return 1;
}

stock HidePlayerColorSelectDialog(playerid)
{
	if(!ptd_shown[playerid]) return 0;
	SetPaintTDIndicatorPos(playerid, 0, 0); //Reset the cursor to the top left corner of the dialog for next use
	PlayerTextDrawHide(playerid, ptd_box[playerid]);
	PlayerTextDrawHide(playerid, ptd_indicator[playerid]);
	for(new i = 0; i < 8; i++) //Loop through every row
	{
		for(new k = 0; k < 8; k++) //Loop through every column
			PlayerTextDrawHide(playerid, ptd_panel[playerid][i][k]); //Hide the textdraw
	}
	ptd_posX[playerid] = -1;
	ptd_posY[playerid] = -1;
	ptd_shown[playerid] = 0;
	return 1;
}

stock MoveColorDialogCursor(playerid, direction)
{
	if(!ptd_shown[playerid]) return 0;
	switch(direction)
	{
		case CURSOR_MOVE_UP: //Cursor should be moved up
		{
			if(ptd_posY[playerid] != 0) //Cursor's current position is not in the top row (if it was it couldn't move up any further)
			{
				SetPaintTDIndicatorPos(playerid, ptd_posX[playerid], ptd_posY[playerid] - 1); //Move the cursor up one row (Y axis)
				CallRemoteFunction("OnPlayerChangeSelectedColor", "iii", ptd_posX[playerid], ptd_posY[playerid]); 
			}
		}
		case CURSOR_MOVE_DOWN: //Cursor should be moved down
		{
			if(ptd_posY[playerid] != 7) //Cursor's current position is not in the bottom row (if it was it couldn't move down any further)
			{
				SetPaintTDIndicatorPos(playerid, ptd_posX[playerid], ptd_posY[playerid] + 1); //Move the cursor down one row (Y axis)
				CallRemoteFunction("OnPlayerChangeSelectedColor", "iii", ptd_posX[playerid], ptd_posY[playerid]); 
			}
		}
		case CURSOR_MOVE_LEFT: //Cursor should be moved left
		{
			if(ptd_posX[playerid] == 0) //Cursor is in the very left column
			{
				if(ptd_posY[playerid] != 0) //Cursor is also not in the top row (if it was, it couldn't move up or left)
				{
					SetPaintTDIndicatorPos(playerid, 7, ptd_posY[playerid] - 1); //Move cursor up one row and set it to into the very right column
					CallRemoteFunction("OnPlayerChangeSelectedColor", "iii", ptd_posX[playerid], ptd_posY[playerid]);
				}
			}
			else //Cursor is not in the very left column
			{
				SetPaintTDIndicatorPos(playerid, ptd_posX[playerid] - 1, ptd_posY[playerid]); //Move cursor left one column
				CallRemoteFunction("OnPlayerChangeSelectedColor", "iii", ptd_posX[playerid], ptd_posY[playerid]);
			}
		}
		case CURSOR_MOVE_RIGHT: //Cursor should be moved right
		{
			if(ptd_posX[playerid] == 7) //Cursor is in the very right column
			{
				if(ptd_posY[playerid] != 7) //Cursor is also not in the bottom row (if it was, it couldn't move down or right)
				{
					SetPaintTDIndicatorPos(playerid, 0, ptd_posY[playerid] + 1); //Move cursor down one row and set it to into the very left column
					CallRemoteFunction("OnPlayerChangeSelectedColor", "iii", ptd_posX[playerid], ptd_posY[playerid]);
				}
			}
			else
			{
				SetPaintTDIndicatorPos(playerid, ptd_posX[playerid] + 1, ptd_posY[playerid]); //Move cursor right one column
				CallRemoteFunction("OnPlayerChangeSelectedColor", "iii", ptd_posX[playerid], ptd_posY[playerid]);
			}
		}
	}
	return 1;
}

stock SelectCurrentColor(playerid) //Select the color the cursor has currently selected
{
	if(ptd_shown[playerid])
		CallRemoteFunction("OnPlayerSelectColor", "iii", playerid, ptd_posX[playerid], ptd_posY[playerid]);
}

stock CreateColorSelectionDialog(playerid) //Create the color dialog
{
	ptd_box[playerid] = CreatePlayerTextDraw(playerid, 132.0, 147.0, "_");
	PlayerTextDrawAlignment(playerid, ptd_box[playerid], 2);
	PlayerTextDrawLetterSize(playerid, ptd_box[playerid], 0.5, 20.900007);
	PlayerTextDrawSetProportional(playerid, ptd_box[playerid], 1);
	PlayerTextDrawUseBox(playerid, ptd_box[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ptd_box[playerid], 0x00000078);
	PlayerTextDrawTextSize(playerid, ptd_box[playerid], 2.0, 201.0);
	
	ptd_indicator[playerid] = CreatePlayerTextDraw(playerid, 42.000000, 147.000000, "_");
	PlayerTextDrawAlignment(playerid, ptd_indicator[playerid], 2);
	PlayerTextDrawLetterSize(playerid, ptd_indicator[playerid], 0.500000, 2.199999);
	PlayerTextDrawSetProportional(playerid, ptd_indicator[playerid], 1);
	PlayerTextDrawUseBox(playerid, ptd_indicator[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ptd_indicator[playerid], 0xFFFFFFFF);
	PlayerTextDrawTextSize(playerid, ptd_indicator[playerid], 0.000000, 21.000000);
	
	for(new row = 0; row < 8; row++)
	{
		for(new col = 0; col < 8; col++)
		{
			ptd_panel[playerid][row][col] = CreatePlayerTextDraw(playerid, 42.0 + (col * OFFSET_COL_X), 150.0 + (row * OFFSET_ROW_Y), "_");
			PlayerTextDrawAlignment(playerid, ptd_panel[playerid][row][col], 2);
			PlayerTextDrawLetterSize(playerid, ptd_panel[playerid][row][col], 0.5, 1.5);
			PlayerTextDrawSetProportional(playerid, ptd_panel[playerid][row][col], 1);
			PlayerTextDrawUseBox(playerid, ptd_panel[playerid][row][col], 1);
			PlayerTextDrawBoxColor(playerid, ptd_panel[playerid][row][col], panelcolors[row][col]);
			PlayerTextDrawTextSize(playerid, ptd_panel[playerid][row][col], 0.00, 15.0);
		}
	}
	return 1;
}

stock DestroyColorSelectionDialog(playerid) //Destroy the dialog
{
	PlayerTextDrawDestroy(playerid, ptd_box[playerid]);
	PlayerTextDrawDestroy(playerid, ptd_indicator[playerid]);
	for(new i = 0; i < 8; i++)
	{
		for(new k = 0; k < 8; k++)
			PlayerTextDrawDestroy(playerid, ptd_panel[playerid][i][k]);
	}
	ptd_shown[playerid] = 0;
	return 1;
}

stock GetColorFromPosition(column, row) //Get the color ID from the column and row the cursor is in
	return panelcolors[row][column];
	
	
//Internal function
stock SetPaintTDIndicatorPos(playerid, column, row) //Set the exact position of the cursor
{
	PlayerTextDrawDestroy(playerid, ptd_indicator[playerid]);
	ptd_indicator[playerid] = CreatePlayerTextDraw(playerid, 42.000000 + (column * OFFSET_INDICATOR_X), 147.000000 + (row * OFFSET_INDICATOR_Y), "_");
	PlayerTextDrawAlignment(playerid, ptd_indicator[playerid], 2);
	PlayerTextDrawLetterSize(playerid, ptd_indicator[playerid], 0.500000, 2.199999);
	PlayerTextDrawSetProportional(playerid, ptd_indicator[playerid], 1);
	PlayerTextDrawUseBox(playerid, ptd_indicator[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ptd_indicator[playerid], 0xFFFFFFFF);
	PlayerTextDrawTextSize(playerid, ptd_indicator[playerid], 0.000000, 21.000000);
	
	PlayerTextDrawDestroy(playerid, ptd_panel[playerid][row][column]);
	ptd_panel[playerid][row][column] = CreatePlayerTextDraw(playerid, 42.0 + (column * OFFSET_COL_X), 150.0 + (row * OFFSET_ROW_Y), "_");
	PlayerTextDrawAlignment(playerid, ptd_panel[playerid][row][column], 2);
	PlayerTextDrawLetterSize(playerid, ptd_panel[playerid][row][column], 0.5, 1.5);
	PlayerTextDrawSetProportional(playerid, ptd_panel[playerid][row][column], 1);
	PlayerTextDrawUseBox(playerid, ptd_panel[playerid][row][column], 1);
	PlayerTextDrawBoxColor(playerid, ptd_panel[playerid][row][column], panelcolors[row][column]);
	PlayerTextDrawTextSize(playerid, ptd_panel[playerid][row][column], 0.00, 15.0);
	
	PlayerTextDrawShow(playerid, ptd_indicator[playerid]);
	PlayerTextDrawShow(playerid, ptd_panel[playerid][row][column]);
	
	ptd_posX[playerid] = column;
	ptd_posY[playerid] = row;
	return 1;
}