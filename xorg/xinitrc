#!/bin/sh

# test for an existing bus daemon, just to be safe
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	#	if not found, launch a new one
  eval `dbus-launch --sh-syntax --exit-with-session`
fi

setxkbmap ch &
exec dbus-launch --exit-with-session i3
