#!/bin/env bash

SELECTION=$(echo -e "screenshot selection\nscreenshot eDP-1\nscreenshot HDMI-A-2\nscreenshot both screens" | fuzzel -d -p "󰄀 " -w 25 -l 6)

IMG="$HOME/Pictures/screenshot/$(date +%Y-%m-%d_%H-%m-%s).png"


case "$SELECTION" in
	"screenshot selection")
		grim -g "$(slurp)" "$IMG"
		wl-copy < "$IMG"
        mpg123 $HOME/.config/hypr/scripts/audiofile/camera-shutter-6305.mp3
		notify-send -i $HOME/.local/share/icons/Win11-dark/apps@2x/scalable/gscreenshot.svg "Screenshot Taken" "${IMG}"
		;;
	"screenshot eDP-1")
        sleep 2
		grim -c -o eDP-1 "$IMG"
		wl-copy < "$IMG"
        mpg123 $HOME/.config/hypr/scripts/audiofile/camera-shutter-6305.mp3
		notify-send -i $HOME/.local/share/icons/Win11-dark/apps@2x/scalable/gscreenshot.svg "Screenshot Taken" "${IMG}"
		;;
	"screenshot HDMI-A-2")
        sleep 2
		grim -c -o HDMI-A-2 "$IMG"
		wl-copy < "$IMG"
    notify-send -i $HOME/.local/share/icons/Win11-dark/apps@2x/scalable/gscreenshot.svg "Screenshot Taken" "${IMG}"
        mpg123 $HOME/.config/hypr/scripts/audiofile/camera-shutter-6305.mp3
		;;
	"screenshot both screens")
        sleep 2
		grim -c -o eDP-1 "${IMG//.png/-eDP-1.png}"
		grim -c -o HDMI-A-2 "${IMG//.png/-HDMI-A-2.png}"
		montage "${IMG//.png/-eDP-1.png}" "${IMG//.png/-HDMI-A-2-.png}" -tile 2x1 -geometry +0+0 "$IMG" 
		wl-copy < "$IMG"
		rm "${IMG//.png/-eDP-1.png}" "${IMG/.png/-HDMI-A-2.png}"
        mpg123 $HOME/.config/hypr/scripts/audiofile/camera-shutter-6305.mp3
		notify-send -i $HOME/.local/share/icons/Win11-dark/apps@2x/scalable/gscreenshot.svg "Screenshot Taken" "${IMG}"
		;;
    *)
    	;;
esac
