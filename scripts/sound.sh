#!/bin/bash

VOLUME_STEP=10
MINI_VOLUME=1

increase_volume() {
    pamixer -i $VOLUME_STEP
    dunstify -i GIBRISH "inc    -   $(pamixer --get-volume)%"
}

decrease_volume() {
    pamixer -d $VOLUME_STEP
    dunstify -i GIBRISH "dec    -   $(pamixer --get-volume)%"
}

mini_inc() {
    pamixer -i $MINI_VOLUME
    dunstify -i GIBRISH "m-inc     -   $(pamixer --get-volume)%"
}

mini_dec() {
    pamixer -d $MINI_VOLUME 
    dunstify -i GIBRISH "m-dec     -   $(pamixer --get-volume)%"
}

case "$1" in
    up)
        increase_volume
        ;;
    down)
        decrease_volume
        ;;
    mup)
        mini_inc
        ;;
    mdown) 
        mini_dec
        ;;
    *)
        echo "Uso: $0 {up|down|mup|mdown}"
        exit 1
esac
