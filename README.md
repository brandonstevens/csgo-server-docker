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

This environment variable is recommended for you to use the CSGO Dedicated Server image. Pretty soon, Valve will require it on all servers.

### `SERVER_NAME`

This optional environment variable can be used to define the name of the server in the Community Server Browser.

### `LAN`

This optional environment variable can be used to set the server as a LAN server by setting LAN=1.

### `RCON_PASSWORD`

This optional environment variable can be used to define the specific password for remote console access. If not set, a random password is generated for you.

### `SERVER_PASSWORD`

This optional environment variable can be used to define the server password for players. If not set, no password is required to connect.
