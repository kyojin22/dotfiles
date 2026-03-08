#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/wallpapers"

if [ -n "$1" ]; then
    WALLPAPER="$1"
else
    WALLPAPER=$(find -L "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)
fi

swww img "$WALLPAPER" --transition-type wipe --transition-angle 30 --transition-duration 1

