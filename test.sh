#!/bin/bash

xdotool mousemove 50 50 click 1
sleep 1


xdotool mousemove 3420 100
echo $(import -window root -crop 3421x101+1x1 -depth 8 txt:- | grep 3420,100 | awk '{print $3}')


# while true; do
#   color=$(import -window root -crop 101x501+1x1 -depth 8 txt:- | grep 100,500 | awk '{print $3}')
#   if [ "$color" == "#FFFFFF" ]; then
#     echo "nashel ffffff"
#     break
#   else
#   sleep 1
#   echo "sleep"
#   fi
# done

# echo "tut"