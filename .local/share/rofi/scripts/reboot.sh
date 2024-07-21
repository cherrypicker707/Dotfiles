#!/bin/bash

sudo shutdown --reboot

option=$(printf "cancel\nreboot now" | rofi -dmenu -p "action" -mesg "pc is scheduled to be rebooted in one minute")

case "$option" in
    "cancel") sudo shutdown -c ;;
    "reboot now") sudo shutdown --reboot now ;;
    *) exit 1 ;;
esac
