#!/bin/bash

output=$(mpc current 2>&1)
trunc=$(mpc --format "%title%" current 2>&1)
maxlen=36

if echo "$output" | grep -q "MPD error: Connection refused"; then
    echo "MPD"
elif [ -z "$output" ]; then
    echo "MPD"
else 
    if [[ "${#output}" -gt "$maxlen" ]]; then
       echo "$trunc" 
    else
        echo "$output"
    fi
fi
