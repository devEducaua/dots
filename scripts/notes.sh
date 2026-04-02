#!/bin/sh

folder=~/notes
notes=$(find "$folder" -type f | sed "s|$folder/||")

daily() {
    note_name="daily/$(date +%d-%m-%Y).md"
    st -e nvim -n "$folder/$note_name"
}

new_note() {
    note_name="$(dmenu -p "new:" -i)" || exit 0

    case "$note_name" in
        *.md) ;;
        *) note_name="$note_name.md" ;;
    esac

    st -e nvim -n "$folder/$note_name"
}

choice=$(echo -e "open\nnew\ndaily\n$notes" | dmenu -p "notes:" -i) || exit 0

case "$choice" in
    new)
        new_note
        ;;
    daily)
        daily
        ;;
    open)
        st -e nvim -n "$folder"
        ;;
    *.md)
        st -e nvim -n "$folder/$choice"
        ;;
    *)
        exit 1
        ;;
esac
