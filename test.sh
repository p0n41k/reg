#!/bin/bash

# xdotool mousemove 50 50 click 1
# sleep 1


xdotool mousemove 1900 900

while true; do
  color=$(import -window root -crop 1x1+1900+900 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#0060DF" ]; then
  sleep 0.5
  break
  else
  sleep 0.5
  fi
done

echo "tut"