#!/bin/bash

sudo shutdown -p

option=$(printf "cancel\npower off now" | rofi -dmenu -p "action" -mesg "pc is scheduled to be powered off in one minute")

case "$option" in
    "cancel") shutdown -c ;;
    "power off now") shutdown -p now
    *) exit 1 ;;
esac
