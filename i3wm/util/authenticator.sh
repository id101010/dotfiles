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

SECRET_GOOGLE="There"
SECRET_FACEBOOK="IsJust"
SECRET_DROPBOX="NoWayImUploadingThisToGit"

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
