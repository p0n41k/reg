#!/bin/bash

xdotool mousemove 50 1400 click 1
xdotool type "Chrome"
xdotool key Return

while true; do
  color=$(import -window root -crop 1x1+1600+700 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#FAFAFA" ]; then
  sleep 0.2
  break
  else
  sleep 0.2
  fi
done
xdotool key Escape

while true; do
  color=$(import -window root -crop 1x1+1600+700 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#FAFAFA" ]; then
  sleep 0.2
  break
  else
  sleep 0.2
  fi
done

xdotool key Escape

sleep 1
xdotool windowsize $(xdotool getactivewindow) 100% 100%
xdotool getactivewindow windowmove 0 0
