#!/bin/sh

#EXEC=nvim
EXEC="$HOME/dow/bloat/nvim-linux-x86_64/bin/nvim"

if [ -z "$1" ]; then
    "$EXEC" .
else
    "$EXEC"  "$@"
fi
