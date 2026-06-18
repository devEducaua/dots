#!/bin/sh

display=$1
if [ "$display" = "x11" ]; then
    menu="dmenu"
elif [ "$display" = "way" ]; then
    menu="mew"
else
    exit 1
fi

dir="$HOME/img/wall"

wallpaper=$(ls "$dir" | "$menu" -i -p "wall:")
[ -z "$wallpaper" ] && exit 1

path="$dir/$wallpaper"

if [ "$display" = "x11" ]; then
    xwallpaper --zoom "$path"
else
    $HOME/sou/wbg/build/wbg "$path"
fi

