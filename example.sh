#!/bin/bash

# Set your folder with the backgrounds
bgfolder="/usr/share/backgrounds/"

# export x-session environment variable
PID=$(pgrep -o x-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

# Go to your folder with the backgrounds
cd "$bgfolder"

# Get the name of a random file
randomfile=`ls *.jpg *.png | sed -n $((RANDOM%$(ls *.jpg *.png |wc -l)+1))p`

# Use gsettings command to set the desktop variable
gsettings set org.mate.background picture-filename "$bgfolder$randomfile"
