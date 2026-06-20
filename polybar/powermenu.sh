#!/bin/bash

choice=$(printf "Lock\nLogout\nReboot\nShutdown" | rofi -dmenu -p "Power")

case "$choice" in
    Lock)
        i3lock
        ;;
    Logout)
        i3-msg exit
        ;;
    Reboot)
        reboot
        ;;
    Shutdown)
        poweroff
        ;;
esac
