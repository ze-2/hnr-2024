#!/bin/bash

TOUCHPAD_NAME=$(libinput list-devices | grep -i touchpad -A 1 | grep -i 'Kernel:' | awk '{print $2}' | cut -d'/' -f4)

TOUCHPAD_EVENT_FILE="/dev/input/$TOUCHPAD_NAME"


# Clone the git repo
# Check if folder exists
if [ -d "./evlag" ]
then
    rm -rf "./evlag"
fi

git clone https://github.com/filipalac/evlag.git

# Change directory into the cloned repo
cd "./evlag"

# Compile the C code using make
make

# Change the permissions of the file to make it executable
chmod +x ./evlag

# Run the file
sudo ./evlag -d $TOUCHPAD_EVENT_FILE -l 300 -h 8192