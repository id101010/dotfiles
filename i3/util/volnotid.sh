#!/bin/bash

##########################################
#             _             _   _     _  #
#            | |           | | (_)   | | #
# __   _____ | |_ __   ___ | |_ _  __| | #
# \ \ / / _ \| | '_ \ / _ \| __| |/ _` | #
#  \ V / (_) | | | | | (_) | |_| | (_| | #
#   \_/ \___/|_|_| |_|\___/ \__|_|\__,_| #
#                                        #
##########################################

#
# This script uses volnoti, which can be installed from git or 
# from the arch aur.
# 
# yaourt -S volnoti
#

VOLUME=$(amixer get Master | grep Mono: | sed 's|[^[]*\[\([0-9]*\).*|\1|')
VALUE=1%
MUTE=0

case "$1" in
  "up")
    # Increase Volume
    [[ "$VOLUME" -eq 100 ]] && VALUE=0
    amixer -q sset Master $VALUE+ unmute && killall -SIGUSR1 i3status
    MUTE=0
    ;;
  "down")
    # Decrease Volume
    amixer -q sset Master $VALUE- unmute && killall -SIGUSR1 i3status
    MUTE=0
    # If the Volume is already 0, then mute
    if [ "$VOLUME" == "0" ]; then
        MUTE=1
        amixer -q sset Master toggle && killall -SIGUSR1 i3status
    fi
    ;;
  "mute")
    # Mute
    amixer -q sset Master toggle && killall -SIGUSR1 i3status
    MUTE=1
    ;;
esac

VOLUME=$(amixer get Master | grep Mono: | sed 's|[^[]*\[\([0-9]*\).*|\1|')

if [ "$MUTE" == "0" ]; then
    volnoti-show $VOLUME
else
    volnoti-show -m $VOLUME
fi
