// iMenu.inc by iAmir (aka : amirab) v1.1
// TextDraws are made with iPLEOMAX's TextDraw Editor ! 
// Thanks for keeping credits ;)


#include <a_samp>


new PlayerText:iMenu_UI_frame[MAX_PLAYERS];
new PlayerText:iMenu_UI_header[MAX_PLAYERS];
new PlayerText:iMenu_UI_previewBox[MAX_PLAYERS];
new PlayerText:iMenu_UI_headerCircule[MAX_PLAYERS];
new PlayerText:iMenu_UI_cancelBG[MAX_PLAYERS];
new PlayerText:iMenu_UI_cancelBox[MAX_PLAYERS];
new PlayerText:iMenu_UI_cancelText[MAX_PLAYERS];
new PlayerText:iMenu_UI_selectBG[MAX_PLAYERS];
new PlayerText:iMenu_UI_selectBox[MAX_PLAYERS];
new PlayerText:iMenu_UI_selectText[MAX_PLAYERS];
new PlayerText:iMenu_UI_previewObj[MAX_PLAYERS];
new PlayerText:iMenu_UI_noPreview[MAX_PLAYERS];
new PlayerText:iMenu_description[MAX_PLAYERS];
new PlayerText:iMenu_caption[MAX_PLAYERS];
new PlayerText:iMenu_UI_itemBG[16][MAX_PLAYERS];
new PlayerText:iMenu_UI_itemBox[16][MAX_PLAYERS];
new PlayerText:iMenu_itemText[16][MAX_PLAYERS];

enum iMenuStats
{
	iMenuID,
	iMenuItems,
	iMenuSelectedItem,
};



new iMenu_Info[MAX_PLAYERS][iMenuStats];
new iMenuItemDesc[MAX_PLAYERS][16][270];
new iMenuItemPrevObj[MAX_PLAYERS][16];
new iMenuItemPrevBG[MAX_PLAYERS][16];
new iMenuItemPrevVeh[MAX_PLAYERS][16][2];
new iMenuItemDescCol[MAX_PLAYERS][16];


new Float:iMenuItemRX[MAX_PLAYERS][16];
new	Float:iMenuItemRY[MAX_PLAYERS][16];
new	Float:iMenuItemRZ[MAX_PLAYERS][16];
new	Float:iMenuItemZoom[MAX_PLAYERS][16];


public OnPlayerConnect(playerid)
{

    iMenu_UI_frame[playerid] = CreatePlayerTextDraw(playerid , 566.583190, 87.574096, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_frame[playerid], 0.000000, 36.906089);
	PlayerTextDrawTextSize(playerid , iMenu_UI_frame[playerid], 68.416687, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_frame[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_frame[playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_frame[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_frame[playerid], 128);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_frame[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_frame[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_frame[playerid], 0);

	iMenu_UI_header[playerid] = CreatePlayerTextDraw(playerid , 566.749755, 50.203662, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_header[playerid], 0.000000, 3.489405);
	PlayerTextDrawTextSize(playerid , iMenu_UI_header[playerid], 68.416694, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_header[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_header[playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_header[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_header[playerid], 128);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_header[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_header[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_header[playerid], 0);

	iMenu_UI_previewBox[playerid] = CreatePlayerTextDraw(playerid , 319.583343, 118.740737, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_previewBox[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_previewBox[playerid], 213.749969, 121.851852);
	PlayerTextDrawAlignment(playerid , iMenu_UI_previewBox[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_previewBox[playerid], -9502465);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_previewBox[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_previewBox[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_previewBox[playerid], 4);

	iMenu_UI_headerCircule[playerid] = CreatePlayerTextDraw(playerid , 77.083419, 51.851829, "O");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_headerCircule[playerid], 0.643750, 2.766666);
	PlayerTextDrawAlignment(playerid , iMenu_UI_headerCircule[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_headerCircule[playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_headerCircule[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_headerCircule[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid , iMenu_UI_headerCircule[playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_UI_headerCircule[playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_UI_headerCircule[playerid], 1);

	iMenu_UI_cancelBG[playerid] = CreatePlayerTextDraw(playerid , 560.416870, 390.963134, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_cancelBG[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_cancelBG[playerid], -56.250000, 22.814788);
	PlayerTextDrawAlignment(playerid , iMenu_UI_cancelBG[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_cancelBG[playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_cancelBG[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_cancelBG[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_cancelBG[playerid], 4);

	iMenu_UI_cancelBox[playerid] = CreatePlayerTextDraw(playerid , 560.750000, 394.018524, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_cancelBox[playerid], 0.000000, 1.872633);
	PlayerTextDrawTextSize(playerid , iMenu_UI_cancelBox[playerid], 503.833312, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_cancelBox[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_cancelBox[playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_cancelBox[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_cancelBox[playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_cancelBox[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_cancelBox[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_cancelBox[playerid], 0);


	iMenu_UI_cancelText[playerid] = CreatePlayerTextDraw(playerid , 532.500122, 397.185272, "Cancel");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_cancelText[playerid], 0.287500, 1.237037);
	PlayerTextDrawTextSize(playerid , iMenu_UI_cancelText[playerid], 10.5, 27.481479);
	PlayerTextDrawAlignment(playerid , iMenu_UI_cancelText[playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_UI_cancelText[playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_UI_cancelText[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_cancelText[playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_cancelText[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_cancelText[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_UI_cancelText[playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_UI_cancelText[playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_UI_cancelText[playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_UI_cancelText[playerid] , true);

	iMenu_UI_selectBG[playerid] = CreatePlayerTextDraw(playerid , 499.583312, 390.962951, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_selectBG[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_selectBG[playerid], -56.250000, 22.814819);
	PlayerTextDrawAlignment(playerid , iMenu_UI_selectBG[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_selectBG[playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_selectBG[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_selectBG[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_selectBG[playerid], 4);

	iMenu_UI_selectBox[playerid] = CreatePlayerTextDraw(playerid , 499.916687, 394.018524, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_selectBox[playerid], 0.000000, 1.872633);
	PlayerTextDrawTextSize(playerid , iMenu_UI_selectBox[playerid], 443.000000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_selectBox[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_selectBox[playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_selectBox[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_selectBox[playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_selectBox[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_selectBox[playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_selectBox[playerid], 0);


	iMenu_UI_selectText[playerid] = CreatePlayerTextDraw(playerid , 472.500000, 397.185180, "Select");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_selectText[playerid], 0.308333, 1.262963);
	PlayerTextDrawTextSize(playerid , iMenu_UI_selectText[playerid], 10.5, 29.566687);
	PlayerTextDrawAlignment(playerid , iMenu_UI_selectText[playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_UI_selectText[playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_UI_selectText[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_selectText[playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_selectText[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_selectText[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_UI_selectText[playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_UI_selectText[playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_UI_selectText[playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_UI_selectText[playerid] , true);

	iMenu_UI_previewObj[playerid] = CreatePlayerTextDraw(playerid , 320.000091, 119.259109, "Item Preview");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_previewObj[playerid], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_previewObj[playerid], 212.916717, 120.814689);
	PlayerTextDrawAlignment(playerid , iMenu_UI_previewObj[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_previewObj[playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_UI_previewObj[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_previewObj[playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_previewObj[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_previewObj[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid , iMenu_UI_previewObj[playerid], 255);
	PlayerTextDrawFont(playerid , iMenu_UI_previewObj[playerid], 5);
	PlayerTextDrawSetProportional(playerid , iMenu_UI_previewObj[playerid], 1);
	PlayerTextDrawSetPreviewModel(playerid , iMenu_UI_previewObj[playerid], 522);
	PlayerTextDrawSetPreviewRot(playerid , iMenu_UI_previewObj[playerid], 0.000000, 0.000000, 0.000000, 1.000000);

	iMenu_UI_noPreview[playerid] = CreatePlayerTextDraw(playerid ,371.250030, 172.148147, "No Preview");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_noPreview[playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_noPreview[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_noPreview[playerid], -1);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_noPreview[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_noPreview[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_UI_noPreview[playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_UI_noPreview[playerid], 2);
	PlayerTextDrawSetProportional(playerid , iMenu_UI_noPreview[playerid], 1);

	iMenu_description[playerid] = CreatePlayerTextDraw(playerid , 320.416717, 247.851837, "Description : Blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah bla");
	PlayerTextDrawLetterSize(playerid , iMenu_description[playerid], 0.170000, 0.946668);
	PlayerTextDrawTextSize(playerid , iMenu_description[playerid], 497.917022, -92.814819);
	PlayerTextDrawAlignment(playerid , iMenu_description[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_description[playerid], -5963521);
	PlayerTextDrawUseBox(playerid , iMenu_description[playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_description[playerid], 0);
	PlayerTextDrawSetShadow(playerid , iMenu_description[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_description[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid , iMenu_description[playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_description[playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_description[playerid], 1);

	iMenu_caption[playerid] = CreatePlayerTextDraw(playerid , 98.750045, 59.111106, "TestTestTestTestTestTestTestTestTestTest");
	PlayerTextDrawLetterSize(playerid , iMenu_caption[playerid], 0.437500, 1.340741);
	PlayerTextDrawAlignment(playerid , iMenu_caption[playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_caption[playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_caption[playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_caption[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid , iMenu_caption[playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_caption[playerid], 2);
	PlayerTextDrawSetProportional(playerid , iMenu_caption[playerid], 1);


    iMenu_UI_itemBG[0][playerid] = CreatePlayerTextDraw(playerid , 180.583541, 119.740753, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[0][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[0][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[0][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[0][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[0][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[0][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[0][playerid], 4);
	PlayerTextDrawSetSelectable(playerid , iMenu_UI_itemBG[0][playerid], true);

	iMenu_UI_itemBG[1][playerid] = CreatePlayerTextDraw(playerid , 180.583541, 150.851837, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[1][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[1][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[1][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[1][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[1][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[1][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[1][playerid], 4);

	iMenu_UI_itemBG[2][playerid] = CreatePlayerTextDraw(playerid , 180.583541, 181.962921, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[2][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[2][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[2][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[2][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[2][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[2][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[2][playerid], 4);

	iMenu_UI_itemBG[3][playerid] = CreatePlayerTextDraw(playerid , 180.583526, 213.074096, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[3][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[3][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[3][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[3][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[3][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[3][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[3][playerid], 4);

	iMenu_UI_itemBG[4][playerid] = CreatePlayerTextDraw(playerid , 180.583541, 244.185195, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[4][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[4][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[4][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[4][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[4][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[4][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[4][playerid], 4);

	iMenu_UI_itemBG[5][playerid] = CreatePlayerTextDraw(playerid , 180.583496, 275.296325, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[5][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[5][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[5][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[5][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[5][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[5][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[5][playerid], 4);

	iMenu_UI_itemBG[6][playerid] = CreatePlayerTextDraw(playerid , 180.583511, 306.407379, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[6][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[6][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[6][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[6][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[6][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[6][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[6][playerid], 4);

	iMenu_UI_itemBG[7][playerid] = CreatePlayerTextDraw(playerid , 180.583572, 337.518463, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[7][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[7][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[7][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[7][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[7][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[7][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[7][playerid], 4);

	iMenu_UI_itemBG[8][playerid] = CreatePlayerTextDraw(playerid , 298.907745, 119.666496, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[8][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[8][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[8][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[8][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[8][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[8][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[8][playerid], 4);


	iMenu_UI_itemBG[9][playerid] = CreatePlayerTextDraw(playerid , 298.916687, 150.814697, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[9][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[9][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[9][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[9][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[9][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[9][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[9][playerid], 4);
	

	iMenu_UI_itemBG[10][playerid] = CreatePlayerTextDraw(playerid , 299.074707, 181.851776, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[10][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[10][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[10][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[10][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[10][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[10][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[10][playerid], 4);


	iMenu_UI_itemBG[11][playerid] = CreatePlayerTextDraw(playerid , 299.333435, 213.073974, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[11][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[11][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[11][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[11][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[11][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[11][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[11][playerid], 4);


    iMenu_UI_itemBG[12][playerid] = CreatePlayerTextDraw(playerid , 299.333435, 244.185195, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[12][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[12][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[12][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[12][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[12][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[12][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[12][playerid], 4);
	
	
	iMenu_UI_itemBG[13][playerid] = CreatePlayerTextDraw(playerid , 299.333435, 275.296325, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[13][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[13][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[13][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[13][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[13][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[13][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[13][playerid], 4);
	
	
	iMenu_UI_itemBG[14][playerid] = CreatePlayerTextDraw(playerid , 299.333435, 306.407379, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[14][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[14][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[14][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[14][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[14][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[14][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[14][playerid], 4);
	
	
	iMenu_UI_itemBG[15][playerid] = CreatePlayerTextDraw(playerid , 299.333435, 337.518463, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBG[15][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBG[15][playerid], -102.916656, 26.962966);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBG[15][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBG[15][playerid], -5963521);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBG[15][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBG[15][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBG[15][playerid], 4);


	iMenu_UI_itemBox[0][playerid] = CreatePlayerTextDraw(playerid , 181.166656, 122.314819, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[0][playerid], 0.000000, 2.391151);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[0][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[0][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[0][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[0][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[0][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[0][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[0][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[0][playerid], 0);


	iMenu_UI_itemBox[1][playerid] = CreatePlayerTextDraw(playerid , 181.166656, 153.425918, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[1][playerid], 0.000000, 2.391152);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[1][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[1][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[1][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[1][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[1][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[1][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[1][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[1][playerid], 0);


	iMenu_UI_itemBox[2][playerid] = CreatePlayerTextDraw(playerid , 180.750000, 185.055541, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[2][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[2][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[2][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[2][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[2][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[2][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[2][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[2][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[2][playerid], 0);


	iMenu_UI_itemBox[3][playerid] = CreatePlayerTextDraw(playerid , 180.750000, 216.166656, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[3][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[3][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[3][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[3][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[3][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[3][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[3][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[3][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[3][playerid], 0);


	iMenu_UI_itemBox[4][playerid] = CreatePlayerTextDraw(playerid , 181.166656, 247.277770, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[4][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[4][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[4][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[4][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[4][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[4][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[4][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[4][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[4][playerid], 0);


	iMenu_UI_itemBox[5][playerid] = CreatePlayerTextDraw(playerid , 181.166656, 278.388916, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[5][playerid], 0.000000, 2.333537);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[5][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[5][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[5][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[5][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[5][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[5][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[5][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[5][playerid], 0);


	iMenu_UI_itemBox[6][playerid] = CreatePlayerTextDraw(playerid , 181.166656, 309.500000, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[6][playerid], 0.000000, 2.333537);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[6][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[6][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[6][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[6][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[6][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[6][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[6][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[6][playerid], 0);


	iMenu_UI_itemBox[7][playerid] = CreatePlayerTextDraw(playerid , 180.750000, 340.611083, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[7][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[7][playerid], 77.166664, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[7][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[7][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[7][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[7][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[7][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[7][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[7][playerid], 0);


	iMenu_UI_itemBox[8][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 122.314819, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[8][playerid], 0.000000, 2.391151);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[8][playerid], 195.500000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[8][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[8][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[8][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[8][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[8][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[8][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[8][playerid], 0);


	iMenu_UI_itemBox[9][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 153.425918, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[9][playerid], 0.000000, 2.391152);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[9][playerid], 195.500000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[9][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[9][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[9][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[9][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[9][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[9][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[9][playerid], 0);


	iMenu_UI_itemBox[10][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 185.055541, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[10][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[10][playerid], 195.916656, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[10][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[10][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[10][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[10][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[10][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[10][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[10][playerid], 0);


	iMenu_UI_itemBox[11][playerid] = CreatePlayerTextDraw(playerid , 299.916656, 216.166656, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[11][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[11][playerid], 195.916656, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[11][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[11][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[11][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[11][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[11][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[11][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[11][playerid], 0);
	
	
	iMenu_UI_itemBox[12][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 247.277770, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[12][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[12][playerid], 195.500000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[12][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[12][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[12][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[12][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[12][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[12][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[12][playerid], 0);


	iMenu_UI_itemBox[13][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 278.388916, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[13][playerid], 0.000000, 2.333537);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[13][playerid], 195.500000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[13][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[13][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[13][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[13][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[13][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[13][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[13][playerid], 0);


	iMenu_UI_itemBox[14][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 309.500000, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[14][playerid], 0.000000, 2.333537);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[14][playerid], 195.500000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[14][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[14][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[14][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[14][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[14][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[14][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[14][playerid], 0);


	iMenu_UI_itemBox[15][playerid] = CreatePlayerTextDraw(playerid , 299.500000, 340.611083, "usebox");
	PlayerTextDrawLetterSize(playerid , iMenu_UI_itemBox[15][playerid], 0.000000, 2.333540);
	PlayerTextDrawTextSize(playerid , iMenu_UI_itemBox[15][playerid], 195.500000, 0.000000);
	PlayerTextDrawAlignment(playerid , iMenu_UI_itemBox[15][playerid], 1);
	PlayerTextDrawColor(playerid , iMenu_UI_itemBox[15][playerid], 0);
	PlayerTextDrawUseBox(playerid , iMenu_UI_itemBox[15][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_UI_itemBox[15][playerid], 255);
	PlayerTextDrawSetShadow(playerid , iMenu_UI_itemBox[15][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_UI_itemBox[15][playerid], 0);
	PlayerTextDrawFont(playerid , iMenu_UI_itemBox[15][playerid], 0);


	iMenu_itemText[0][playerid] = CreatePlayerTextDraw(playerid , 128.916687, 129.592590, "Item 1");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[0][playerid], 0.178332, 0.868889);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[0][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[0][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[0][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[0][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[0][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[0][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[0][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[0][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[0][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[0][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[0][playerid] , true);


	iMenu_itemText[1][playerid] = CreatePlayerTextDraw(playerid , 128.916687, 160.703674, "Item 2");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[1][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[1][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[1][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[1][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[1][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[1][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[1][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[1][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[1][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[1][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[1][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[1][playerid] , true);


	iMenu_itemText[2][playerid] = CreatePlayerTextDraw(playerid , 128.916687, 191.814758, "Item 3");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[2][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[2][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[2][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[2][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[2][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[2][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[2][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[2][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[2][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[2][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[2][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[2][playerid], true);


	iMenu_itemText[3][playerid] = CreatePlayerTextDraw(playerid , 128.916687, 222.925842, "Item 4");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[3][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[3][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[3][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[3][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[3][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[3][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[3][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[3][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[3][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[3][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[3][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[3][playerid], true);


	iMenu_itemText[4][playerid] = CreatePlayerTextDraw(playerid , 128.916687, 254.036926, "Item 5");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[4][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[4][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[4][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[4][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[4][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[4][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[4][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[4][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[4][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[4][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[4][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[4][playerid], true);


	iMenu_itemText[5][playerid] = CreatePlayerTextDraw(playerid , 128.916687, 285.148010, "Item 6");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[5][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[5][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[5][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[5][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[5][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[5][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[5][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[5][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[5][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[5][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[5][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[5][playerid], true);


	iMenu_itemText[6][playerid] = CreatePlayerTextDraw(playerid , 128.916702, 316.259155, "Item 7");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[6][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[6][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[6][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[6][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[6][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[6][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[6][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[6][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[6][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[6][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[6][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[6][playerid], true);


	iMenu_itemText[7][playerid] = CreatePlayerTextDraw(playerid , 128.916702, 347.370239, "Item 8");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[7][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[7][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[7][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[7][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[7][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[7][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[7][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[7][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[7][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[7][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[7][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[7][playerid], true);


	iMenu_itemText[8][playerid] = CreatePlayerTextDraw(playerid , 247.666503, 129.592590, "Item 9");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[8][playerid], 0.178332, 0.868889);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[8][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[8][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[8][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[8][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[8][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[8][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[8][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[8][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[8][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[8][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[8][playerid], true);


	iMenu_itemText[9][playerid] = CreatePlayerTextDraw(playerid , 247.666641, 160.703674, "Item 10");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[9][playerid], 0.178332, 0.868889);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[9][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[9][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[9][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[9][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[9][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[9][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[9][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[9][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[9][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[9][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[9][playerid], true);


	iMenu_itemText[10][playerid] = CreatePlayerTextDraw(playerid , 247.666610, 191.814758, "Item 11");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[10][playerid], 0.178332, 0.868889);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[10][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[10][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[10][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[10][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[10][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[10][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[10][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[10][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[10][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[10][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[10][playerid], true);


	iMenu_itemText[11][playerid] = CreatePlayerTextDraw(playerid , 247.666534, 222.925842, "Item 12");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[11][playerid], 0.178332, 0.868889);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[11][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[11][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[11][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[11][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[11][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[11][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[11][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[11][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[11][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[11][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[11][playerid], true);
	
	
	iMenu_itemText[12][playerid] = CreatePlayerTextDraw(playerid , 247.666503, 254.036926, "Item 13");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[12][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[12][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[12][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[12][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[12][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[12][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[12][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[12][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[12][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[12][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[12][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[12][playerid], true);


	iMenu_itemText[13][playerid] = CreatePlayerTextDraw(playerid , 247.666503, 285.148010, "Item 14");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[13][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[13][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[13][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[13][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[13][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[13][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[13][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[13][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[13][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[13][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[13][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[13][playerid], true);


	iMenu_itemText[14][playerid] = CreatePlayerTextDraw(playerid , 247.666503, 316.259155, "Item 15");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[14][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[14][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[14][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[14][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[14][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[14][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[14][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[14][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[14][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[14][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[14][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[14][playerid], true);


	iMenu_itemText[15][playerid] = CreatePlayerTextDraw(playerid , 247.666503, 347.370239, "Item 16");
	PlayerTextDrawLetterSize(playerid , iMenu_itemText[15][playerid], 0.178333, 0.868890);
	PlayerTextDrawTextSize(playerid , iMenu_itemText[15][playerid], 8.416637, 98.000007);
	PlayerTextDrawAlignment(playerid , iMenu_itemText[15][playerid], 2);
	PlayerTextDrawColor(playerid , iMenu_itemText[15][playerid], -1);
	PlayerTextDrawUseBox(playerid , iMenu_itemText[15][playerid], true);
	PlayerTextDrawBoxColor(playerid , iMenu_itemText[15][playerid], 0xFFFFFF00);
	PlayerTextDrawSetShadow(playerid , iMenu_itemText[15][playerid], 0);
	PlayerTextDrawSetOutline(playerid , iMenu_itemText[15][playerid], 0);
	PlayerTextDrawBackgroundColor(playerid , iMenu_itemText[15][playerid], 51);
	PlayerTextDrawFont(playerid , iMenu_itemText[15][playerid], 1);
	PlayerTextDrawSetProportional(playerid , iMenu_itemText[15][playerid], 1);
	PlayerTextDrawSetSelectable(playerid , iMenu_itemText[15][playerid], true);

	return CallLocalFunction("iMenu_OnPlayerConnect", "i", playerid);
}

#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect iMenu_OnPlayerConnect
forward iMenu_OnPlayerConnect(playerid);



public OnPlayerDeath(playerid, killerid, reason)
{
    iMenu_HideForPlayer(playerid);

	return CallLocalFunction("iMenu_OnPlayerDeath", "iii", playerid, killerid, reason);
}

#if defined _ALS_OnPlayerDeath
	#undef OnPlayerDeath
#else
	#define _ALS_OnPlayerDeath
#endif
#define OnPlayerDeath iMenu_OnPlayerDeath
forward iMenu_OnPlayerDeath(playerid, killerid, reason);



public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    if(playertextid == iMenu_UI_cancelText[playerid])
    {

		iMenu_HideForPlayer(playerid);
		return 1;
	}

	for(new i=0; i<16; i++)
	{
		if(playertextid == iMenu_itemText[i][playerid])
		{
			CallRemoteFunction("iMenuPlayerSelectItem", "ii" , playerid ,i);
			iMenu_Info[playerid][iMenuSelectedItem] = i;
			return 1;
		}
	}

	if(playertextid == iMenu_UI_selectText[playerid])
    {
        if(iMenu_Info[playerid][iMenuSelectedItem] >= 0 && iMenu_Info[playerid][iMenuSelectedItem] < 16)
        {
		    CallRemoteFunction("iMenuPlayerResponse", "iiii" , playerid ,iMenu_Info[playerid][iMenuID] , iMenu_Info[playerid][iMenuSelectedItem] , iMenuItemPrevObj[playerid][(iMenu_Info[playerid][iMenuSelectedItem])]);
		    iMenu_HideForPlayer(playerid);
		} else iMenu_HideForPlayer(playerid);

		return 1;
	}
	return CallLocalFunction("iM_OnPlayerClickPlayerTextDraw", "ii", playerid, _:playertextid);
}

#if defined _ALS_OnPlayerClickPlayerTD
	#undef OnPlayerClickPlayerTextDraw
#else
	#define _ALS_OnPlayerClickPlayerTD
#endif
#define OnPlayerClickPlayerTextDraw iMenu_OnPlayerClickPlayerTextDraw

forward iM_OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid);


public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(clickedid == Text:INVALID_TEXT_DRAW)
    {
	if(iMenu_Info[playerid][iMenuID] != -1)
	{
		SelectTextDraw(playerid, -9502465);
	}
    }
	return CallLocalFunction("iMenu_OnPlayerClickTextDraw", "ii", playerid,_:clickedid);
}

#if defined _ALS_OnPlayerClickTextDraw
	#undef OnPlayerClickTextDraw
#else
	#define _ALS_OnPlayerClickTextDraw
#endif
#define OnPlayerClickTextDraw iMenu_OnPlayerClickTextDraw
forward iMenu_OnPlayerClickTextDraw(playerid,Text:clickedid);


stock iMenu_ShowForPlayer(playerid , im_menuid , im_caption[] , framecolor = 128 , headercolor = 128 , bordercolor = -5963521 , captioncolor = -5963521 , buttoncolor = 255 , mainbuttontextcolor = 0xFFFFFFFF , noprevtextcolor = 0xFFFFFFFF)
{
    iMenu_HideForPlayer(playerid)
    iMenu_Info[playerid][iMenuID] = im_menuid;
    iMenu_Info[playerid][iMenuSelectedItem] = -1;
    //iMenu_Info[playerid][iMenuItems] = items;

    new im_string[40];
    format(im_string , 40 , "%s" , im_caption);
    PlayerTextDrawSetString(playerid , iMenu_caption[playerid] , im_string);

    PlayerTextDrawBoxColor(playerid , iMenu_UI_frame[playerid] , framecolor);
    PlayerTextDrawBoxColor(playerid , iMenu_UI_header[playerid] , headercolor);
    PlayerTextDrawColor(playerid , iMenu_UI_headerCircule[playerid] , captioncolor);
    PlayerTextDrawColor(playerid , iMenu_caption[playerid] , captioncolor);
    PlayerTextDrawColor(playerid , iMenu_UI_noPreview[playerid] , noprevtextcolor);
    PlayerTextDrawColor(playerid , iMenu_UI_cancelText[playerid] , mainbuttontextcolor);
    PlayerTextDrawColor(playerid , iMenu_UI_selectText[playerid] , mainbuttontextcolor);

    PlayerTextDrawColor(playerid , iMenu_UI_cancelBox[playerid] , buttoncolor);
    PlayerTextDrawColor(playerid , iMenu_UI_selectBox[playerid] , buttoncolor);
    for(new i=0; i<16; i++) PlayerTextDrawColor(playerid , iMenu_UI_itemBox[i][playerid] , buttoncolor);
    PlayerTextDrawColor(playerid , iMenu_UI_cancelBG[playerid] , bordercolor);
    PlayerTextDrawColor(playerid , iMenu_UI_selectBG[playerid] , bordercolor);
    for(new i=0; i<16; i++) PlayerTextDrawColor(playerid , iMenu_UI_itemBG[i][playerid] , bordercolor);
    PlayerTextDrawColor(playerid , iMenu_UI_previewBox[playerid] , bordercolor);
	PlayerTextDrawSetPreviewModel(playerid , iMenu_UI_previewObj[playerid], 0);
	PlayerTextDrawSetPreviewRot(playerid , iMenu_UI_previewObj[playerid], 0.000000, 0.000000, 0.000000, 120.000000);

    PlayerTextDrawShow(playerid , iMenu_UI_frame[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_header[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_previewBox[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_headerCircule[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_cancelBG[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_cancelBox[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_cancelText[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_selectBG[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_selectBox[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_selectText[playerid]);
	
	PlayerTextDrawShow(playerid , iMenu_UI_previewObj[playerid]);
	PlayerTextDrawShow(playerid , iMenu_UI_noPreview[playerid]);
	PlayerTextDrawShow(playerid , iMenu_caption[playerid]);

	SelectTextDraw(playerid, -9502465);

	return 1;
}


stock iMenu_HideForPlayer(playerid)
{
    iMenu_Info[playerid][iMenuID] = -1;
    iMenu_Info[playerid][iMenuSelectedItem] = -1;

    PlayerTextDrawHide(playerid,iMenu_UI_frame[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_header[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_previewBox[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_headerCircule[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_cancelBG[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_cancelBox[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_cancelText[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_selectBG[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_selectBox[playerid]);
	PlayerTextDrawHide(playerid,iMenu_UI_selectText[playerid]);



	for(new i=0; i<16; i++) PlayerTextDrawHide(playerid,iMenu_UI_itemBG[i][playerid]);
	for(new i=0; i<16; i++) PlayerTextDrawHide(playerid,iMenu_UI_itemBox[i][playerid]);


	PlayerTextDrawHide(playerid , iMenu_UI_previewObj[playerid]);
	PlayerTextDrawHide(playerid , iMenu_UI_noPreview[playerid]);
	PlayerTextDrawHide(playerid , iMenu_description[playerid]);
	PlayerTextDrawHide(playerid , iMenu_caption[playerid]);
	for(new i=0; i<16; i++) PlayerTextDrawHide(playerid , iMenu_itemText[i][playerid]);

	CancelSelectTextDraw(playerid);

	return 1;
}


stock iMenu_RemoveItem(playerid , im_item_number)
{
    	PlayerTextDrawHide(playerid , iMenu_UI_itemBG[im_item_number][playerid]);
	PlayerTextDrawHide(playerid , iMenu_UI_itemBox[im_item_number][playerid]);
    	PlayerTextDrawHide(playerid , iMenu_itemText[im_item_number][playerid]);
	PlayerTextDrawHide(playerid , iMenu_UI_previewObj[playerid]);
	PlayerTextDrawHide(playerid , iMenu_UI_noPreview[playerid]);

	return 1;
}


stock iMenu_SetDefaultPreview(playerid , im_preview_model = -1 , Float:im_rx = 0.0 , Float:im_ry = 0.0 , Float:im_rz = 0.0 , Float:im_zoom = 1.0 , previewbg = 255 , vehcol1=-1 , vehcol2=-1)
{
    	PlayerTextDrawBackgroundColor(playerid , iMenu_UI_previewObj[playerid], previewbg );
     	PlayerTextDrawSetPreviewVehCol(playerid , iMenu_UI_previewObj[playerid] , vehcol1 , vehcol2);
	    PlayerTextDrawSetPreviewModel(playerid , iMenu_UI_previewObj[playerid], im_preview_model );
		PlayerTextDrawSetPreviewRot(playerid , iMenu_UI_previewObj[playerid], im_rx, im_ry, im_rz, im_zoom);
		PlayerTextDrawShow(playerid , iMenu_UI_previewObj[playerid]);
		PlayerTextDrawHide(playerid , iMenu_UI_noPreview[playerid]);

	return 1;
}


stock iMenu_AddItem(playerid , im_item_number , im_item_string[] , im_description[] , im_preview_model = -1 , Float:im_rx = 0.0 , Float:im_ry = 0.0 , Float:im_rz = 0.0 , Float:im_zoom = 1.0 , itemtextcolor=0xFFFFFFFF ,desc_col=-5963521, previewbg = 255 , vehcol1=-1 , vehcol2=-1)
{
	if(im_item_number >= 0 && im_item_number < 16)
	{
    	new im_string[40];
    	format(im_string , 40 , "%s" , im_item_string);
		PlayerTextDrawSetString(playerid , iMenu_itemText[im_item_number][playerid] , im_string);

		format(iMenuItemDesc[playerid][im_item_number] , 270 , "Description : %s" , im_description);
		iMenuItemPrevObj[playerid][im_item_number] = im_preview_model;
		iMenuItemRX[playerid][im_item_number] = im_rx;
		iMenuItemRY[playerid][im_item_number] = im_ry;
		iMenuItemRZ[playerid][im_item_number] = im_rz;
		iMenuItemZoom[playerid][im_item_number] = im_zoom;
		iMenuItemPrevBG[playerid][im_item_number] = previewbg;
		iMenuItemDescCol[playerid][im_item_number] = desc_col;
		iMenuItemPrevVeh[playerid][im_item_number][0] = vehcol1;
		iMenuItemPrevVeh[playerid][im_item_number][1] = vehcol2;

    	PlayerTextDrawShow(playerid , iMenu_UI_itemBG[im_item_number][playerid]);
		PlayerTextDrawShow(playerid , iMenu_UI_itemBox[im_item_number][playerid]);
		
		PlayerTextDrawColor(playerid , iMenu_itemText[im_item_number][playerid] , itemtextcolor);
    	PlayerTextDrawShow(playerid , iMenu_itemText[im_item_number][playerid]);



    }
 	return 1;
}

forward iMenuPlayerSelectItem(playerid , im_item);
public iMenuPlayerSelectItem(playerid , im_item)
{
    PlayerTextDrawColor(playerid , iMenu_description[playerid] , iMenuItemDescCol[playerid][im_item]);
    PlayerTextDrawSetString(playerid , iMenu_description[playerid] , iMenuItemDesc[playerid][im_item]);
	PlayerTextDrawShow(playerid , iMenu_description[playerid]);
	if(iMenuItemPrevObj[playerid][im_item] >=0 )
	{
	    PlayerTextDrawBackgroundColor(playerid , iMenu_UI_previewObj[playerid], iMenuItemPrevBG[playerid][im_item]);
     	PlayerTextDrawSetPreviewVehCol(playerid , iMenu_UI_previewObj[playerid] , iMenuItemPrevVeh[playerid][im_item][0] , iMenuItemPrevVeh[playerid][im_item][1]);
	    PlayerTextDrawSetPreviewModel(playerid , iMenu_UI_previewObj[playerid], iMenuItemPrevObj[playerid][im_item]);
		PlayerTextDrawSetPreviewRot(playerid , iMenu_UI_previewObj[playerid], iMenuItemRX[playerid][im_item], iMenuItemRY[playerid][im_item], iMenuItemRZ[playerid][im_item], iMenuItemZoom[playerid][im_item]);
		PlayerTextDrawShow(playerid , iMenu_UI_previewObj[playerid]);
		PlayerTextDrawHide(playerid , iMenu_UI_noPreview[playerid]);
	} else {
	    PlayerTextDrawSetPreviewModel(playerid , iMenu_UI_previewObj[playerid], 0);
		PlayerTextDrawSetPreviewRot(playerid , iMenu_UI_previewObj[playerid], 0.000000, 0.000000, 0.000000, 120.000000);
		PlayerTextDrawShow(playerid , iMenu_UI_previewObj[playerid]);
		PlayerTextDrawShow(playerid , iMenu_UI_noPreview[playerid]);
	}
	return CallLocalFunction("iMenu_iMenuPlayerSelectItem", "ii", playerid , im_item);
}

#if defined _ALS_iMenuPlayerSelectItem
	#undef iMenuPlayerSelectItem
#else
	#define _ALS_iMenuPlayerSelectItem
#endif
#define iMenuPlayerSelectItem iMenu_iMenuPlayerSelectItem

forward iMenu_iMenuPlayerSelectItem(playerid , item);

forward iMenuPlayerResponse(playerid , imenuid , itemid , modelid);