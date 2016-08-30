#!/bin/bash

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
