#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ "$1" == "one" ]]; then
    polybar -c ~/.config/polybar/one.ini &
elif [[ "$1" == "min" ]]; then
    polybar -c ~/.config/polybar/min.ini &
elif [[ "$1" == "m" ]]; then
    polybar -c ~/.config/polybar/m.ini &
elif [[ "$1" == "simple" ]]; then
    polybar -c ~/.config/polybar/simple.ini &
elif [[ "$1" == "b" ]]; then
    polybar -c ~/.config/polybar/b.ini &
elif [[ "$1" == "d" ]]; then
    polybar -c ~/.config/polybar/d.ini left &
    polybar -c ~/.config/polybar/d.ini mid &
    polybar -c ~/.config/polybar/d.ini right &
else
    polybar -c ~/.config/polybar/config.ini barLeft &
    polybar -c ~/.config/polybar/config.ini barRight &
fi

