#!/bin/bash

xdotool mousemove 1650 630 click 1
# sleep 1


# xdotool mousemove 1800 320

while true; do
  color=$(import -window root -crop 1x1+1650+630 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#2C2C2C" ]; then
  echo nashel $color
  sleep 0.5
  break
  else
  echo ne tot $color
  sleep 0.5
  fi
done

echo "tut"