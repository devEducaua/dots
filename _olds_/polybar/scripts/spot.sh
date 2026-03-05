status=$(playerctl --player=spotify status 2>&1)

if [[ "$status" == "No players found" ]]; then
    echo " "
else
    playerctl --player=spotify metadata --format "{{artist}} - {{title}}" | cut -c1-50
fi
