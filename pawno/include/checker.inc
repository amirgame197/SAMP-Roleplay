//Nexius's Update Checker by Nexius v0.2

#include <a_samp>
#include <a_http>

#if defined _updatechecker_included
	#endinput
#endif
#define _updatechecker_included

#define UPDATECHECKER_VERSION	"0.2"

forward OnUpdCheckerVersionChecked(index, response_code, data[]);
forward OnSampVersionChecked(index, response_code, data[]);
forward OnNexACVersionChecked(index, response_code, data[]);
forward OnMapFixVersionChecked(index, response_code, data[]);
forward OnAltDialogsVersionChecked(index, response_code, data[]);
forward OnAdmSysVersionChecked(index, response_code, data[]);
forward OnCreatorVersionChecked(index, response_code, data[]);

#if defined FILTERSCRIPT
	public OnFilterScriptInit()
	{
		#if defined MAPFIX_VERSION
			HTTP(1006, HTTP_GET, "pastebin.com/raw/fkFF6ZQH", "", "OnMapFixVersionChecked");
		#endif
		#if defined CREATOR_VERSION
			HTTP(1007, HTTP_GET, "pastebin.com/raw/nypVpYGE", "", "OnCreatorVersionChecked");
		#endif
		#if defined checker_OnFilterScriptInit
			return checker_OnFilterScriptInit();
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnFilterScriptInit
		#undef OnFilterScriptInit
	#else
		#define _ALS_OnFilterScriptInit
	#endif
	#define OnFilterScriptInit checker_OnFilterScriptInit
	#if defined checker_OnFilterScriptInit
		forward checker_OnFilterScriptInit();
	#endif
#else
	public OnGameModeInit()
	{
		HTTP(1000, HTTP_GET, "pastebin.com/raw/b1iE3i5w", "", "OnUpdCheckerVersionChecked");
		HTTP(1001, HTTP_GET, "pastebin.com/raw/7wmiJKnG", "", "OnSampVersionChecked");
		#if defined NEX_AC_VERSION
			HTTP(1002, HTTP_GET, "pastebin.com/raw/t344ZXV3", "", "OnNexACVersionChecked");
		#endif
		#if defined MAPFIX_VERSION
			HTTP(1003, HTTP_GET, "pastebin.com/raw/fkFF6ZQH", "", "OnMapFixVersionChecked");
		#endif
		#if defined AD_VERSION
			HTTP(1004, HTTP_GET, "pastebin.com/raw/ihyc8mEd", "", "OnAltDialogsVersionChecked");
		#endif
		#if defined ADMSYS_VERSION
			HTTP(1005, HTTP_GET, "pastebin.com/raw/2Mdi9LNd", "", "OnAdmSysVersionChecked");
		#endif
		#if defined checker_OnGameModeInit
			return checker_OnGameModeInit();
		#else
			return 1;
		#endif
	}

	#if defined _ALS_OnGameModeInit
		#undef OnGameModeInit
	#else
		#define _ALS_OnGameModeInit
	#endif
	#define OnGameModeInit checker_OnGameModeInit
	#if defined checker_OnGameModeInit
		forward checker_OnGameModeInit();
	#endif
#endif

public OnUpdCheckerVersionChecked(index, response_code, data[])
{
	if(response_code == 200)
	{
		if(strcmp(data, UPDATECHECKER_VERSION)) printf("The new version of the 'Update Checker' is available: %s", data);
	}
	else print("Failed to check the 'Update Checker' update :(");
	return 1;
}

public OnSampVersionChecked(index, response_code, data[])
{
	if(response_code == 200)
	{
		new ver[16];
		GetServerVarAsString("version", ver, sizeof ver);
		if(strcmp(data, ver)) printf("The new version of the 'SA-MP server' is available: %s", data);
	}
	else print("Failed to check the 'SA-MP server' update :(");
	return 1;
}

public OnNexACVersionChecked(index, response_code, data[])
{
	#if defined NEX_AC_VERSION
		if(response_code == 200)
		{
			if(strcmp(data, NEX_AC_VERSION)) printf("The new version of the 'Nex-AC' is available: %s", data);
		}
		else print("Failed to check the 'Nex-AC' update :(");
	#endif
	return 1;
}

public OnMapFixVersionChecked(index, response_code, data[])
{
	#if defined MAPFIX_VERSION
		if(response_code == 200)
		{
			if(strcmp(data, MAPFIX_VERSION)) printf("The new version of the 'MapFix' is available: %s", data);
		}
		else print("Failed to check the 'MapFix' update :(");
	#endif
	return 1;
}

public OnAltDialogsVersionChecked(index, response_code, data[])
{
	#if defined AD_VERSION
		if(response_code == 200)
		{
			if(strcmp(data, AD_VERSION)) printf("The new version of the 'Alternative Dialogs' is available: %s", data);
		}
		else print("Failed to check the 'Alternative Dialogs' update :(");
	#endif
	return 1;
}

public OnAdmSysVersionChecked(index, response_code, data[])
{
	#if defined ADMSYS_VERSION
		if(response_code == 200)
		{
			if(strcmp(data, ADMSYS_VERSION)) printf("The new version of the 'Admin System' is available: %s", data);
		}
		else print("Failed to check the 'Admin System' update :(");
	#endif
	return 1;
}

public OnCreatorVersionChecked(index, response_code, data[])
{
	#if defined CREATOR_VERSION
		if(response_code == 200)
		{
			if(strcmp(data, CREATOR_VERSION)) printf("The new version of the 'Ultimate Creator' is available: %s", data);
		}
		else print("Failed to check the 'Ultimate Creator' update :(");
	#endif
	return 1;
}
