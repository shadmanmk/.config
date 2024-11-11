#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/.config/hypr/wallpaper"

# Check if directory exists
if [[ ! -d "$WALLPAPER_DIR" ]]; then
  echo "Error: Directory '$WALLPAPER_DIR' does not exist."
  exit 1
fi

# Pick a random wallpaper
random_wallpaper=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Check if a file was found
if [[ -z "$random_wallpaper" ]]; then
  echo "Error: No wallpapers found in the directory."
  exit 1
fi

# Publish the same wallpaper as two global variables
export w0="$random_wallpaper"
export w1="$random_wallpaper"

# Optionally, print out the variables for verification
echo "w0: $w0"
echo "w1: $w1"

# Stop and restart Hyprpaper to apply the new wallpaper
pkill hyprpaper
sleep 1  # Give it a moment to fully stop
hyprpaper &  # Start Hyprpaper again in the background