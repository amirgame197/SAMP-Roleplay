
	// UseLAlt
	UseLAlt[playerid][0] = CreatePlayerTextDraw(playerid, 553.666625, 420.207458, "_"); // use alt
	PlayerTextDrawLetterSize(playerid, UseLAlt[playerid][0], 0.201999, 1.417481);
	PlayerTextDrawAlignment(playerid, UseLAlt[playerid][0], 1);
	PlayerTextDrawColor(playerid, UseLAlt[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, UseLAlt[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, UseLAlt[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, UseLAlt[playerid][0], 51);
	PlayerTextDrawFont(playerid, UseLAlt[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, UseLAlt[playerid][0], 1);

	UseLAlt[playerid][1] = CreatePlayerTextDraw(playerid,525.333435, 419.218597, "usebox");
	PlayerTextDrawLetterSize(playerid, UseLAlt[playerid][1], 0.000000, -0.547118);
	PlayerTextDrawTextSize(playerid, UseLAlt[playerid][1], 626.000122, 0.000000);
	PlayerTextDrawAlignment(playerid, UseLAlt[playerid][1], 1);
	PlayerTextDrawColor(playerid, UseLAlt[playerid][1], 0);
	PlayerTextDrawUseBox(playerid, UseLAlt[playerid][1], true);
	PlayerTextDrawBoxColor(playerid, UseLAlt[playerid][1], -5963521);
	PlayerTextDrawSetShadow(playerid, UseLAlt[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, UseLAlt[playerid][1], 0);
	PlayerTextDrawFont(playerid, UseLAlt[playerid][1], 0);

	UseLAlt[playerid][2] = CreatePlayerTextDraw(playerid, 628.666687, 419.218505, "usebox");
	PlayerTextDrawLetterSize(playerid, UseLAlt[playerid][2], 0.000000, 1.849589);
	PlayerTextDrawTextSize(playerid, UseLAlt[playerid][2], 522.666687, 0.000000);
	PlayerTextDrawAlignment(playerid, UseLAlt[playerid][2], 1);
	PlayerTextDrawColor(playerid, UseLAlt[playerid][2], 0);
	PlayerTextDrawUseBox(playerid, UseLAlt[playerid][2], true);
	PlayerTextDrawBoxColor(playerid, UseLAlt[playerid][2], 102);
	PlayerTextDrawSetShadow(playerid, UseLAlt[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, UseLAlt[playerid][2], 0);
	PlayerTextDrawFont(playerid, UseLAlt[playerid][2], 0);
	
	black_display[playerid] = TextDrawCreate(641.500000, 1.500000, "usebox");
	TextDrawLetterSize(black_display[playerid], 0.000000, 49.391975);
	TextDrawTextSize(black_display[playerid], -2.000000, 0.000000);
	TextDrawUseBox( black_display[playerid], true);
	TextDrawBoxColor(black_display[playerid], 0x00000099);
	//textdraw
/*	logo_blackfon_TD[0] = TextDrawCreate(583.7500, 10.3166, "Server~n~");
	TextDrawLetterSize(logo_blackfon_TD[0], 0.4000, 1.6000);
	TextDrawTextSize(logo_blackfon_TD[0], 589.0000, 0.0000);
	TextDrawAlignment(logo_blackfon_TD[0], 1);
	TextDrawColor(logo_blackfon_TD[0], -1);
	TextDrawSetOutline(logo_blackfon_TD[0], 1);
	TextDrawBackgroundColor(logo_blackfon_TD[0], 255);
	TextDrawFont(logo_blackfon_TD[0], 3);
	TextDrawSetProportional(logo_blackfon_TD[0], 1);
	TextDrawSetShadow(logo_blackfon_TD[0], 10);

	logo_blackfon_TD[1] = TextDrawCreate(575.7000, 22.3998, "RolePlay");
	TextDrawLetterSize(logo_blackfon_TD[1], 0.4000, 1.6000);
	TextDrawTextSize(logo_blackfon_TD[1], 581.9500, 0.0000);
	TextDrawAlignment(logo_blackfon_TD[1], 1);
	TextDrawColor(logo_blackfon_TD[1], -1);
	TextDrawSetOutline(logo_blackfon_TD[1], 3);
	TextDrawBackgroundColor(logo_blackfon_TD[1], 255);
	TextDrawFont(logo_blackfon_TD[1], 1);
	TextDrawSetProportional(logo_blackfon_TD[1], 1);
	TextDrawSetShadow(logo_blackfon_TD[1], 0);

	// podarok
	Podarok[playerid][0] = CreatePlayerTextDraw(playerid, 451.333312, 113.085205, "usebox");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][0], 0.000000, 7.426543);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][0], 194.000015, 0.000000);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][0], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][0], 0);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][0], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][0], 102);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][0], 0);
	PlayerTextDrawFont(playerid, Podarok[playerid][0], 0);
	
	Podarok[playerid][1] = CreatePlayerTextDraw(playerid, 451.333312, 111.011184, "usebox");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][1], 0.000000, -0.150823);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][1], 193.999984, 0.000000);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][1], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][1], 0);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][1], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][1], -5963521);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][1], 0);
	PlayerTextDrawFont(playerid, Podarok[playerid][1], 0);

	Podarok[playerid][2] = CreatePlayerTextDraw(playerid, 209.333282, 121.540664, "New Textdraw");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][2], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][2], 49.999969, 50.192565);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][2], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][2], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][2], 255);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, Podarok[playerid][2], 51);
	PlayerTextDrawFont(playerid, Podarok[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, Podarok[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, Podarok[playerid][2], true);
	PlayerTextDrawSetPreviewModel(playerid, Podarok[playerid][2], 19057);
	PlayerTextDrawSetPreviewRot(playerid, Podarok[playerid][2], 0.000000, 0.000000, -40.000000, 1.000000);

	Podarok[playerid][3] = CreatePlayerTextDraw(playerid, 269.333282, 121.540664, "New Textdraw");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][3], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][3], 49.999969, 50.192565);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][3], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][3], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, Podarok[playerid][3], 51);
	PlayerTextDrawFont(playerid, Podarok[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, Podarok[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, Podarok[playerid][3], true);
	PlayerTextDrawSetPreviewModel(playerid, Podarok[playerid][3], 19058);
	PlayerTextDrawSetPreviewRot(playerid, Podarok[playerid][3], 0.000000, 0.000000, -40.000000, 1.000000);

	Podarok[playerid][4] = CreatePlayerTextDraw(playerid, 329.333282, 121.540664, "New Textdraw");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][4], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][4], 49.999969, 50.192565);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][4], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][4], -1);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][4], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, Podarok[playerid][4], 51);
	PlayerTextDrawFont(playerid, Podarok[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, Podarok[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, Podarok[playerid][4], true);
	PlayerTextDrawSetPreviewModel(playerid, Podarok[playerid][4], 19056);
	PlayerTextDrawSetPreviewRot(playerid, Podarok[playerid][4], 0.000000, 0.000000, -40.000000, 1.000000);

	Podarok[playerid][5] = CreatePlayerTextDraw(playerid, 389.333282, 121.540664, "New Textdraw");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][5], 0.449999, 1.600000);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][5], 49.999969, 50.192565);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][5], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][5], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, Podarok[playerid][5], 51);
	PlayerTextDrawFont(playerid, Podarok[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, Podarok[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, Podarok[playerid][5], true);
	PlayerTextDrawSetPreviewModel(playerid, Podarok[playerid][5], 19054);
	PlayerTextDrawSetPreviewRot(playerid, Podarok[playerid][5], 0.000000, 0.000000, -40.000000, 1.000000);

	Podarok[playerid][6] = CreatePlayerTextDraw(playerid, 419.666625, 97.066673, "EXIT");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][6], 0.314666, 1.160296);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][6], 448.333465, 13.273000);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][6], 1);
	PlayerTextDrawColor(playerid, Podarok[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][6], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][6], -256);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, Podarok[playerid][6], 51);
	PlayerTextDrawFont(playerid, Podarok[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, Podarok[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, Podarok[playerid][6], true);

	Podarok[playerid][7] = CreatePlayerTextDraw(playerid, 279.333435, 94.992591, "_");
	PlayerTextDrawLetterSize(playerid, Podarok[playerid][7], 0.328666, 1.284740);
	PlayerTextDrawTextSize(playerid, Podarok[playerid][7], -44.999996, -0.829629);
	PlayerTextDrawAlignment(playerid, Podarok[playerid][7], 3);
	PlayerTextDrawColor(playerid, Podarok[playerid][7], -1);
	PlayerTextDrawUseBox(playerid, Podarok[playerid][7], true);
	PlayerTextDrawBoxColor(playerid, Podarok[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, Podarok[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, Podarok[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, Podarok[playerid][7], 51);
	PlayerTextDrawFont(playerid, Podarok[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, Podarok[playerid][7], 1);*/
