#!/bin/bash

choice=$(echo -e "no\yes" | dmenu -p "Do you want to shutdown?")

if [ "$choice" == "yes" ]; then
    shutdown -h now
fi
