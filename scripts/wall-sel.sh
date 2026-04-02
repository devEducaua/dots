#!/bin/sh

dir="/home/$USER/img/wall/"
cd $dir
wallpaper=""
startup_config_file="/home/$USER/.config/bspwm/bspwmrc"

wallpaper=$(ls $dir | dmenu -i -p "wall:")

action=$1

if [ -z "$action" ]; then
    if [ -n "$wallpaper" ]; then
        feh --bg-fill $wallpaper && exit 0 &

        sed -i '/feh/d' $startup_config_file
        echo "feh --bg-fill ${dir}${wallpaper} &" >> $startup_config_file
    fi
elif [ "$action" = "view" ]; then
    feh $wallpaper
    killall feh && exit
fi
