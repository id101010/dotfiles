#!/bin/sh

PICTURES="$HOME/.wallpapers/"
SHOWTIME="10m"

while true; do
    find $PICTURES -type f \( -name '*.jpg' -o -name '*.png' \) -print0 | shuf -n1 -z | xargs -0 feh --bg-scale
    sleep $SHOWTIME
done

