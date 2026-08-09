#include <a_samp>
#define _FS_TEXDRAW_DIALOG // For other includes
 
#define TEXTDRAW_DIALOG_STYLE_PREVIEW 1 //preview (v1.0)
#define TEXTDRAW_DIALOG_STYLE_MSGBOX 2 //message box(v1.5)
#define TEXTDRAW_DIALOG_STYLE_LIST 3 //no finished (v2.0)
#define TEXDRAW_DIALOG_COLOR_SELECTION 0xE04E2AFF//you can change it.
new PlayerText:PTD_textdraw[MAX_PLAYERS][28];
new piPrikazanTDialog[MAX_PLAYERS]=0;
 
CreatePreviewTDVersion(playerid) {
 
    PTD_textdraw[playerid][0] = CreatePlayerTextDraw(playerid, 177.666564, 91.274078, "box");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][0], 0.000000, 24.566665);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][0], 467.000000, 0.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][0], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][0], -1);
    PlayerTextDrawUseBox(playerid, PTD_textdraw[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, PTD_textdraw[playerid][0], 858730154);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][0], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][0], 0);
 
    PTD_textdraw[playerid][1] = CreatePlayerTextDraw(playerid, 178.666748, 105.222206, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][1], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][1], 280.000000, 0.800000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][1], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][1], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][1], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][1], 0);
 
    PTD_textdraw[playerid][2] = CreatePlayerTextDraw(playerid, 458.999969, 105.222251, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][2], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][2], -1.000000, 185.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][2], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][2], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][2], 0);
 
    PTD_textdraw[playerid][3] = CreatePlayerTextDraw(playerid, 179.333282, 105.222244, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][3], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][3], -1.000000, 185.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][3], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][3], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][3], 0);
 
    PTD_textdraw[playerid][4] = CreatePlayerTextDraw(playerid, 178.333374, 289.814788, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][4], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][4], 280.000000, 0.800000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][4], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][4], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][4], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][4], 0);
 
    PTD_textdraw[playerid][5] = CreatePlayerTextDraw(playerid, 381.666717, 291.629608, "I");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][5], 7.531668, 2.408888);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][5], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][5], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][5], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][5], 0);
 
    PTD_textdraw[playerid][6] = CreatePlayerTextDraw(playerid, 428.666870, 297.851959, "EXIT");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][6], 0.302333, 1.181038);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][6], 2);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][6], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][6], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][6], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][6], true);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][6], 12.5, 12.5);
 
    PTD_textdraw[playerid][7] = CreatePlayerTextDraw(playerid, 179.333358, 95.007499, "TEXTDRAW-DIALOG-STYLE_PREVIEW");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][7], 0.200666, 0.762075);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][7], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][7], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][7], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][7], 0);
 
    PTD_textdraw[playerid][8] = CreatePlayerTextDraw(playerid, 184.000000, 108.540687, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][8], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][8], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][8], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][8], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][8], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][8], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][8], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][8], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][8], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][9] = CreatePlayerTextDraw(playerid, 238.000045, 108.955505, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][9], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][9], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][9], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][9], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][9], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][9], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][9], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][9], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][9], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][10] = CreatePlayerTextDraw(playerid, 292.666717, 109.785133, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][10], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][10], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][10], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][10], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][10], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][10], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][10], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][10], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][10], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][11] = CreatePlayerTextDraw(playerid, 347.666778, 109.370315, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][11], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][11], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][11], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][11], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][11], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][11], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][11], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][11], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][11], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][12] = CreatePlayerTextDraw(playerid, 403.333496, 109.370315, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][12], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][12], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][12], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][12], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][12], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][12], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][12], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][12], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][12], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][13] = CreatePlayerTextDraw(playerid, 404.000183, 157.903640, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][13], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][13], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][13], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][13], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][13], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][13], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][13], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][13], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][13], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][14] = CreatePlayerTextDraw(playerid, 347.666809, 158.318466, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][14], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][14], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][14], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][14], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][14], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][14], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][14], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][14], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][14], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][14], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][15] = CreatePlayerTextDraw(playerid, 292.666748, 157.903656, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][15], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][15], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][15], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][15], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][15], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][15], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][15], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][15], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][15], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][15], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][16] = CreatePlayerTextDraw(playerid, 237.000030, 157.903686, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][16], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][16], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][16], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][16], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][16], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][16], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][16], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][16], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][16], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][16], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][17] = CreatePlayerTextDraw(playerid, 183.000015, 157.074066, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][17], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][17], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][17], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][17], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][17], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][17], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][17], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][17], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][17], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][17], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][18] = CreatePlayerTextDraw(playerid, 183.333374, 207.266677, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][18], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][18], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][18], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][18], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][18], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][18], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][18], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][18], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][18], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][18], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][19] = CreatePlayerTextDraw(playerid, 237.999984, 207.681488, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][19], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][19], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][19], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][19], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][19], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][19], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][19], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][19], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][19], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][19], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][20] = CreatePlayerTextDraw(playerid, 292.999908, 208.096298, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][20], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][20], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][20], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][20], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][20], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][20], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][20], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][20], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][20], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][20], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][21] = CreatePlayerTextDraw(playerid, 348.333282, 206.851867, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][21], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][21], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][21], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][21], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][21], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][21], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][21], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][21], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][21], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][21], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][22] = CreatePlayerTextDraw(playerid, 404.666564, 206.851867, "");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][22], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][22], 51.000000, 43.000000);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][22], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][22], 1093676332);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][22], 5);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][22], 0);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][22], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][22], true);
    //PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], 280);id][22], 280);
    PlayerTextDrawSetPreviewRot(playerid, PTD_textdraw[playerid][22], 0.000000, 0.000000, 0.000000, 1.000000);
 
    PTD_textdraw[playerid][23] = CreatePlayerTextDraw(playerid, 313.333312, 291.629669, "I");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][23], 7.531668, 2.408888);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][23], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][23], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][23], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][23], 0);
 
    PTD_textdraw[playerid][24] = CreatePlayerTextDraw(playerid, 347.333312, 297.437103, "NEXT");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][24], 0.302333, 1.181038);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][24], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][24], 1);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][24], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][24], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][24], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][24], true);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][24], 12.5, 12.5);
 
    PTD_textdraw[playerid][25] = CreatePlayerTextDraw(playerid, 245.333389, 291.629608, "I");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][25], 7.531668, 2.408888);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][25], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][25], 255);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][25], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][25], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][25], 0);
 
    PTD_textdraw[playerid][26] = CreatePlayerTextDraw(playerid, 281.333312, 298.266723, "PREV");
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][26], 0.302333, 1.181038);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][26], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][26], 1);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][26], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][26], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][26], 0);
    PlayerTextDrawSetSelectable(playerid, PTD_textdraw[playerid][26], true);
    PlayerTextDrawTextSize(playerid, PTD_textdraw[playerid][26], 12.5, 12.5);
   
    PTD_textdraw[playerid][27] = CreatePlayerTextDraw(playerid, 182.666580, 107.451805, "sssssssssssssssssssssssssssssssssssssssssssss");//45
    PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][27], 0.223999, 0.981926);
    PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][27], 1);
    PlayerTextDrawColor(playerid, PTD_textdraw[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][27], 1);
    PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][27], 255);
    PlayerTextDrawFont(playerid, PTD_textdraw[playerid][27], 2);
    PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][27], 1);
    PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][27], 0);
 
 
    return 1;
}
 
ShowPTDialog(playerid,style)
{
    if(style == 1) {
    for(new c = 0; c < 27; c++)
    {
        PlayerTextDrawShow(playerid, PTD_textdraw[playerid][c]);
    }
    }
    if(style == 2) {
   
    for(new c = 0; c < 7; c++)
    {
        PlayerTextDrawShow(playerid, PTD_textdraw[playerid][c]);
    }
    PlayerTextDrawShow(playerid, PTD_textdraw[playerid][27]);//text
   
    }
    if(style == 3) {
    }
    return 1;
}
HidePTDialog(playerid)
{
    for(new c = 0; c < 28; c++)
    {
        PlayerTextDrawHide(playerid, PTD_textdraw[playerid][c]);
        CancelSelectTextDraw(playerid);
    }
    piPrikazanTDialog[playerid]=0;
    return 1;
}
 
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    if(playertextid == PTD_textdraw[playerid][8]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,1);
    }
    if(playertextid == PTD_textdraw[playerid][9]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,2);
    }
    if(playertextid == PTD_textdraw[playerid][10]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,3);
    }
    if(playertextid == PTD_textdraw[playerid][11]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,4);
    }
    if(playertextid == PTD_textdraw[playerid][12]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,5);
    }
    if(playertextid == PTD_textdraw[playerid][13]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,6);
    }
    if(playertextid == PTD_textdraw[playerid][14]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,7);
    }
    if(playertextid == PTD_textdraw[playerid][15]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,8);
    }
    if(playertextid == PTD_textdraw[playerid][16]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,9);
    }
    if(playertextid == PTD_textdraw[playerid][17]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,10);
    }
    if(playertextid == PTD_textdraw[playerid][18]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,11);
    }
    if(playertextid == PTD_textdraw[playerid][19]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,12);
    }
    if(playertextid == PTD_textdraw[playerid][20]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,13);
    }
    if(playertextid == PTD_textdraw[playerid][21]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,14);
    }
    if(playertextid == PTD_textdraw[playerid][22]) {
    CallLocalFunction("TextDrawDialogPreviewResponse","ii",playerid,15);
    }
    //ove tri funkcije ispod ne pozivamo!
    //next
    if(playertextid == PTD_textdraw[playerid][24]) {
    SendClientMessage(playerid,-1,"Nije zavrseno!");
    }
    //previous
    if(playertextid == PTD_textdraw[playerid][26]) {
    SendClientMessage(playerid,-1,"Nije zavrseno!");
    }
    //cancel
    if(playertextid == PTD_textdraw[playerid][6]) {
    HidePTDialog(playerid);
    }
    #if defined func_OPCPT
        func_OPCPT(playerid, playertextid);
    #else
        return 1;
    #endif
 
}
#if defined _ALS_OnPlayerClickPlayerTextDraw
    #undef OnPlayerClickPlayerTextDraw
#else
    #define _ALS_OnPlayerClickPlayerTextDraw
#endif
#define OnPlayerClickPlayerTextDraw func_OPCPT
#if defined func_OPCPT
    forward func_OPCPT(playerid, Text:playertextid);
#endif
 
public OnPlayerConnect(playerid) {
    CreatePreviewTDVersion(playerid);
    #if defined AZ_OnPlayerConnect
 
        return AZ_OnPlayerConnect(playerid);
       
    #else
       
    return 1;
        #endif
       
}
    #if defined _ALS_OnPlayerConnect
    #undef OnPlayerConnect
    #else
    #define _ALS_OnPlayerConnect
    #endif
    #define OnPlayerConnect AZ_OnPlayerConnect
    #if defined AZ_OnPlayerConnect
    forward AZ_OnPlayerConnect(playerid);
    #endif
 
 
 
ShowDialogTextdraw(playerid, style, title[], info[], id, m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15)//info se koristi samo za style 2!
{
    if(id < 0 || id > 1000) return 0;
    if (playerid < 0 || playerid >= MAX_PLAYERS)  return 0;
    if (piPrikazanTDialog[playerid] == 1) HidePTDialog(playerid);
    piPrikazanTDialog[playerid] = 1;
    if(style == 1) {
    //preview
    PlayerTextDrawSetString(playerid, PTD_textdraw[playerid][7], title);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][8], m1);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][9], m2);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][10], m3);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][11], m4);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][12], m5);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][13], m6);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][14], m7);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][15], m8);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][16], m9);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][17], m10);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][18], m11);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][19], m12);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][20], m13);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][21], m14);
    PlayerTextDrawSetPreviewModel(playerid, PTD_textdraw[playerid][22], m15);
    ShowPTDialog(playerid,style);
    }
    if(style == 2) {
    //msgbox
    ShowPTDialog(playerid,style);
    new cstring[8];
    strmid(cstring, info, 0, 3);
    if (strfind(cstring, "\\cen", true) != -1)
    PlayerTextDrawSetString(playerid, PTD_textdraw[playerid][7], title);
   
        PlayerTextDrawHide(playerid, PTD_textdraw[playerid][27]);
       
        PlayerTextDrawDestroy(playerid, PTD_textdraw[playerid][27]);
       
        PTD_textdraw[playerid][27] = CreatePlayerTextDraw(playerid, 318.333282, 107.036949, "");//center
        PlayerTextDrawLetterSize(playerid, PTD_textdraw[playerid][27], 0.223999, 0.981926);
        PlayerTextDrawAlignment(playerid, PTD_textdraw[playerid][27], 2);
        PlayerTextDrawColor(playerid, PTD_textdraw[playerid][27], -1);
        PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][27], 0);
        PlayerTextDrawSetOutline(playerid, PTD_textdraw[playerid][27], 1);
        PlayerTextDrawBackgroundColor(playerid, PTD_textdraw[playerid][27], 255);
        PlayerTextDrawFont(playerid, PTD_textdraw[playerid][27], 2);
        PlayerTextDrawSetProportional(playerid, PTD_textdraw[playerid][27], 1);
        PlayerTextDrawSetShadow(playerid, PTD_textdraw[playerid][27], 0);
 
   
    PlayerTextDrawSetString(playerid, PTD_textdraw[playerid][27], info);
    PlayerTextDrawShow(playerid, PTD_textdraw[playerid][27]);//text
 
    }
    else {
    PlayerTextDrawSetString(playerid, PTD_textdraw[playerid][7], title);
    PlayerTextDrawSetString(playerid, PTD_textdraw[playerid][27], info);
    PlayerTextDrawShow(playerid, PTD_textdraw[playerid][27]);//text
    }
   
   
    if(style == 3) {
    ShowPTDialog(playerid,style);
    }
    return SelectTextDraw(playerid, TEXDRAW_DIALOG_COLOR_SELECTION);
}