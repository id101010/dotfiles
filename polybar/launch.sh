#!/bin/bash

killall polybar
while pgrep -x polybar >/dev/null; do sleep 1; done
polybar main -c ~/.config/polybar/config &
