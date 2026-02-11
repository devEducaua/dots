#!/bin/sh

hinturl=$1
final=${hinturl:24}

newurl="http://localhost:8543/$final"

echo "open -t $newurl" >> "$QUTE_FIFO"
