#!/bin/bash

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
