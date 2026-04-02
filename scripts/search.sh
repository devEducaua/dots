#!/usr/bin/env bash

# MINIMAL FORM
# base_url="http://localhost:9999/search?q="
#
# search=$(rofi -dmenu -i -p "Searching") || exit
#
# [ -z "$search" ] && exit
#
# xdg-open "$base_url$search"

# NOT SO MUCH MINIMAL FORM

base_url="" 
discover_method() {
    if [ -z "$1" ]; then
        choice=$(echo -e "dumb\ndicio\nyoutube\nletterboxd\n" | dmenu -i -p "engine:")
    else
        choice="$1"
    fi

    case "$choice" in
        *dicio*)
            base_url="https://www.dicio.com.br/pesquisa.php?q="
            ;;
        *dumb*)
            base_url="https://dm.vern.cc/search?q="
            ;;
        *youtube*)
            base_url="https://youtube.com/results?search_query="
            ;;
        *letterboxd*)
            base_url="https://letterboxd.com/search/"
            ;;
        *)
            exit 1;
            ;;
    esac
}

discover_method $1

search=$(dmenu -i -p "Searching") || exit

[ -z "$search" ] && exit

xdg-open "$base_url$search"
