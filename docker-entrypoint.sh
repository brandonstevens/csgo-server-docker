#! /bin/bash

set -e

CMD="$@"

if [ "$1" = './srcds_run' ]; then
    if [ -n "$STEAM_GAME_SERVER_TOKEN" ]; then
      CMD+=" +sv_setsteamaccount $STEAM_GAME_SERVER_TOKEN -net_port_try 1"
    fi

    if [ -n "$GAME_TYPE" ]; then
      CMD+=" +game_type $GAME_TYPE"
    fi

    if [ -n "$GAME_MODE" ]; then
      CMD+=" +game_mode $GAME_MODE"
    fi

    if [ -n "$MAPGROUP" ]; then
      CMD+=" +mapgroup $MAPGROUP"
    fi

    if [ -n "$MAP" ]; then
      CMD+=" +map $MAP"
    fi

    if [ -z "$SERVER_NAME" ]; then
      SERVER_NAME="Counter-Strike: Global Offensive Dedicated Server"
    fi
    CMD+=" +hostname \"$SERVER_NAME\""

    if [ "$LAN" == "1" ]; then
      CMD+=" +sv_lan $LAN"
    fi

    if [ -z "$RCON_PASSWORD" ]; then
      RCON_PASSWORD=`sed $(echo $RANDOM)"q;d" /usr/share/dict/words`
      echo "Your rcon password was automatically generated: $RCON_PASSWORD"
    fi
    CMD+=" +rcon_password $RCON_PASSWORD"

    if [ -n "$SERVER_PASSWORD" ]; then
      CMD+=" +sv_password $SERVER_PASSWORD"
    fi

    exec gosu daemon $CMD
fi

exec "$CMD"
