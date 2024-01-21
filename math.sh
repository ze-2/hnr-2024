#!/bin/bash

first=$(( (RANDOM % 999) + 1 ))
second=$(( (RANDOM % 999) + 1 ))
third=$(( (RANDOM % 999) + 1 ))
answer=$(($first * $second + $third))
question="$first * $second + $third"
echo $answer


file_to_monitor="~/Desktop/notSecret.txt"

if ! command -v inotifywait > /dev/null; then
    echo "inotifywait not found, please install it"
    exit 1
fi

inotifywait -m -e open "$file_to_monitor" | while read -r r event; do
    if zenity --question --text="Are you sure you want to open ?"; then
        inputStr=$(zenity --entry --text="Only those who are worthy can enter. What is the answer to $question ?")
        if [[ $inputStr == $answer ]]; then
            gnome-terminal
        else
            zenity --info --text="You may not proceed."
        fi
    fi
done
