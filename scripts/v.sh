#!/usr/bin/env fish

# EXEC=nvim
EXEC=~/dow/bloat/nvim-linux-x86_64/bin/nvim

if test "$argv[1]" = null
    "$EXEC" .
else
    "$EXEC" "$argv"
end
