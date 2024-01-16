#!/bin/bash

color=$(hyprpicker -a)

if [[ color == "" ]]; then
    echo Selection canceled
    exit 0
fi

notify-send "Get color: $color" 
wl-copy $color
