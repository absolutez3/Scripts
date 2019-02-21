#!/bin/bash
logger "Running chillout at $(date)"

sudo dnf clean all;
sudo dnf update -y;
sudo freshclam;
sudo flatpak update;

#Done for the day, time to lock down.
#save power

sudo tuned-adm profile powersave

#Meh kill discord too
kill -9 $(pgrep -i Discord)

#lock the screen, make sure to be right user.
qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock

#Sleep 20m and kill spotify if still running. 
sleep 20m;
flatpak kill com.spotify.Client;
