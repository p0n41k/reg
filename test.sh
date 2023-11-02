#!/bin/bash

xdotool mousemove 50 50 click 1
# sleep 1


# xdotool mousemove 2500 500

while true; do
  color=$(import -window root -crop 1x1+2500+500 -depth 8 txt:- | awk 'NR==2 {print $3}')
  if [ "$color" == "#292929" ]; then
  echo nashel $color
  sleep 0.5
  break
  else
  echo ne tot
  sleep 0.5
  fi
done

echo "tut"