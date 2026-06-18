#!/bin/sh

launcher=$1
if [ -z "$launcher" ]; then
    launcher="dmenu"
fi

tmuxsessions=$(tmux ls | awk -F: '{ print $1 }')

choice=$(echo -e "$tmuxsessions" | "$launcher" -p "attach:" -i)

[ -z "$choice" ] && exit 0

st -e tmux a -t "$choice"
