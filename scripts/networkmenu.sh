#!/bin/bash
networks=$(nmcli -t -f SSID dev wifi list | dmenu -p "Select Wi-Fi Network:")

[ -z "$networks" ] && exit 1

existing=$(nmcli -t -f NAME connection show | grep "^$networks$")

if [ -z "$existing" ]; then
    nmcli dev wifi connect "$networks" password "your_password_here"
else
    nmcli connection up "$existing"
fi
