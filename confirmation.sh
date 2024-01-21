#!/bin/bash

file_to_monitor="~/Desktop/notDangerousFile.txt"

if ! command -v inotifywait > /dev/null; then
    echo "inotifywait not found, please install it"
    exit 1
fi

inotifywait -m -e open "$file_to_monitor" | while read -r r event; do
    notify-send "hahah your system is gonna sleep" "and there's nothing you can do about it"
    sleep 2
    shutdown -h now
done

if zenity --question --text="Are you sure you want to open Firefox?"; then
    if zenity --question --text="It could contain a virus. Are you sure?"; then
        if zenity --question --text="Scan complete. wannacry.exe detected. Continue?"; then
            if zenity --question --text="We're trying to protect you. Don't execute this."; then
                if zenity --question --text="You're absolutely, fully, wholly, complete, utterly, truly, from the bottom of your heart, certain?"; then
                    if !(zenity --question --text="What if I ran another app for you instead? One without a virus."); then
                        if zenity --question --text="Fine. Last chance to back out. Are you sure?"; then
                            zenity --info --text="Okay, you asked for it."
                            /usr/bin/firefox
                        else
                            zenity --info --text="Damn, you backed out."
                        fi
                    else
                        zenity --info --text="Damn, you backed out."
                    fi
                else
                    zenity --info --text="Damn, you backed out."
                fi
            else
                zenity --info --text="Damn, you backed out."
            fi
        else
            zenity --info --text="Damn, you backed out."
        fi
    else
        zenity --info --text="Damn, you backed out."
    fi
else
    zenity --info --text="Damn, you backed out."
fi
