#!/bin/bash

xdotool mousemove 50 50 click 1
# sleep 1


# xdotool mousemove 1800 320

while true; do
  color=$(import -window root -crop 1x1+2150+420 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#" ]; then
  echo nashel $color
  sleep 0.5
  break
  else
  echo ne tot $color
  sleep 0.5
  fi
done

echo "tut"