#!/bin/sh

operation=$(dmenu -p "calc:" &)

[ -z "$operation" ] && exit

result=$(echo "$operation" | bc)

notify-send -i NONE "$result" "$operation"
