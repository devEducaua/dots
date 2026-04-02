#!/bin/bash

CONFIG="$HOME/.config/bspwm/bspwmrc"

normal_gaps() {
    sed -i '10s|.*|bspc config top_padding 50|' "$CONFIG"
    sed -i '11s|.*|bspc config bottom_padding 50|' "$CONFIG"
    sed -i '12s|.*|bspc config left_padding 50|' "$CONFIG"
    sed -i '13s|.*|bspc config right_padding 50|' "$CONFIG"
}

min_gaps() {
    sed -i '10s|.*|bspc config top_padding 0|' "$CONFIG"
    sed -i '11s|.*|bspc config bottom_padding 0|' "$CONFIG"
    sed -i '12s|.*|bspc config left_padding 0|' "$CONFIG"
    sed -i '13s|.*|bspc config right_padding 0|' "$CONFIG"
}

case "$1" in
     z)
        min_gaps
        bspc wm -r
         ;;
     n)
        normal_gaps
        bspc wm -r
         ;;
     *)
        echo "pass one argument"
         ;;
esac
