#!/bin/bash

file_to_monitor="doNotOpen.txt"

if ! command -v inotifywait > /dev/null; then
    echo "inotifywait not found, please install it"
    exit 1
fi


inotifywait -m -e open "$file_to_monitor" | while read -r r event; do
    notify-send "hahah your system is gonna sleep" "and there's nothing you can do about it"
    sleep 2
    shutdown -h now
done