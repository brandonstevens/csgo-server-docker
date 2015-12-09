csgo-server-docker
============

# What is Counter-Strike: Global Offensive?

Counter-Strike: Global Offensive (CS:GO) is an online first-person shooter developed by Hidden Path Entertainment and Valve Corporation. It is the fourth game in the main Counter-Strike franchise.


# How to use this image


## Running CSGO Dedicated Server

1. Create a Steam account token here: http://steamcommunity.com/dev/managegameservers.

2. Run the container:

    $ docker run -d -P -e STEAM_GAME_SERVER_TOKEN=1234567890 brandonstevens/csgo-server

## Environment Variables

The CSGO Dedicated Server image uses several environment variables which are easy to miss. While none of the variables are required, they may significantly aid you in using the image.

### `STEAM_GAME_SERVER_TOKEN`

This environment variable is required for you to use the CSGO Dedicated Server image. See http://blog.counter-strike.net/index.php/2015/12/13325/ for more information.

### `GAME_TYPE`

This optional environment variable can be used to define the initial game type of the server. See https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers#Starting_the_Server for more information on setting game type and game mode.

### `GAME_MODE`

This optional environment variable can be used to define the initial game mode of the server.

### `MAPGROUP`

This optional environment variable can be used to define the initial map group of the server.

### `MAP`

This optional environment variable can be used to define the initial map of the server.

### `SERVER_NAME`

This optional environment variable can be used to define the name of the server in the Community Server Browser.

### `LAN`

This optional environment variable can be used to set the server as a LAN server by setting LAN=1.

### `RCON_PASSWORD`

This optional environment variable can be used to define the specific password for remote console access. If not set, a random password is generated for you.

### `SERVER_PASSWORD`

This optional environment variable can be used to define the server password for players. If not set, no password is required to connect.
