#!/bin/bash

option=$(printf "lock screen\nrestart wm\nlog out\npower off\nreboot" | rofi -dmenu -p "action")
case "$option" in
    "lock screen") slock ;;
    "restart wm") i3-msg restart ;;
    "log out") i3-msg exit ;;
    "power off") ~/.local/share/rofi/scripts/poweroff.sh ;;
    "reboot") ~/.local/share/rofi/scripts/reboot.sh ;; 
    *) exit 1 ;;
esac
