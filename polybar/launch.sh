#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar_top.log /tmp/polybar_top_external.log
polybar top 2>&1 | tee -a /tmp/polybar_top.log & disown

if [[ $(xrandr -q | grep '^DP-1 connected') ]]; then
	polybar top_external 2>&1 | tee -a /tmp/polybar_top_external.log & disown
fi
