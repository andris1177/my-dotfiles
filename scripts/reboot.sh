#!/bin/bash

choice=$(echo -e "no\nyes" | dmenu -p "Do you want to reboot")

if [ "$choice" == "yes" ]; then
    reboot
fi
