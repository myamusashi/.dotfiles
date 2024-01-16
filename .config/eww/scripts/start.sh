#!/bin/bash
pkill eww
eww daemon
eww open notifications_popup 
eww open notifications_popup1
~/.config/eww/scripts/notifications.py &
