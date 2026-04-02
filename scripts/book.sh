
curbookpathfile="$HOME/.config/cur-book-path.txt"

open() {
    CURRENTBOOK=$(cat "$curbookpathfile")
    zathura "$CURRENTBOOK" &
}

update() {
    path=$1
    if [ -z "$path" ]; then
        echo "pass the new path"
        exit 1
    fi

    path=$(realpath -m "$path")

    printf '%s\n' "$path" > "$curbookpathfile"
    echo "book update to: $path"
}

show() {
    echo "cat $curbookpathfile"
}

case "$1" in
    "")
        open
        ;;
    s)
        show
        ;;
    u)
        update "$2"
        ;;
    *)
        exit 1
        ;;
esac
