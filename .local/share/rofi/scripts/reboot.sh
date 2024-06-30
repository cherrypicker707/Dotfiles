#!/bin/bash

sudo shutdown -r

option=$(printf "cancel\nreboot now" | rofi -dmenu -p "action" -mesg "pc is scheduled to be rebooted in one minute")

case "$option" in
    "cancel") shutdown -c ;;
    "reboot now") shutdown -r now ;;
    *) exit 1 ;;
esac
