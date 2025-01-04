#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2

config_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P ) 

echo "---" | tee -a /tmp/polybar1.log
polybar -c="${config_path}/config.ini" example 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."

