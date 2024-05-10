#!/bin/bash

# Set the directory where screenshots will be saved
screenshot_dir="$HOME/screenshots"

# Set the filename using the current date and time
filename="$screenshot_dir/screenshot_$(date +"%Y-%m-%d_%H-%M-%S").png"


# Take the screenshot using import
import "$filename"

# Copy the image to the clipboard
xclip -selection clipboard -t image/png -i "$filename"
