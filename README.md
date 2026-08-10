# SAMP-Roleplay
A full roleplay game mode for SAMP.

Supposed to be multi-platform (Windows + Linux).<br>
Currently, only Windows is supported.

## Windows Setup

### Install and Setup MySQL (or MariaDB)
> [!NOTE]
> The gamemode requires having a local SQL server running.<br>
> More information about the SQL [here](./database/README.md).
- As long as the server is running, the SQL server must be accessible.

### Compile Gamemodes and Scripts
```bash
cd pawno
bin\pawncc.exe "..\gamemodes\sources\roleplay.pwn" -i"include" -o"..\gamemodes\roleplay.amx"

# Compile filterscripts as needed
bin\pawncc.exe "..\filterscripts\sources\3DSpeedo.pwn" -i"include" -o"..\filterscripts\3DSpeedo.amx"
```
- This is the basic usage of `pawncc` compiler. the [Include](./pawno/include/) directory contains all the files needed for pawn compilation.

### Run Server
```bash
.\samp-server.exe
```
- Or just double click `samp-server.exe`