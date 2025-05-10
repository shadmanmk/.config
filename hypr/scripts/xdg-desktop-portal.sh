#!/bin/bash
# Kill existing portals (hyprland first to avoid race conditions)
killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-gtk
killall -e xdg-desktop-portal
sleep 1

# Start Hyprland's portal first
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2

# Optional: Start GTK portal if needed for GTK apps
/usr/lib/xdg-desktop-portal-gtk &
sleep 1

# Start main portal (will use hyprland backend)
/usr/lib/xdg-desktop-portal &
