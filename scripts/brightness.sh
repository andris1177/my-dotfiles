#!/bin/bash
brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)
brightness_percent=$(awk -v b="$brightness" -v m="$max_brightness" 'BEGIN { print (100 * b) / m }')
brightness_rounded=$(awk -v bp="$brightness_percent" 'BEGIN { print int(bp+0.5) }')
echo "Brightness: ${brightness_rounded}%"
