#!/bin/sh

action=$(echo -e "shutdown\nreboot\nlogout\n" | dmenu -p "powermenu:" -i) || exit 0

confirm=$(echo -e "yes\nnot" | dmenu -p "confirm:" -i) || exit 0

if [ "$confirm" = "yes" ]; then
    case "$action" in
        shutdown)
            shutdown now
            ;;
        reboot)
            reboot
            ;;
        logout)
            kill -9 -1
            ;;
        *)
            exit 1
            ;;
    esac
fi
