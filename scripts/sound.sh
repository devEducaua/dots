#!/bin/bash

STEP=10
MSTEP=1

change_and_send() {
    mode=$1
    if [ "$mode" = "i" ]; then
        pamixer -i $2
    else
        pamixer -d $2
    fi
    notify-send -i GIBRISH "$3    -   $(pamixer --get-volume)%"
}

case "$1" in
    up)
        change_and_send "i" $STEP "inc"
        ;;
    down)
        change_and_send "d" $STEP "dec"
        ;;
    mup)
        change_and_send "i" $MSTEP "m-inc"
        ;;
    mdown) 
        change_and_send "d" $MSTEP "m-dec"
        ;;
    *)
        echo "uso: $0 {up|down|mup|mdown}"
        exit 1
esac
