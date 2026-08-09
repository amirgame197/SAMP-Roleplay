	new tmpobjid;

    new carvid;

    massmediacar[0] = CreateVehicleEx(582, 1667.005, -1693.53699, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (1)
    CreateVehicleEx(582, 1667.005, -1697.53699, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (2)
    CreateVehicleEx(582, 1667.005, -1701.53699, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (3)
    CreateVehicleEx(582, 1667.00488, -1705.53613, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (4)
    CreateVehicleEx(582, 1667.00488, -1717.53613, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (5)
    CreateVehicleEx(582, 1667.00488, -1709.53613, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (7)
    CreateVehicleEx(582, 1667.00488, -1713.53613, 15.764, 90, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (8)
    CreateVehicleEx(582, 1648.00488, -1701.53613, 15.764, 270, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (9)
    CreateVehicleEx(582, 1648.00488, -1709.53613, 15.764, 270, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (10)
    CreateVehicleEx(582, 1648.00488, -1705.53613, 15.764, 270, 1, 2, CAR_SPAWN); //vehicle (Newsvan) (11)
    massmediacar[1] = CreateVehicleEx(488, 1666.88904, -1714.97803, 20.749, 90, 1, 2, CAR_SPAWN); //vehicle (News Chopper) (1)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////// ELEGY CAR CODE /////////////////////////////////////////////////////
    elegy_car = CreateVehicleEx(562,356.82901, -1808.73999, 4.549, 0.00,6,6,60);

    AddVehicleComponent(elegy_car, 1036);
    AddVehicleComponent(elegy_car, 1037);
    AddVehicleComponent(elegy_car, 1171);
    AddVehicleComponent(elegy_car, 1148);
    ChangeVehiclePaintjob(elegy_car, 2);

    tmpobjid = CreateDynamicObject(1088,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-70-percent", -65536);
    SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -65536);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.000, -0.047, 0.751, 5.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1053,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-90-percent", 0);
    SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -8388608);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.000, 1.321, 0.330, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1146,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-50-percent", -8388608);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.000, -2.111, 0.430, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "34", 130, "Arial", 125, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 1.060, -1.121, 0.711, 0.000, 274.400, -90.000);
    tmpobjid = CreateDynamicObject(19280,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.450, 0.070, 0.760, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19280,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, -0.440, 0.070, 0.760, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18647,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, -0.730, 0.060, -1.140, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18647,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.750, 0.000, -1.160, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19894,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 10973, "mall_sfse", "ws_grilleshade", 0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19480, "signsurf", "sign", 0);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, -0.611, 1.803, 0.213, -2.699, 7.599, 90.000);
    tmpobjid = CreateDynamicObject(19894,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 10973, "mall_sfse", "ws_grilleshade", 0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19480, "signsurf", "sign", 0);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.620, 1.838, 0.210, 0.000, -8.599, 270.000);
    tmpobjid = CreateDynamicObject(19894,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 10973, "mall_sfse", "ws_grilleshade", 0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19480, "signsurf", "sign", 0);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(335,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19523, "sampicons", "reeedgrad32", -1);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, -0.075, 2.402, 0.129, 0.000, 60.000, 0.000);
    tmpobjid = CreateDynamicObject(335,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19523, "sampicons", "reeedgrad32", -1);
    AttachDynamicObjectToVehicle(tmpobjid, elegy_car, 0.026, 2.402, -0.015, 0.000, -60.000, 0.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// INFERNUS CAR CODE ///////////////////////////////////////////////////
    infernus_car = CreateVehicleEx(411,347.10001, -1808.73999, 4.549, 0.00,7,0,60);

    tmpobjid = CreateDynamicObject(1146,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19523, "sampicons", "oranggrad32", -1);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 0.000, -2.382, 0.270, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1115,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "bwtilebroth", 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 0.000, 2.742, -0.584, -6.399, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "5", 130, "Webdings", 100, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, -1.165, 1.180, 0.233, 181.000, 278.000, 270.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "5", 130, "Webdings", 100, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, -1.165, 1.548, 0.207, 1.000, 96.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "A", 130, "Arial", 65, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, -1.531, -1.041, 0.665, 0.000, 90.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "MG", 130, "Arial", 65, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 1.261, -1.041, 0.664, 0.000, 270.000, 270.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "5", 130, "Webdings", 100, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, -1.151, 1.916, 0.182, 0.000, 106.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "//", 130, "Arial", 50, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 0.770, -2.501, 0.245, 0.000, 270.000, 270.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "STREET ROD", 130, "Arial", 35, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 0.940, -2.541, 0.237, 0.000, 270.000, 270.000);
    tmpobjid = CreateDynamicObject(11736,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_castironwalk", -16777216);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, -0.830, -2.432, 0.050, 90.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(11736,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_castironwalk", -16777216);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, -0.490, -2.432, 0.050, 90.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(11736,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_castironwalk", -16777216);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 0.820, -2.431, 0.050, 90.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(11736,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_castironwalk", -16777216);
    AttachDynamicObjectToVehicle(tmpobjid, infernus_car, 0.470, -2.441, 0.030, 90.000, 0.000, 0.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////// BULLET CAR CODE ////////////////////////////////////////////////////
    bullet_car = CreateVehicleEx(541,337.39999, -1808.73926, 4.549, 0.00,1,3,60);

    tmpobjid = CreateDynamicObject(1115,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "bwtilebroth", 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, 0.000, 2.372, -0.460, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1001,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, 0.000, -2.201, 0.280, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, 0.480, -2.171, 0.090, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, -0.480, -2.172, 0.090, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "n", 130, "Webdings", 80, 0, -5658199, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, -0.480, 1.020, 0.656, 2.731, 89.799, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "*", 130, "Monotype Corsiva", 199, 0, -8388608, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, -0.654, 0.825, 0.611, 0.000, 90.000, 17.200);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "AMG", 130, "Arial", 40, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, -0.590, -2.849, 0.107, -13.000, 270.000, 180.000);
    tmpobjid = CreateDynamicObject(1061,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", -1);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, 0.000, 1.561, 0.260, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18647,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, -0.760, 0.000, -1.010, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18647,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, bullet_car, 0.730, 0.000, -1.020, 0.000, 0.000, 0.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////// TURISMO CAR CODE ////////////////////////////////////////////////////
    turismo_car = CreateVehicleEx(451,327.72, -1808.73926, 4.549, 0.00,0,0,60);

    tmpobjid = CreateDynamicObject(1018,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -0.570, -1.521, -0.350, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "-", 130, "Arial", 40, 0, -65536, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -1.531, -2.335, 0.095, 0.000, 70.000, 90.000);
    tmpobjid = CreateDynamicObject(1115,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "bwtilebroth", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.000, 2.576, -0.668, 8.899, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1055,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", -1);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.000, 1.631, 0.050, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19523, "sampicons", "reeedgrad32", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -0.370, -1.119, 0.443, 290.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "bluedirt1", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.380, -1.120, 0.444, -105.000, 0.000, -180.000);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -0.812, -2.512, -0.210, 0.000, 0.000, -5.000);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.819, -2.514, -0.210, 180.000, 0.000, 185.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "5", 130, "Arial", 55, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 1.014, -1.050, -0.720, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "5", 130, "Arial", 55, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -1.014, -3.680, -0.727, 0.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "E", 130, "Arial", 35, 0, -65536, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 1.071, -1.227, 0.502, 0.000, 110.000, 270.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Power", 130, "Arial", 35, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 1.251, -2.371, 0.083, 0.000, 290.000, 270.000);
    tmpobjid = CreateDynamicObject(18673,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -0.640, -2.612, -1.940, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18673,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -0.490, -2.622, -1.940, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18673,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.640, -2.610, -1.940, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18673,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.490, -2.612, -1.940, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19419,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.000, -1.131, 0.450, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18648,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.720, 0.000, -1.240, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18648,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -0.780, 0.000, -1.240, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "A", 130, "Arial", 65, 0, -65536, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, -1.511, -1.051, 0.550, 0.000, 90.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "MG", 130, "Arial", 65, 0, -1, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 1.281, -1.051, 0.549, 180.000, 450.000, 450.000);
    tmpobjid = CreateDynamicObject(1018,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, turismo_car, 0.560, -1.511, -0.360, 0.000, 0.000, 0.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// PERRENIAL CAR CODE ///////////////////////////////////////////////////
    perennial_car = CreateVehicleEx(404,318, -1808.73926, 4.549, 0.00,6,0,60);

    tmpobjid = CreateDynamicObject(1115,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14668, "711c", "bwtilebroth", 0);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.000, 2.201, -0.250, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1181,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.900, -2.762, -0.170, 0.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(1072,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", -16777216);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.870, -1.000, -0.430, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1048,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", -16777216);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, -0.860, -0.230, -0.430, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1650,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19655, "mattubes", "reddirt1", -1);
    SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.480, -2.654, 0.396, 24.200, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19280,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, -0.470, 0.150, 0.940, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Premium", 130, "Arial", 40, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 1.010, -2.626, 0.149, 0.000, -25.000, 270.000);
    tmpobjid = CreateDynamicObject(19280,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.500, 0.150, 0.950, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1139,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.000, -2.241, 0.880, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "!", 130, "Webdings", 105, 0, -29696, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, -1.091, -0.760, 0.904, 0.000, 90.000, 90.000);

    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    SetDynamicObjectMaterialText(tmpobjid, 0, "G", 130, "GTAWEAPON3", 35, 0, -65281, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.916, -2.252, 0.250, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    SetDynamicObjectMaterialText(tmpobjid, 0, "G", 130, "GTAWEAPON3", 28, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.917, -2.259, 0.250, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "G", 130, "GTAWEAPON3", 20, 0, -65281, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.918, -2.260, 0.252, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "n", 130, "Webdings", 15, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.919, -2.265, 0.240, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "n", 130, "Webdings", 5, 0, -65281, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.920, -2.265, 0.235, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "n", 130, "Webdings", 4, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.919, -2.243, 0.284, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "INSTAGRAM", 130, "Arial", 20, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, perennial_car, 0.913, -1.800, 0.240, 0.000, 0.000, 0.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// INFERNUS SECOND CAR CODE ///////////////////////////////////////////////////
    infsecond_car = CreateVehicleEx(411,321.404,-1788.905,4.55, 180.00,93,0,60);

    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    SetDynamicObjectMaterialText(tmpobjid, 0, "O", 130, "Arial", 49, 0, -60269, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -0.450, -2.473, -0.489, 0.000, 0.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    SetDynamicObjectMaterialText(tmpobjid, 0, "O", 130, "Arial", 37, 0, -60269, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -0.630, -2.478, -0.540, 0.000, 0.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Vargas Je'aime", 130, "Segoe Script", 38, 1, -65281, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.900, -2.494, -0.540, 0.000, 0.000, 270.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    SetDynamicObjectMaterialText(tmpobjid, 0, "O", 130, "Arial", 49, 0, -60269, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -2.160, -2.474, -0.489, 0.000, 0.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -1);
    SetDynamicObjectMaterialText(tmpobjid, 0, "O", 130, "Arial", 37, 0, -60269, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -2.021, -2.483, -0.540, 0.000, 0.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "__", 120, "Arial", 80, 0, -16777216, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.000, -0.794, 0.337, 5.000, 90.000, 0.000);
    tmpobjid = CreateDynamicObject(1044,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14737, "whorewallstuff", "Pict1", -353638);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -0.490, -0.600, 0.412, 15.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1044,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14737, "whorewallstuff", "Pict1", -353638);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.460, -0.507, 0.432, 15.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1044,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14737, "whorewallstuff", "Pict1", -353638);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.470, 1.281, 0.057, -30.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1044,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 14737, "whorewallstuff", "Pict1", -353638);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -0.460, 1.268, 0.063, -30.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "____", 120, "Arial", 80, 1, -16777216, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.220, 2.880, -0.022, -10.000, 90.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "ooo", 130, "Arial", 35, 0, -256, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 1.961, 2.528, 0.400, 180.000, 0.000, 78.500);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "ooo", 130, "Arial", 35, 0, -256, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -1.950, 2.517, -0.780, 0.000, 0.000, 102.000);
    tmpobjid = CreateDynamicObject(19560,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, -0.708, 2.759, -0.229, 90.000, 0.000, 192.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "____", 120, "Arial", 80, 1, -16777216, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.010, 2.880, -0.022, -10.000, 90.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "__", 120, "Arial", 80, 0, -16777216, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.210, -0.784, 0.336, 5.000, 90.000, 0.000);
    tmpobjid = CreateDynamicObject(19939,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.000, -2.452, -0.050, 0.000, 90.000, 90.000);
    tmpobjid = CreateDynamicObject(19560,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", 0);
    AttachDynamicObjectToVehicle(tmpobjid, infsecond_car, 0.710, 2.761, -0.219, 270.000, 0.000, -12.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// ZR 350 CAR CODE ///////////////////////////////////////////////////
    zr_car = CreateVehicleEx(477,331.137,-1789.243,4.55, 180.00,0,0,60);

    tmpobjid = CreateDynamicObject(19147,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", 0);
    SetDynamicObjectMaterial(tmpobjid, 1, 18996, "mattextures", "sampred", -1);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, -0.670, 2.641, -0.206, 19.700, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19147,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", 0);
    SetDynamicObjectMaterial(tmpobjid, 1, 18996, "mattextures", "sampred", -1);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, 0.679, 2.648, -0.203, 18.800, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18749,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, 0.000, -2.780, 0.080, -20.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1091,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", -1);
    SetDynamicObjectMaterial(tmpobjid, 2, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, 0.000, 1.121, 0.310, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "N", 130, "Wingdings", 100, 0, -65536, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, -1.211, 2.421, 0.120, 0.000, -79.839, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "xXx", 130, "Arial", 85, 0, -65536, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, 1.100, -0.140, 0.685, 0.000, 90.000, 270.000);
    tmpobjid = CreateDynamicObject(1049,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18996, "mattextures", "sampblack", -1);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, 0.000, -2.522, 0.350, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18647,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, -0.800, 0.000, -1.040, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(18647,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 19480, "signsurf", "sign", 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, 0.750, 0.000, -1.040, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "n", 130, "Webdings", 31, 0, -16777216, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, -0.630, 2.795, -0.990, 0.000, 0.000, 90.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "n", 130, "Webdings", 31, 0, -16777216, 0, 0);
    AttachDynamicObjectToVehicle(tmpobjid, zr_car, -1.981, 2.790, -0.990, 0.000, 0.000, 90.000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////// SANDKING CARS CODE ///////////////////////////////////////////////////
    sandcar1 = CreateVehicleEx(495,314.397, -1801.85254, 5.12, 270,3,3,60);

    sandcar2 = CreateVehicleEx(495,314.397, -1797.85303, 5.12, 270,0,0,60);

    tmpobjid = CreateDynamicObject(1148,0.0,0.0,-1000.0,0.0,0.0,0.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", 168430335);
    SetDynamicObjectMaterial(tmpobjid, 1, -1, "none", "none", -16119286);
    AttachDynamicObjectToVehicle(tmpobjid, sandcar2, 1.061, -1.651, -0.180, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1141,0.0,0.0,-1000.0,0.0,0.0,0.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -10088192);
    AttachDynamicObjectToVehicle(tmpobjid, sandcar2, -1.040, -1.932, -0.078, 42.400, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(1157,0.0,0.0,-1000.0,0.0,0.0,0.0);
    SetDynamicObjectMaterial(tmpobjid, 0, -1, "none", "none", -13487361);
    AttachDynamicObjectToVehicle(tmpobjid, sandcar2, -1.040, 1.639, -0.450, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "////{ff0000}A{888888}MG", 130, "Arial", 40, 0, -7829368, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, sandcar2, -0.470971, -2.250833, -0.049996, 0.000000, 0.000000, -90.000000);
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	new carvid_1;
	new carvid_2;
	new carvid_3;
	new carvid_4;
	new carvid_5;
	new carvid_6;
	new carvid_7;
	new carvid_8;
    new carvid_9;
    new carvid_10;
    new carvid_11;
    new carvid_12;
    new carvid_13;
    new carvid_14;
    new carvid_15,
        carvid_16,
        carvid_17,
        carvid_18,
        carvid_19,
        carvid_20,
        carvid_21,
        carvid_22,
        carvid_23,
        carvid_24,
        carvid_25,
        carvid_26,
        carvid_27,
        carvid_28,
        carvid_29,
        carvid_30,
        carvid_31,
        carvid_32,
        carvid_33,
        carvid_34,
        carvid_35,
        carvid_36,
        carvid_37,
        carvid_38,
        carvid_39,
        carvid_40,
        carvid_41;

	faggio_bomj[0] = CreateVehicleEx(462,1131.91699, -1732.55896, 13.444,180.0,1,15,420);
    carvid_1 = CreateVehicleEx(462,1127.91699, -1732.55859, 13.444,180.0,1,15,420);
    carvid_2 = CreateVehicleEx(462,1129.91699, -1732.55859, 13.444,180.0,1,15,420);
    carvid_3 = CreateVehicleEx(462,1135.91699, -1732.55896, 13.444,180.0,1,15,420);
    carvid_4 = CreateVehicleEx(462,1133.91699, -1732.55859, 13.444,180.0,1,15,420);
    carvid_5 = CreateVehicleEx(462,1139.71191, -1753.47656, 13.247, 0.00,1,15,420);
    carvid_6 = CreateVehicleEx(462,1137.71191, -1753.47656, 13.247, 0.00,1,15,420);
    carvid_7 = CreateVehicleEx(462,1135.71191, -1753.47656, 13.247, 0.00,1,15,420);
    carvid_8 = CreateVehicleEx(462,1133.71191, -1753.47656, 13.247, 0.00,1,15,420);
    carvid_9 = CreateVehicleEx(462,1131.71191, -1753.47656, 13.247, 0.00,1,15,420);
    carvid_10 = CreateVehicleEx(462,1777.027,-1933.587,13.003,0.0,1,15,420);
    carvid_11 = CreateVehicleEx(462,1778.521,-1933.587,13.003,0.0,1,15,420);
    carvid_12 = CreateVehicleEx(462,1780.316,-1933.587,13.003,0.0,1,15,420);
    carvid_13 = CreateVehicleEx(462,1782.210,-1933.587,13.003,0.0,1,15,420);
    carvid_14 = CreateVehicleEx(462,1783.743,-1933.587,13.003,0.0,1,15,420); 
    carvid_15 = CreateVehicleEx(462,1785.482,-1933.587,13.003,0.0,1,15,420);
    carvid_16 = CreateVehicleEx(462,1787.094,-1933.587,13.003,0.0,1,15,420);
    carvid_17 = CreateVehicleEx(462,1788.8242,-1933.587,13.003,0.0,1,15,420);
    carvid_18 = CreateVehicleEx(462,2224.9138,-2218.4604,13.22,222,1,15,420);
    carvid_19 = CreateVehicleEx(462,2226.1311,-2217.3618,13.22,222,1,15,420);
    carvid_20 = CreateVehicleEx(462,2227.4600,-2216.1624,13.22,222,1,15,420);
    carvid_21 = CreateVehicleEx(462,2228.7371,-2215.0098,13.22,222,1,15,420);
    carvid_22 = CreateVehicleEx(462,2223.7112,-2219.5459,13.22,222,1,15,420);
    carvid_23 = CreateVehicleEx(462,2222.4832,-2220.6616,13.22,222,1,15,420);
    carvid_24 = CreateVehicleEx(462,-105.600, -302.000, 1.400, 270,1,15,420);
    carvid_25 = CreateVehicleEx(462,-105.600, -304.000, 1.400, 270,1,15,420);
    carvid_26 = CreateVehicleEx(462,-105.600, -306.000, 1.400, 270,1,15,420);
    carvid_27 = CreateVehicleEx(462,-105.600, -308.000, 1.400, 270,1,15,420);
    carvid_28 = CreateVehicleEx(462,-105.600, -310.000, 1.400, 270,1,15,420);
    carvid_29 = CreateVehicleEx(462,-105.600, -312.000, 1.400, 270,1,15,420);
    carvid_30 = CreateVehicleEx(462,-2004.0700,-2429.0000,30.2200, 135,1,15,420);
    carvid_31 = CreateVehicleEx(462,-2004.0700+2,-2429.0000-2,30.2200, 135,1,15,420);
    carvid_32 = CreateVehicleEx(462,-2004.0700+4,-2429.0000-4,30.2200, 135,1,15,420);
    carvid_33 = CreateVehicleEx(462,-2004.0700+6,-2429.0000-6,30.2200, 135,1,15,420);
    carvid_34 = CreateVehicleEx(462,-2004.0700+8,-2429.0000-8,30.2200, 135,1,15,420);
    carvid_35 = CreateVehicleEx(462,-2004.0700+10,-2429.0000-10,30.2200, 135,1,15,420);
    carvid_36 = CreateVehicleEx(462,-769.33801, -1858.18005, 11.86, 174,1,15,420);
    carvid_37 = CreateVehicleEx(462,-773.33789, -1857.79102, 11.86, 174,1,15,420);
    carvid_38 = CreateVehicleEx(462,-771.33789, -1858, 11.86, 174,1,15,420);
    carvid_39 = CreateVehicleEx(462,-767.33789, -1858.44995, 11.86, 174,1,15,420);
    carvid_40 = CreateVehicleEx(462,-765.33789, -1858.69995, 11.86, 174,1,15,420);
    carvid_41 = faggio_bomj[1] = CreateVehicleEx(462,-763.33789, -1859, 11.86, 174,1,15,420);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, faggio_bomj[0], 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, faggio_bomj[0], 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_1, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_1, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_2, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_2, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_3, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_3, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_4, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_4, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_5, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_5, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_6, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_6, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_7, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_7, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_8, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_8, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_9, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_9, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_10, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_10, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_11, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_11, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_12, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_12, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_13, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_13, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_14, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_14, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_15, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_15, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_16, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_16, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_17, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_17, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_18, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_18, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_19, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_19, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_20, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_20, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_21, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_21, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_22, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_22, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_23, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_23, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_24, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_24, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_25, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_25, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_26, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_26, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_27, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_27, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_28, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_28, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_29, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_29, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_30, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_30, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_31, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_31, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_32, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_32, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_33, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_33, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_34, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_34, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_35, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_35, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_36, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_36, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_37, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_37, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_38, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_38, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_39, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_39, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_40, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_40, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

    tmpobjid = CreateDynamicObject(11739,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "redlaser", 0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_41, 0.000, 0.500, 0.260, 90.000, 0.000, 180.000);
    tmpobjid = CreateDynamicObject(19477,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    SetDynamicObjectMaterial(tmpobjid, 1, 19523, "sampicons", "reeedgrad32", 0);
    SetDynamicObjectMaterialText(tmpobjid, 0, "Eco", 130, "Segoe Script", 28, 1, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid_41, 0.002, 0.579, 0.270, 0.000, 0.000, 90.000);

	prodworker[0] = CreateVehicleEx(456, -3.27, -338.216, 5.68, 90, 58, 1, 360); //vehicle (Yankee) (1)
	CreateVehicleEx(456, -3.26953, -318.21582, 5.68, 90, 58, 1, 360); //vehicle (Yankee) (2)
	CreateVehicleEx(456, -3.26953, -322.21582, 5.68, 90, 58, 1, 360); //vehicle (Yankee) (3)
	CreateVehicleEx(456, -3.26953, -326.21582, 5.68, 90, 58, 1, 360); //vehicle (Yankee) (4)
	CreateVehicleEx(456, -3.26953, -330.21582, 5.68, 90, 58, 1, 360); //vehicle (Yankee) (5)
	CreateVehicleEx(456, -3.27, -334.216, 5.68, 90, 58, 1, 360); //vehicle (Yankee) (6)
	CreateVehicleEx(456, -3.26953, -346.21582, 5.69228, 90, 58, 1, 360); //vehicle (Yankee) (7)
	prodworker[1] = CreateVehicleEx(456, -3.26953, -342.21582, 5.69228, 90, 58, 1, 360); //vehicle (Yankee) (8)

	fbicar[0] = CreateVehicleEx(427, -2429.125, 514.98901, 30.178, 220, 0, 1, CAR_SPAWN); //vehicle (Enforcer) (1)
	CreateVehicleEx(487, -2471.88599, 516.12201, 51.329, 270, 0, 0, CAR_SPAWN); //vehicle (Maverick) (1)
	CreateVehicleEx(487, -2471.88599, 530.12201, 51.329, 270, 0, 0, CAR_SPAWN); //vehicle (Maverick) (3)
	CreateVehicleEx(427, -2425.48096, 518.08698, 30.178, 219.996, 0, 1, CAR_SPAWN); //vehicle (Enforcer) (2)
	CreateVehicleEx(490, -2418.93896, 525.08197, 30.25, 230, 0, 0, CAR_SPAWN); //vehicle (FBI Rancher) (1)
	CreateVehicleEx(528, -2422.08789, 521.62891, 30.05372, 229.999, 0, 0, CAR_SPAWN); //vehicle (FBI Truck) (3)
	CreateVehicleEx(490, -2416.32007, 528.63202, 30.25, 240, 0, 0, CAR_SPAWN); //vehicle (FBI Rancher) (3)
	CreateVehicleEx(490, -2414.73706, 531.979, 30.25, 250, 0, 0, CAR_SPAWN); //vehicle (FBI Rancher) (4)
	CreateVehicleEx(490, -2413.45996, 535.71301, 30.25, 260, 0, 0, CAR_SPAWN); //vehicle (FBI Rancher) (5)
	fbicar[1] = CreateVehicleEx(490, -2413.1499, 539.88202, 30.25, 270, 0, 0, CAR_SPAWN); //vehicle (FBI Rancher) (6)

    veh_bus[0] = CreateVehicleEx(431, 1080.86804, -1769.67505, 13.595, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 1080.86914, -1775.5498, 13.595, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 1261.37097, -1337.90002, 13.382, 180, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 1261.37097, -1306.89941, 13.382, 180, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 1261.37097, -1368.89941, 13.382, 180, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 1080.95203, -1763.84399, 13.595, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, -1970.84302, 98.666, 27.938, 90, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, -1970.84277, 103.66504, 27.938, 90, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 2807.51392, 1351.72998, 11.008, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 2807.51367, 1326.20898, 11.008, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 2807.51367, 1332.50879, 11.008, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 2807.51367, 1338.9082, 11.008, 270, 0, 0, CAR_SPAWN);
    CreateVehicleEx(431, 2807.51367, 1345.34961, 11.008, 270, 0, 0, CAR_SPAWN);
    veh_bus[1] = CreateVehicleEx(431, 1081.03796, -1757.93799, 13.607, 270, 0, 0, CAR_SPAWN);

    new taxi_obj, taxi_obj2, taxi;

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    veh_taxi[0] = CreateVehicleEx(420, 1062.70203, -1775.53796, 13.194, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, veh_taxi[0], -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, veh_taxi[0], -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70203, -1772.69202, 13.194, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, -1975.03699, 185.647, 27.538, 90, 6, 6, CAR_SPAWN); //vehicle (Taxi) (1)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, -1975.03613, 175.64648, 27.538, 90, 6, 6, CAR_SPAWN); //vehicle (Taxi) (2)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, -1975.03613, 180.64648, 27.538, 90, 6, 6, CAR_SPAWN); //vehicle (Taxi) (3)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 2794.79004, 1295.073, 10.6, 180, 6, 6, CAR_SPAWN); //vehicle (Taxi) (4)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 2791.6001, 1295.073, 10.6, 180, 6, 6, CAR_SPAWN); //vehicle (Taxi) (5)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 2788.3999, 1295.07227, 10.6, 180, 6, 6, CAR_SPAWN); //vehicle (Taxi) (6)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 2782, 1295.07227, 10.6, 180, 6, 6, CAR_SPAWN); //vehicle (Taxi) (7)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 2785.19922, 1295.07227, 10.6, 180, 6, 6, CAR_SPAWN); //vehicle (Taxi) (8)
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70203, -1769.646, 13.194, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70203, -1763.79907, 13.194, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70117, -1766.79883, 13.194, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70129, -1752.0282, 13.20848, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70117, -1760.79883, 13.20848, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70117, -1757.92773, 13.20848, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    taxi = CreateVehicleEx(420, 1062.70117, -1754.92773, 13.20848, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, taxi, -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, taxi, -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

    taxi_obj = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    taxi_obj2 = CreateObject(19476, 0.000000, 0.000000, -1000.000000, 0.000000, 0.000000, 0.000000, 300.000000);
    SetObjectMaterialText(taxi_obj, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    SetObjectMaterialText(taxi_obj2, "œÀ¿“ÕŒ≈ “¿ —»", 0, 120, "Arial", 70, 1, -256, 0, 1);
    veh_taxi[1] = CreateVehicleEx(420, 1062.70117, -1749.12732, 13.20848, 270, 6, 0, CAR_SPAWN);
    AttachObjectToVehicle(taxi_obj, veh_taxi[1], -0.024757, 0.484761, 0.677159, 0.000000, -60.599971, -269.099182);
    AttachObjectToVehicle(taxi_obj2, veh_taxi[1], -0.000459, -1.512194, 0.659652, 0.000000, -57.899959, -90.000000);

	bolkalv_veh[0] = CreateVehicleEx(416, 1604.38, 1841.48999, 11.12, 0.00, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (1)
	CreateVehicleEx(416, 1612.37988, 1841.48926, 11.12, 0.00, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (2)
	CreateVehicleEx(416, 1608.37988, 1841.48926, 11.12, 0.00, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (3)
    CreateVehicleEx(487, 1606.58899, 1810.64099, 30.734, 0.00, 1, 17, CAR_SPAWN);
	bolkalv_veh[1] = CreateVehicleEx(416, 1600.37988, 1841.48926, 11.12, 0.00, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (4)

	bolkasf_veh[0] = CreateVehicleEx(416, -2639.51489, 628.31702, 14.753, 270, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (1)
	CreateVehicleEx(416, -2631.51465, 628.31641, 14.753, 270, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (2)
	CreateVehicleEx(416, -2623.51465, 628.31641, 14.753, 270, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (3)
    CreateVehicleEx(487, -2663.16309, 608.00598, 66.359, 0.00, 1, 17, CAR_SPAWN);
	bolkasf_veh[1] = CreateVehicleEx(416, -2615.51465, 628.31641, 14.753, 270, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (4)

	vvcveh[0] = CreateVehicleEx(425,365.2999900,2546.5000000,17.4000000,180.0000000,95,10,CAR_SPAWN);
	 //Hunter
	CreateVehicleEx(548,348.0996100,2537.5000000,18.6000000,182.0000000,120,86,CAR_SPAWN);
	 //Cargobob
	CreateVehicleEx(519,415.7000100,2445.1001000,17.5000000,0.0000000,245,245,CAR_SPAWN);
	 //Shamal
	CreateVehicleEx(519,393.7999900,2445.1001000,17.5000000,0.0000000,245,245,CAR_SPAWN);
	 //Shamal
	CreateVehicleEx(519,404.5000000,2461.5000000,17.5000000,0.0000000,245,245,CAR_SPAWN);
	 //Shamal
	CreateVehicleEx(520,325.6000100,2540.8000500,17.7000000,180.0000000,-1,-1,CAR_SPAWN);
	 //Hydra
	CreateVehicleEx(520,290.8999900,2540.8000500,17.7000000,179.9950000,-1,-1,CAR_SPAWN);
	 //Hydra
	CreateVehicleEx(470,397.2999900,2529.8000500,16.7000000,90.0000000,95,10,CAR_SPAWN); //Patriot
	CreateVehicleEx(470,397.2999900,2534.1999500,16.7000000,90.0000000,95,10,CAR_SPAWN); //Patriot
	CreateVehicleEx(500,389.1000100,2545.5000000,16.8000000,180.0000000,120,86,CAR_SPAWN);
	 //Mesa
	CreateVehicleEx(500,393.6000100,2545.5000000,16.8000000,180.0000000,120,86,CAR_SPAWN); //Mesa
	CreateVehicleEx(455,371.5996100,2591.0996100,17.1000000,193.9970000,123, 123,CAR_SPAWN);
	vvcveh[1] = CreateVehicleEx(487,379.2000100,2537.1999500,16.8000000,182.0000000,123,86,CAR_SPAWN);//Maverick
	
	sfpdcar[0] = CreateVehicleEx(597, -1584.0024, 749.6013, -5.5355, 180.0000,53, 1, CAR_SPAWN); 
    bulletboostsf = CreateVehicleEx(541,-1573.73828, 722.38086, -5.542, 90,0,1,CAR_SPAWN);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, 0.261, 2.427, -0.220, 0.000, 0.000, 176.500);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, -0.259, 2.438, -0.210, 0.000, 179.800, 179.900);
    tmpobjid = CreateDynamicObject(18646,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, -0.370, -0.210, 0.690, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 90, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, 0.023265, 1.374218, 0.298810, 0.000000, -88.199943, 89.299964);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, 1.052642, -1.736079, 0.198805, 0.000000, 0.000000, 0.000000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, -1.049396, -1.664940, 0.208806, 0.000000, 0.000000, -178.199951);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "~", 100, "Webdings", 90, 0, -65536, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostsf, -0.009455, -1.101057, 0.501685, 0.000000, -80.199905, -90.001144);
    boost_veh_lvl[bulletboostsf] = 10;
    braking_veh_lvl[bulletboostsf] = 8;
    carvid = CreateVehicleEx(541,-1573.73901, 718.28101, -5.542, 90,0,1,CAR_SPAWN);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.261, 2.427, -0.220, 0.000, 0.000, 176.500);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.259, 2.438, -0.210, 0.000, 179.800, 179.900);
    tmpobjid = CreateDynamicObject(18646,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.370, -0.210, 0.690, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 90, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.023265, 1.374218, 0.298810, 0.000000, -88.199943, 89.299964);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.052642, -1.736079, 0.198805, 0.000000, 0.000000, 0.000000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.049396, -1.664940, 0.208806, 0.000000, 0.000000, -178.199951);
    boost_sfpdcar = CreateVehicleEx(560,-1573.76697, 726.63898, -5.437,90.0,0,0,CAR_SPAWN);
    markcarid[1][0]=boost_sfpdcar;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "~", 100, "Webdings", 90, 0, -65536, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_sfpdcar, -0.001300, -1.342470, 0.594511, 0.000000, -59.299953, -90.000000);
    boost_veh_lvl[boost_sfpdcar] = 10;
    braking_veh_lvl[boost_sfpdcar] = 8;
    carvid = CreateVehicleEx(560,-1573.7666, 742.53809, -5.437,90.0,0,0,CAR_SPAWN);
    markcarid[1][1]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,-1573.7666, 738.63867, -5.437,90.0,0,0,CAR_SPAWN);
    markcarid[1][2]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,-1573.7666, 734.63867, -5.437,90.0,0,0,CAR_SPAWN);
    markcarid[1][3]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,-1573.7666, 730.63867, -5.437,90.0,0,0,CAR_SPAWN);
    markcarid[1][4]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "SFPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
	CreateVehicleEx(597, -1579.9634, 749.6013, -5.5355, 180.0000,53, 1, CAR_SPAWN); 
	CreateVehicleEx(523,-1632.8319, 693.9442, -5.7421, 180.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(523,-1628.9219, 693.9442, -5.7421, 180.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(523,-1624.6208, 693.9442, -5.7421, 180.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(523,-1620.7108, 693.9442, -5.7421, 180.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(523,-1616.8008, 693.9442, -5.7421, 180.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(523,-1612.4998, 693.9442, -5.7421, 180.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(528,-1639.7885, 670.1018, -5.1330, -90.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(528,-1639.7885, 674.1968, -5.1330, -90.0000,0,1,CAR_SPAWN); 
	CreateVehicleEx(528,-1639.5917, 666.0528, -5.4797, -90.0000,53,53,CAR_SPAWN); 
	CreateVehicleEx(497, -1680.9290, 704.8461, 30.7351, 127.0000,79,1,CAR_SPAWN); 
	CreateVehicleEx(601, -1622.965, 653.932, -5.450, 90.0000,1,79,CAR_SPAWN); 
	sfpdcar[1] = CreateVehicleEx(427,-1638.7850,653.7558,-5.1094,271.5658,1,79,CAR_SPAWN);

	ruscar[0] = CreateVehicleEx(580,964.5038,1707.7654,8.4717,270.1920,0,0,CAR_SPAWN); 
	CreateVehicleEx(580,956.1552,1707.7443,8.4642,270.0861,0,0,CAR_SPAWN); 
	CreateVehicleEx(409,950.5296,1716.1368,8.4151,180.2047,0,0,CAR_SPAWN); 
	CreateVehicleEx(487,955.2507,1754.7340,8.8090,227.3316,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6653,1742.5369,8.6459,89.9983,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6631,1738.1848,8.6445,89.9981,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6636,1733.8856,8.6452,89.9983,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6652,1729.5123,8.6482,89.9982,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6371,1725.3397,8.6656,90.2309,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6531,1721.2339,8.6647,89.9953,0,0,CAR_SPAWN); 
	CreateVehicleEx(579,983.6689,1746.4585,8.6421,89.9979,0,0,CAR_SPAWN); 
	ruscar[1] = CreateVehicleEx(413,972.7570,1700.6257,8.7394,180.3831,0,0,CAR_SPAWN);

	lcncar[0] =	CreateVehicleEx(445,1477.7389,718.0078,10.6538,104.1924,0,0,CAR_SPAWN); 
	CreateVehicleEx(409,1488.6670,719.5148,10.6790,88.6081,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1499.1523,718.1288,10.6402,76.7363,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1413.6324,743.1207,10.6295,270.0000,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1413.6324,746.2971,10.6421,270.0000,0,0,CAR_SPAWN);
	CreateVehicleEx(445,1413.6324,749.4462,10.6418,270.0000,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1413.6324,752.6494,10.6421,270.0000,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1413.6324,755.9149,10.6496,270.0000,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1413.6324,759.0656,10.6428,270.0000,0,0,CAR_SPAWN); 
	CreateVehicleEx(445,1413.6324,762.2507,10.6625,270.0000,0,0,CAR_SPAWN); 
	CreateVehicleEx(487,1430.9792,788.0112,10.9864,179.1455,0,0,CAR_SPAWN);
	lcncar[1] = CreateVehicleEx(413,1413.2286,765.5284,10.9182,270.3839,0,0,CAR_SPAWN);

	ministrcar[0] = CreateVehicleEx(421,1245.4282,-2044.2001,59.7256,269.7390,1,1,CAR_SPAWN); //
	CreateVehicleEx(421,1245.1365,-2039.0664,59.7340,270.0924,1,1,CAR_SPAWN); //
	CreateVehicleEx(421,1245.0253,-2034.8112,59.7373,270.9549,1,1,CAR_SPAWN); //
	CreateVehicleEx(421,1277.7109,-2045.2172,58.9149,88.4058,1,1,CAR_SPAWN); //
	CreateVehicleEx(421,1277.6558,-2039.7623,58.8943,89.4921,1,1,CAR_SPAWN); //
	CreateVehicleEx(421,1277.6003,-2035.1647,58.8768,90.0355,1,1,CAR_SPAWN); //
	CreateVehicleEx(409,1243.1412,-2016.4199,59.7680,180.8818,1,1,CAR_SPAWN); //
	CreateVehicleEx(487,1115.6240,-2053.1128,74.5968,0.0371,1,1,CAR_SPAWN); //
	CreateVehicleEx(428,1256.5734,-2010.1486,59.6427,180.0219,1,1,CAR_SPAWN); //
	CreateVehicleEx(428,1261.7257,-2010.0039,59.4955,180.5654,1,1,CAR_SPAWN); //
	CreateVehicleEx(428,1266.7100,-2009.7605,59.3536,182.1399,1,1,CAR_SPAWN); //
	ministrcar[1] = CreateVehicleEx(487,1116.4135,-2020.6450,74.6070,359.4370,1,1,CAR_SPAWN); //

	lvpdcar[0] = CreateVehicleEx(598,2268.9678,2443.6958,10.5668,359.5409,53, 1,CAR_SPAWN); //
    bulletboostlv = CreateVehicleEx(541,2256.09009, 2459.33008, 10.52, 180,0,1,CAR_SPAWN);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, 0.261, 2.427, -0.220, 0.000, 0.000, 176.500);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, -0.259, 2.438, -0.210, 0.000, 179.800, 179.900);
    tmpobjid = CreateDynamicObject(18646,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, -0.370, -0.210, 0.690, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 90, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, 0.023265, 1.374218, 0.298810, 0.000000, -88.199943, 89.299964);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, 1.052642, -1.736079, 0.198805, 0.000000, 0.000000, 0.000000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, -1.049396, -1.664940, 0.208806, 0.000000, 0.000000, -178.199951);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "~", 100, "Webdings", 90, 0, -65536, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostlv, -0.009455, -1.101057, 0.501685, 0.000000, -80.199905, -90.001144);
    boost_veh_lvl[bulletboostlv] = 10;
    braking_veh_lvl[bulletboostlv] = 8;
    carvid = CreateVehicleEx(541,2260.48535, 2459.33008, 10.52, 180,0,1,CAR_SPAWN);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.261, 2.427, -0.220, 0.000, 0.000, 176.500);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.259, 2.438, -0.210, 0.000, 179.800, 179.900);
    tmpobjid = CreateDynamicObject(18646,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.370, -0.210, 0.690, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 90, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.023265, 1.374218, 0.298810, 0.000000, -88.199943, 89.299964);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.052642, -1.736079, 0.198805, 0.000000, 0.000000, 0.000000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.049396, -1.664940, 0.208806, 0.000000, 0.000000, -178.199951);
    boost_lvpdcar = CreateVehicleEx(560,2282.18994, 2459.33008, 10.625,180.0,0,0,CAR_SPAWN);
    markcarid[2][0]=boost_lvpdcar;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "~", 100, "Webdings", 90, 0, -65536, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lvpdcar, -0.001300, -1.342470, 0.594511, 0.000000, -59.299953, -90.000000);
    boost_veh_lvl[boost_lvpdcar] = 10;
    braking_veh_lvl[boost_lvpdcar] = 8;
    carvid = CreateVehicleEx(560,2277.8894, 2459.33008, 10.625,180.0,0,0,CAR_SPAWN);
    markcarid[2][1]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,2273.5, 2459.33008, 10.625,180.0,0,0,CAR_SPAWN);
    markcarid[2][2]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,2276.73389, 2424.83398, 10.625,90.0,0,0,CAR_SPAWN);
    markcarid[2][3]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,2284.73389, 2424.83398, 10.625,90.0,0,0,CAR_SPAWN);
    markcarid[2][4]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LVPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
	CreateVehicleEx(598,2273.5706,2443.7290,10.5665,0.6987,53, 1, CAR_SPAWN); //
	CreateVehicleEx(598,2277.9482,2443.7490,10.5654,359.8027,53, 1, CAR_SPAWN); //
	CreateVehicleEx(598,2282.1309,2443.7957,10.5660,359.7104,53, 1, CAR_SPAWN); //
	lvpdcar[1] = CreateVehicleEx(497,2325.19995117,2466.10009766,38.90000153,0.00000000,-1,1,CAR_SPAWN);
    
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Ã‡¯ËÌ˚ ÓÍÓÎÓ Ú˛¸Ï˚
    jailcars[0] = CreateVehicleEx(427,1054.5422,2412.6377,11.0250,0.0,123, 125,CAR_SPAWN);
    CreateVehicleEx(427,1049.8290,2412.6377,11.0250,0.0,123, 125,CAR_SPAWN);
    CreateVehicleEx(599,1044.5905,2413.1100,11.0250,0.0,123, 125,CAR_SPAWN);
    CreateVehicleEx(599,1039.6006,2413.1100,11.0250,0.0,123, 125,CAR_SPAWN);
    CreateVehicleEx(599,1034.6249,2413.1100,11.0250,0.0,123, 125,CAR_SPAWN);
    CreateVehicleEx(599,1029.4783,2413.1100,11.0250,0.0,123, 125,CAR_SPAWN);
    CreateVehicleEx(599,1024.4832,2413.1100,11.0250,0.0,123, 125,CAR_SPAWN);
    jailcars[1] = CreateVehicleEx(599,1019.4348,2413.1100,11.0250,0.0,123, 125,CAR_SPAWN);
    /////
    //Ï˝Ëˇ À—
    meriyalscar[0] = CreateVehicleEx(445, 1404.91211, -1775, 13.737, 90, 0, 0, CAR_SPAWN); //vehicle (Admiral) (1)
    CreateVehicleEx(445, 1404.91211, -1780, 13.737, 90, 0, 0, CAR_SPAWN); //vehicle (Admiral) (2)
    CreateVehicleEx(579, 1404.91211, -1785, 13.67643, 90, 0, 0, CAR_SPAWN); //vehicle (Huntley) (1)
    CreateVehicleEx(579, 1404.91211, -1790, 13.67643, 90, 0, 0, CAR_SPAWN); //vehicle (Huntley) (2)
    CreateVehicleEx(579, 1404.91211, -1795, 13.67643, 90, 0, 0, CAR_SPAWN); //vehicle (Huntley) (3)
    CreateVehicleEx(579, 1404.91211, -1800, 13.67643, 90, 0, 0, CAR_SPAWN); //vehicle (Huntley) (4)
    CreateVehicleEx(487,1555.1781,-1800.9248,13.7230,0.0,1,1,CAR_SPAWN); // Maverick
    meriyalscar[1] = CreateVehicleEx(602, 1404.91211, -1805, 13.78597, 90, 75, 77, CAR_SPAWN); //vehicle (Alpha) (1)
    //·ÓÎ¸ÌËˆ‡ ·ÓÎ¸ÌË˜Í‡ ÎÒ
    bolkals[0] = CreateVehicleEx(416, 1190.35303, -1377.099, 13.7, 0.00, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (2)
    CreateVehicleEx(416, 1178.18103, -1308.87903, 14.2, 270, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (3)
    CreateVehicleEx(487, 1160.49805, -1316.09094, 31.761, 0.00, 1, 17, CAR_SPAWN);
    bolkals[1] = CreateVehicleEx(416, 1178.18066, -1338.87891, 14.2, 270, 1, 17, CAR_SPAWN); //vehicle (Ambulance) (4)
    // Ï˝Ëˇ —‘
    meriyasfcar[0] = CreateVehicleEx(445, -2745, 348, 4.404, 0.00, 0, 0, CAR_SPAWN); //vehicle (Admiral) (1)
    CreateVehicleEx(445, -2745, 356, 4.404, 0.00, 0, 0, CAR_SPAWN); //vehicle (Admiral) (2)
    CreateVehicleEx(579, -2745, 403, 4.34343, 180, 0, 0, CAR_SPAWN); //vehicle (Huntley) (1)
    CreateVehicleEx(579, -2745, 395, 4.34343, 180, 0, 0, CAR_SPAWN); //vehicle (Huntley) (2)
    CreateVehicleEx(579, -2737, 410.5, 4.34343, 90, 0, 0, CAR_SPAWN); //vehicle (Huntley) (3)
    CreateVehicleEx(602, -2755, 395, 4.45297, 180, 0, 0, CAR_SPAWN); //vehicle (Alpha) (1)
    meriyasfcar[1] = CreateVehicleEx(579, -2737, 421, 4.34343, 90, 0, 0, CAR_SPAWN); //vehicle (Huntley) (3)

    // Ï˝Ëˇ À¬
    meriyalvcar[0] = CreateVehicleEx(445, 2387.1001, 2490, 10.81, 0.00, 0, 0, CAR_SPAWN); //vehicle (Admiral) (1)
    CreateVehicleEx(445, 2387.09961, 2480, 10.81, 0.00, 0, 0, CAR_SPAWN); //vehicle (Admiral) (2)
    CreateVehicleEx(602, 2387.41211, 2432.05005, 10.72, 180, 0, 0, CAR_SPAWN); //vehicle (Alpha) (1)
    CreateVehicleEx(579, 2372.38599, 2451, 10.771, 0.00, 0, 0, CAR_SPAWN); //vehicle (Huntley) (1)
    CreateVehicleEx(579, 2372.38574, 2443, 10.771, 0.00, 0, 0, CAR_SPAWN); //vehicle (Huntley) (2)
    CreateVehicleEx(579, 2372.38574, 2459, 10.771, 0.00, 0, 0, CAR_SPAWN); //vehicle (Huntley) (3)
    meriyalvcar[1] = CreateVehicleEx(579, 2372.38574, 2435, 10.771, 0.00, 0, 0, CAR_SPAWN); //vehicle (Huntley) (4)

    mehanik[0] = CreateVehicleEx(525, 1231.403, -1265.059, 13.55, 270.0, 3, 3, CAR_SPAWN);
    CreateVehicleEx(525, 1231.403, -1262.0, 13.55, 270.0, 3, 3, CAR_SPAWN);
    CreateVehicleEx(525, 1231.403, -1258.734, 13.55, 270.0, 3, 3, CAR_SPAWN);
    CreateVehicleEx(525, 1231.403, -1255.714, 13.55, 270.0, 3, 3, CAR_SPAWN);
    CreateVehicleEx(525, 1278.127, -1267.007, 13.55, 90.0, 3, 3, CAR_SPAWN);
    CreateVehicleEx(525, 1278.127, -1263.854, 13.55, 90.0, 3, 3, CAR_SPAWN);
    CreateVehicleEx(525, 1278.127, -1260.478, 13.55, 90.0, 3, 3, CAR_SPAWN);
    mehanik[1] = CreateVehicleEx(525, 1278.127, -1257.506, 13.55, 90.0, 3, 3, CAR_SPAWN);

    liccar[0] = CreateVehicleEx(426, -2093.81006, -84.64, 34.984, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (1)
    CreateVehicleEx(426, -2089.60962, -84.63965, 34.99622, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (2)
    CreateVehicleEx(426, -2085.32007, -84.63965, 34.99622, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (3)
    CreateVehicleEx(426, -2081.19995, -84.63965, 35.00862, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (4)
    CreateVehicleEx(426, -2077, -84.63965, 35.00862, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (5)
    CreateVehicleEx(426, -2072.80005, -84.63965, 35.00862, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (6)
    CreateVehicleEx(426, -2068.5, -84.63965, 35.00862, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (7)
    CreateVehicleEx(426, -2064.30005, -84.63965, 35.00862, 180, 209, 209, CAR_SPAWN); //vehicle (Premier) (8)
    CreateVehicleEx(426,-2018.0344,-272.5003,35.0336,18.2456,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2023.2792,-272.4995,35.0372,17.9970,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2028.7821,-272.5010,35.0392,18.2486,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2034.1584,-272.5150,34.9827,17.2413,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2039.0699,-272.4805,35.0189,17.9960,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2049.4998,-272.4658,34.9888,18.0666,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2054.6172,-272.3801,35.0072,15.6016,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2060.0715,-272.4927,35.0360,17.9976,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2065.2856,-272.4890,35.0046,17.9994,209,209,CAR_SPAWN);
    CreateVehicleEx(426,-2070.5200,-272.4733,34.9951,18.0011,209,209,CAR_SPAWN);
    liccar[1] = CreateVehicleEx(487,-2082.8474,-119.3637,37.9040,0.0000,209,209,CAR_SPAWN);

    yakcar[0] = CreateVehicleEx(550,1472.8889,2762.8508,10.5952,181.8833,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(409,1472.6630,2772.8391,10.5980,180.6813,0,0,CAR_SPAWN); //ÀËÏÛÁËÌ
    CreateVehicleEx(550,1472.5605,2782.8152,10.5942,181.1568,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(487,1469.1836,2815.1477,10.9654,271.1967,0,0,CAR_SPAWN); //¬ÂÚÓÎÂÚ
    CreateVehicleEx(550,1460.7052,2840.3477,10.6757,180.0000,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(550,1465.3212,2840.3479,10.6757,179.9999,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(550,1470.1836,2840.3354,10.6715,179.9998,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(550,1475.0186,2840.3379,10.6757,179.9998,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(550,1479.8295,2840.3311,10.6740,179.9158,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(550,1484.5872,2840.3420,10.6802,179.9998,0,0,CAR_SPAWN); //Sunrise
    CreateVehicleEx(550,1489.3992,2840.3389,10.6810,179.9998,0,0,CAR_SPAWN); //Sunrise
    yakcar[1] = CreateVehicleEx(413,1494.5162,2840.4517,10.9009,180.4788,0,0,CAR_SPAWN);

    sapdpatrul[0] = CreateVehicleEx(596,1570.2423, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(596,1574.3743, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(596,1578.5063, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(596,1583.4403, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(596,1587.3743, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(596,1591.4403, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(596,1595.3743, -1710.9011, 5.5755, 0.0000,53, 1,CAR_SPAWN); // lspd copcar
    CreateVehicleEx(427,1545.3458, -1659.0269, 5.8542, 90.0000,53, 1,CAR_SPAWN); // lspd enfoncer
    CreateVehicleEx(427,1545.3458, -1655.0269, 5.8542, 90.0000,53, 1,CAR_SPAWN); // lspd enfoncer
    CreateVehicleEx(427,1545.3458, -1651.2369, 5.8542, 90.0000,53, 1,CAR_SPAWN); // lspd enfoncer
    CreateVehicleEx(596,1572.02441406,-1605.98730469,13.20281219,159.99938965,53, 1,CAR_SPAWN); //Police Car (LSPD)
    CreateVehicleEx(596,1587.17089844,-1606.42187500,13.20281219,159.99938965,53, 1,CAR_SPAWN); //Police Car (LSPD)
    CreateVehicleEx(596,1575.66821289,-1606.22583008,13.20281219,159.99938965,53, 1,CAR_SPAWN); //Police Car (LSPD)
    CreateVehicleEx(596,1579.50097656,-1606.26953125,13.20281219,159.99938965,53, 1,CAR_SPAWN); //Police Car (LSPD)
    CreateVehicleEx(596,1583.29980469,-1606.45605469,13.20281219,159.99938965,53, 1,CAR_SPAWN); //Police Car (LSPD)
    carvid = CreateVehicleEx(560,1536.00012207,-1668.41052246,13.20281219,0.0,0,0,CAR_SPAWN);
    markcarid[0][0]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,1602.53906, -1691.99219, 5.696,90.0,0,0,CAR_SPAWN);
    markcarid[0][1]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    carvid = CreateVehicleEx(560,1602.53906, -1687.99219, 5.696,90.0,0,0,CAR_SPAWN);
    markcarid[0][2]=carvid;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    boost_lspdcar = CreateVehicleEx(560,1602.53992, -1684.02002, 5.696,90.0,0,0,CAR_SPAWN);
    markcarid[0][3]=boost_lspdcar;
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "~", 100, "Webdings", 90, 0, -65536, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, boost_lspdcar, -0.001300, -1.342470, 0.594511, 0.000000, -59.299953, -90.000000);
    boost_veh_lvl[boost_lspdcar] = 10;
    braking_veh_lvl[boost_lspdcar] = 8;
    sapdpatrul[1] = CreateVehicleEx(560,1536.01879883,-1676.16955566,13.20281219,0.0,0,0,CAR_SPAWN);
    markcarid[0][4]=sapdpatrul[1];
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], -0.226, 2.628, -0.210, 0.000, 0.000, 179.900);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], 0.243, 2.619, -0.210, 0.000, 0.000, 179.199);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], 1.071, 1.159, 0.140, 0.000, 0.000, 88.799);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], -1.075, 1.113, 0.150, 0.000, 0.000, -85.500);
    tmpobjid = CreateDynamicObject(19620,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], 0.000, 0.000, 0.810, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19893,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], 0.000, 0.400, -0.150, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], -0.007103, 1.924879, 0.310746, -0.699963, -77.499931, -269.801422);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], -1.021961, -1.717599, 0.238558, 0.000000, -13.300002, -178.700073);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 80, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, sapdpatrul[1], 1.042553, -1.651380, 0.209145, 0.000000, -13.300002, -361.600158);

	sapdcar[0] = CreateVehicleEx(601,1534.7269, -1644.3800, 4.8840, 180.0000,-1,-1,CAR_SPAWN); // lspd tank
    carvid = CreateVehicleEx(541,1602.53906, -1700.09998, 5.70376,90.0,0,1,CAR_SPAWN);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.261, 2.427, -0.220, 0.000, 0.000, 176.500);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.259, 2.438, -0.210, 0.000, 179.800, 179.900);
    tmpobjid = CreateDynamicObject(18646,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -0.370, -0.210, 0.690, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 90, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 0.023265, 1.374218, 0.298810, 0.000000, -88.199943, 89.299964);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, 1.052642, -1.736079, 0.198805, 0.000000, 0.000000, 0.000000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, carvid, -1.049396, -1.664940, 0.208806, 0.000000, 0.000000, -178.199951);
    bulletboostls = CreateVehicleEx(541,1602.53906, -1696.08984, 5.70376,90.0,0,1,CAR_SPAWN);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, 0.261, 2.427, -0.220, 0.000, 0.000, 176.500);
    tmpobjid = CreateDynamicObject(19797,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, -0.259, 2.438, -0.210, 0.000, 179.800, 179.900);
    tmpobjid = CreateDynamicObject(18646,0.0,0.0,-1000.0,0.0,0.0,0.0,0,0,-1,300.0,300.0);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, -0.370, -0.210, 0.690, 0.000, 0.000, 0.000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 90, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, 0.023265, 1.374218, 0.298810, 0.000000, -88.199943, 89.299964);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, 1.052642, -1.736079, 0.198805, 0.000000, 0.000000, 0.000000);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "LSPD", 140, "Impact", 45, 0, -1, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, -1.049396, -1.664940, 0.208806, 0.000000, 0.000000, -178.199951);
    tmpobjid = CreateDynamicObject(19477, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "~", 100, "Webdings", 90, 0, -65536, 0, 1);
    AttachDynamicObjectToVehicle(tmpobjid, bulletboostls, -0.009455, -1.101057, 0.501685, 0.000000, -80.199905, -90.001144);
    boost_veh_lvl[bulletboostls] = 10;
    braking_veh_lvl[bulletboostls] = 8;
	CreateVehicleEx(601,1526.4313, -1644.7328, 6.0031, 180.0000,-1,79,CAR_SPAWN); // lspd 
	CreateVehicleEx(601,1530.5684, -1644.7328, 6.0031, 180.0000,-1,79,CAR_SPAWN); // lspd 
	CreateVehicleEx(523,1547.27758789,-1674.60498047,5.45539999,121.53100586,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(523,1547.42431641,-1676.89062500,5.45539999,118.10577393,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(523,1547.27758789,-1672.40002441,5.45539999,121.53076172,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(523,1547.27758789,-1670.20007324,5.45539999,121.53076172,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(523,1547.27758789,-1668.00000000,5.45539999,121.53076172,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(523,1547.42431641,-1679.00000000,5.45539999,118.10302734,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(523,1547.42431641,-1681.09997559,5.45539999,118.10302734,1,79,CAR_SPAWN); //HPV1000
	CreateVehicleEx(497,1555.352,-1610.253,13.561,90.000,79,1,CAR_SPAWN); // lspd mav
	sapdcar[1] = CreateVehicleEx(427,1538.1487,-1644.9996,6.0336,180.0003,1,79, 600); // LSPD Enforcer 0
	
	vmfcar[0] = CreateVehicleEx(417,-2227.5920410,2327.3811035,7.6469998,0.0000000,16,16,CAR_SPAWN); //Leviathan
	CreateVehicleEx(455, -2271.01904, 2285.72607, 5.39, 270, 123, 123, CAR_SPAWN); 
	CreateVehicleEx(470,-2253.1010742,2288.0859375,4.9299998,90.0000000,16,16,CAR_SPAWN); //Patriot
	CreateVehicleEx(470,-2253.0778809,2291.0839844,4.9299998,90.0000000,16,16,CAR_SPAWN); //Patriot
	CreateVehicleEx(470,-2253.0930176,2294.1069336,4.9229999,90.0000000,16,16,CAR_SPAWN); //Patriot
	CreateVehicleEx(470,-2253.0979004,2297.1950684,4.9229999,90.0000000,16,16,CAR_SPAWN); //Patriot
	CreateVehicleEx(470,-2253.0839844,2300.0148926,4.9229999,90.0000000,16,16,CAR_SPAWN); //Patriot
	CreateVehicleEx(430,-2224.9360352,2399.5720215,0.0000000,44.7500000,16,16,CAR_SPAWN); //Predator
	CreateVehicleEx(430,-2231.3569336,2393.1330566,0.0000000,45.7476807,16,16,CAR_SPAWN); //Predator
	CreateVehicleEx(430,-2211.3640137,2413.2561035,0.0000000,44.7475586,16,16,CAR_SPAWN); //Predator
	CreateVehicleEx(431,-2285.9895,2343.4014,5.3966,298.0005,16,16,CAR_SPAWN); //Predator
	vmfcar[1] = CreateVehicleEx(430,-2204.7839355,2419.7028809,0.0000000,44.9975586,16,16,CAR_SPAWN); //Predator

	matsfuraactek = CreateVehicleEx(482,2190.0347,-1786.9136,13.3777,13.3777,2,1,CAR_SPAWN); //Burrito

	coronoscar[0] = CreateVehicleEx(518,2166.0854,-1790.7902,13.1526,215.7027,2,1,CAR_SPAWN); //
	CreateVehicleEx(518,2160.0552,-1791.0371,13.1508,221.4843,2,1,CAR_SPAWN); //
	CreateVehicleEx(529,2189.7837,-1808.5233,13.0785,44.9829,2,1,CAR_SPAWN); //
	CreateVehicleEx(529,2189.8193,-1802.9926,13.0815,47.4747,2,1,CAR_SPAWN); //
	CreateVehicleEx(529,2190.1396,-1797.8752,13.0266,50.6045,2,1,CAR_SPAWN);
	coronoscar[1] = CreateVehicleEx(478,2180.0000000,-1779.5999756,13.6000004,0.0000000,2,1,CAR_SPAWN); //Walton
    
	vagoscar[0] = CreateVehicleEx(467,2796.47168,-1584.79785,11.008,270.0,84,6,CAR_SPAWN); // Vagos 1
	CreateVehicleEx(467,2796.47168,-1580.37305,11.008,270.0,84,6,CAR_SPAWN); // Vagos 2
	CreateVehicleEx(474,2796.47168,-1571.57361,11.008,270.0,6,6,CAR_SPAWN); // Vagos 3
	CreateVehicleEx(474,2796.47168,-1575.97363,11.008,270.0,6,6,CAR_SPAWN); // Vagos 4
	CreateVehicleEx(474,2796.47168,-1567.27319,11.008,270.0,6,6,CAR_SPAWN); // Vagos 5
	vagoscar[1] = CreateVehicleEx(478,2770.45801,-1615.20215,10.96071,270.0,6,6,CAR_SPAWN); //Walton
	matsfuravagos = CreateVehicleEx(482,2770.45801,-1606.40295,11.172,270.0,6,1,CAR_SPAWN);

	grovecar[0] = CreateVehicleEx(600,2486.7856,-1680.8467,12.9853,333.5294,86,86,CAR_SPAWN);
	CreateVehicleEx(600,2491.6892,-1680.8110,12.9905,334.3155,86,86,CAR_SPAWN);
	CreateVehicleEx(492,2496.9253,-1680.3582,13.1278,335.2479,86,86,CAR_SPAWN);
	CreateVehicleEx(492,2502.0142,-1679.2673,13.1104,331.8155,86,86,CAR_SPAWN);
	CreateVehicleEx(466,2501.7458,-1655.4292,13.0974,56.2400,86,86,CAR_SPAWN);
	CreateVehicleEx(466,2507.2712,-1663.0812,13.1530,24.3497,86,86,CAR_SPAWN);
	CreateVehicleEx(600,2471.9756,-1653.3414,13.1145,88.9228,86,86,CAR_SPAWN); // Picador 2
	grovecar[1] = CreateVehicleEx(478,2479.1999512,-1653.5999756,13.5000000,90.0000000,86,86,CAR_SPAWN); //Walton
	matsfuragrove = CreateVehicleEx(482,2513.817, -1679.293, 13.75,358.9510,86,86,CAR_SPAWN);

	rifacar[0] = CreateVehicleEx(567,2765.1370,-1977.7531,13.4467,1.1677,12,12,CAR_SPAWN); //
	CreateVehicleEx(567,2765.0212,-1967.7778,13.4191,1.3437,12,12,CAR_SPAWN); //
	CreateVehicleEx(567,2764.9094,-1957.4026,13.3894,1.0162,12,12,CAR_SPAWN); //
	CreateVehicleEx(534,2774.5869,-1949.2021,13.1372,2.6137,12,12,CAR_SPAWN); //
    CreateVehicleEx(534,2775.1714,-1961.5574,13.3952,0.4113,12,12,CAR_SPAWN); //
	CreateVehicleEx(534,2775.1685,-1970.6012,13.4159,0.1896,12,12,CAR_SPAWN); //
	rifacar[1] = CreateVehicleEx(478,2774.8147,-1932.6622,13.3906,357.6550,12,12,CAR_SPAWN); //Walton
	matsfurarifa = CreateVehicleEx(482,2764.3013,-1935.9091,13.5394,357.1073,12,12,CAR_SPAWN);
	matsfuraballas = CreateVehicleEx(482,1948.658,-1093.385,24.892,75.344,85,85,CAR_SPAWN);

	ballascar[0] = CreateVehicleEx(516,1940.144,-1092.251,24.751,75.344,85,85,CAR_SPAWN); //
	CreateVehicleEx(516,1932.149,-1091.315,24.546,75.344,85,85,CAR_SPAWN); //
	CreateVehicleEx(517,1923.858,-1090.907,24.381,75.344,85,85,CAR_SPAWN); //
	CreateVehicleEx(517,1915.573,-1090.468,24.217,75.344,85,85,CAR_SPAWN); //
	CreateVehicleEx(566,1907.114,-1089.937,24.043,75.344,85,85,CAR_SPAWN); //
	CreateVehicleEx(566,1898.644,-1089.556,23.884,75.344,85,85,CAR_SPAWN); //
	ballascar[1] = CreateVehicleEx(478,1890.296,-1089.183,23.708,75.344,85,85,CAR_SPAWN);

	armcar[0] = CreateVehicleEx(431, 277.18555, 1952.68848, 17.891, 270, 123, 61, CAR_SPAWN);
	CreateVehicleEx(455, 277.186, 1959.68896, 18.45688, 270, 123, 123, CAR_SPAWN);
	CreateVehicleEx(520, 277.10449, 2029.57422, 18.56, 270, 123, 0, CAR_SPAWN);
	CreateVehicleEx(520, 277.10449, 2018.57422, 18.56, 270, 123, 0, CAR_SPAWN);
	CreateVehicleEx(433, 277.25201, 1991.89294, 17.85487, 270, 123, 1, CAR_SPAWN);
	CreateVehicleEx(470, 277.25195, 1980.89258, 17.751, 270, 123, 0, CAR_SPAWN);
	CreateVehicleEx(433, 277.25195, 1986.89258, 17.85487, 270, 123, 0, CAR_SPAWN);
	CreateVehicleEx(500,203.7943,1862.3488,13.2462,271.1720,77,77,CAR_SPAWN);
	CreateVehicleEx(500,203.7240,1866.9736,13.2801,271.3324,77,77,CAR_SPAWN);
	CreateVehicleEx(500,203.5927,1872.2008,13.2459,271.1720,77,77,CAR_SPAWN);
	CreateVehicleEx(497,144.9689,1950.7150,29.1754,359.9992,44,44,CAR_SPAWN);
	CreateVehicleEx(497,135.1045,1950.7152,29.1515,359.9985,44,44,CAR_SPAWN);
	CreateVehicleEx(425,287.2229,1927.3916,18.2054,234.3114,43,0,CAR_SPAWN);
	armcar[1] = CreateVehicleEx(470, 277.25201, 1997.89294, 17.751, 270, 123, 0, CAR_SPAWN);