#!/bin/bash

# Run usbreset for Razer Viper Mini with a GUI password prompt
pkexec usbreset "Razer Viper Mini" && notify-send "Success" "Razer Viper Mini reset successfully!" || notify-send "Error" "Failed to reset Razer Viper Mini!"
