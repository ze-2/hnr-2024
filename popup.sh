#!/bin/bash

path1="./1.png"
path2="./2.png"
path3="./3.png"
path4="./4.png"
path5="./5.png"
path6="./6.png"

while true; do
    seconds=$(( (RANDOM % 20) + 1 ))
    num_display=$(( (RANDOM % 4) + 1 ))
    sleep $seconds

    for ((i=0; i<num_display; i++)); do
        num=$(( (RANDOM % 6) + 1 ))
        if [ $num -eq 1 ]; then
            path=$path1
        elif [ $num -eq 2 ]; then
            path=$path2
        elif [ $num -eq 3 ]; then
            path=$path3
        elif [ $num -eq 4 ]; then
            path=$path4
        elif [ $num -eq 5 ]; then
            path=$path5
        else
            path=$path6
        fi
        display -resize '50%' $path &
    done

done
