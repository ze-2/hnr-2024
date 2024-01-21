
while true; do
    seconds=$(( (RANDOM % 60) + 1 ))
    sleep $seconds
    notify-send "oh no the wifi is gone!" ":(((((((("
    nmcli networking off
    sleep 10
    notify-send "we'll give it back now" "say thanks :D!"
    nmcli networking off
done
