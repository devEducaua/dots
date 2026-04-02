#!/bin/sh

vid=$(fd -e mkv -e mp4 -e avi . ~/hdd/mid/series ~/hdd/animes ~/hdd/movies/ | fzf)

[ -z "$vid" ] && exit 0

mpv "$vid"
