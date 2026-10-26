# SAMP-Roleplay
A full roleplay game mode for SAMP.

Runs on multiple platforms (Windows + Linux).

## Install and Setup MySQL (or MariaDB)
> [!NOTE]
> The gamemode requires having a local SQL server running.<br>
> More information about the SQL [here](./database/README.md).
- As long as the server is running, the SQL server must be accessible.

<br>

## Windows Setup

### Compile Gamemodes and Scripts
```bash
cd pawno
bin\pawncc.exe "..\gamemodes\sources\roleplay.pwn" -i"include" -o"..\gamemodes\roleplay.amx"

# Compile filterscripts as needed
bin\pawncc.exe "..\filterscripts\sources\3DSpeedo.pwn" -i"include" -o"..\filterscripts\3DSpeedo.amx"
```
- This is the basic usage of `pawncc` compiler. the [Include](./pawno/include/) directory contains all the files needed for pawn compilation, and some files solely used by [Plugins](./plugins/).

### Run Server
```bash
.\samp-server.exe
```
- Or just double click `samp-server.exe`.

<br>

## Linux Setup

### Elevate executable files permissions
```bash
chmod +x samp03svr pawno/bin/pawncc
```
- Linux requires you to allow the files above to be executed.

### Compile Gamemodes and Scripts
```bash
cd pawno
bin/pawncc "../gamemodes/sources/roleplay.pwn" -i"include" -o"../gamemodes/roleplay.amx"

# Compile filterscripts as needed
bin/pawncc "../filterscripts\sources\3DSpeedo.pwn" -i"include" -o"../filterscripts\3DSpeedo.amx"
```
- This is the basic usage of `pawncc` compiler. the [Include](./pawno/include/) directory contains all the files needed for pawn compilation, and some files solely used by [Plugins](./plugins/).

### Run Server
```bash
(./samp03svr & tail -f server_log.txt)
```
- This runs `samp03svr` and shows `server_log.txt` at the same time (because `samp03svr` does not show logs automatically).

<br>

## Consistent Server Runtime
> [!TIP]
> If you want the server to remain active even after the window is closed, you need to create a service.<br>
> This can be done by creating an `NSSM` service process in Windows, or a `systemd` service file in Linux.

### Windows (NSSM)
1. Run `nssm` install command:
    ```bash
    nssm install samp
    ```

2. A GUI window opens, you should select the `samp-server.exe` as the application and with correct directory.
    ```bash
    # Check the service status
    nssm status samp

    # Start, restart or stop the service
    nssm restart samp
    nssm stop samp
    ```

### Linux (systemd)
1. Create `/etc/systemd/system/samp.service` file:
    ```ini
    [Unit]
    Description=SAMP Server
    After=network.target

    [Service]
    Type=simple
    Restart=on-failure
    RestartSec=5s
    TimeoutStopSec=10s
    KillSignal=SIGINT
    WorkingDirectory=/PATH/TO/SAMP-SERVER
    ExecStart=/bin/bash -c './samp03svr & tail -f server_log.txt'

    [Install]
    WantedBy=multi-user.target
    ```

2. Edit the `/PATH/TO/SAMP-SERVER` according to your absolute samp server directory. After that:
    ```bash
    # Enable the service to run on startup
    systemctl enable samp

    # Check the service status
    systemctl status samp
    
    # Or check its logs in real-time
    journalctl -u samp -f

    # Start, restart or stop the service
    systemctl restart samp
    systemctl stop samp
    ```