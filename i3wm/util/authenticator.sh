#!/bin/bash

###############################
#    _             _   _      #
#   (_)           | | | |     #
#    _  __ _ _   _| |_| |__   #
#   | |/ _` | | | | __| '_ \  #
#   | | (_| | |_| | |_| | | | #
#   | |\__,_|\__,_|\__|_| |_| #
#  _/ |                       #
# |__/                        #
#                             #
###############################

# This script needs jauth-git to work 
# jauth can be installed from the arch aur
#
# yaourt -S jauth-git
#

SECRET_GOOGLE="asdf"
SECRET_FACEBOOK="asdf"
SECRET_DROPBOX="asdf"

ARG="${1}"

case ${ARG} in
    "google")
    jauth -secret=${SECRET_GOOGLE}
    ;;
    "facebook")
    jauth -secret=${SECRET_FACEBOOK}
    ;;
    "dropbox")
    jauth -secret=${SECRET_DROPBOX}
    ;;
esac
