
while true; do
    seconds=$(( (RANDOM % 60) + 1 ))
    sleep $seconds
    notify-send "oh no the wifi is gone!" ":(((((((("
    nmcli radio wifi off
    sleep 5
    notify-send "we'll give it back now" "say thanks :D!"
    nmcli radio wifi on
done
