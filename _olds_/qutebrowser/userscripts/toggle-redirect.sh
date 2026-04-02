#!/bin/sh

DIR=$HOME/.config/qutebrowser/greasemonkey/

cd "$DIR" || exit 1

if [ -f "redirect.js.disabled" ]; then
    mv redirect.js.disabled redirect.js
else
    mv redirect.js redirect.js.disabled
fi
