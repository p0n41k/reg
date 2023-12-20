#!/bin/bash

xdotool mousemove 50 50 click 1
xdotool mousemove 200 300

while true; do
    color=$(import -window root -crop 1x1+200+300 -depth 8 txt:- | awk 'NR==2 {print $3}')
    if [ "$color" == "#2B2A33" ]; then
        sleep 0.2
        break
    else
        sleep 0.2
    fi
done


xdotool type "https://accounts.firefox.com/?context=fx_desktop_v3&entrypoint=fxa_app_menu&action=email&service=sync"
xdotool key Return

