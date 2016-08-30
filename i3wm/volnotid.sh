#!/bin/bash

VOLUME=$(amixer get Master | grep Mono: | sed 's|[^[]*\[\([0-9]*\).*|\1|')
VALUE=3dB
MUTE=0

case "$1" in
  "up")
    # Increase Volume
    [[ "$VOLUME" -eq 100 ]] && VALUE=0
    amixer -q set Master $VALUE+ unmute && killall -SIGUSR1 i3status
    MUTE=0
    ;;
  "down")
    # Decrease Volume
    amixer -q set Master $VALUE- unmute && killall -SIGUSR1 i3status
    MUTE=0
    # If the Volume is already 0, then mute
    if [ "$VOLUME" == "0" ]; then
        MUTE=1
        amixer -q set Master toggle && killall -SIGUSR1 i3status
    fi
    ;;
  "mute")
    # Mute
    amixer -q set Master toggle && killall -SIGUSR1 i3status
    MUTE=1
    ;;
esac

VOLUME=$(amixer get Master | grep Mono: | sed 's|[^[]*\[\([0-9]*\).*|\1|')

if [ "$MUTE" == "0" ]; then
    volnoti-show $VOLUME
else
    volnoti-show -m $VOLUME
fi
