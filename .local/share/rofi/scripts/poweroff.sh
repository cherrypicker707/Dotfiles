#!/bin/bash

sudo shutdown --poweroff

option=$(printf "cancel\npower off now" | rofi -dmenu -p "action" -mesg "pc is scheduled to be powered off in one minute")

case "$option" in
    "cancel") sudo shutdown -c ;;
    "power off now") sudo shutdown --poweroff now ;;
    *) exit 1 ;;
esac
