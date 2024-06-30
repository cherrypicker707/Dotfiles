#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/topbar.log
polybar topbar 2>&1 | tee -a /tmp/topbar.log & disown
