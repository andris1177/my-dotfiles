#!/bin/bash
brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)
brightness_percent=$(( 100 * brightness / max_brightness ))
echo "Brightness: ${brightness_percent}%"
