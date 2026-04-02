#!/bin/sh

tmuxsessions=$(tmux ls | awk -F: '{ print $1 }')

choice=$(echo -e "$tmuxsessions" | dmenu -p "attach:" -i)

[ -z "$choice" ] && exit 0

st -e tmux a -t "$choice"
