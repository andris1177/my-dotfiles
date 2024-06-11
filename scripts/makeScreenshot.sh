#!/bin/bash
sleep 0.1
screenshot_dir="$HOME/screenshots"
filename="$screenshot_dir/screenshot_$(date +"%Y-%m-%d_%H-%M-%S").png"
import "$filename"
xclip -selection clipboard -t image/png -i "$filename"
