#!/usr/bin/env bash

# Exits if a command fails

# if passwd -S | grep NP
# then
    # No password set, so ask user to set one
# gnome-terminal.real -t "123⁣" --geometry=40x10 --wait -- passwd
    # sleep 1
# fi

# launch new terminal and prompt afk phrase
# gnome-terminal.real -t "" --geometry=40x10 --wait -- bash -c "echo 'Write the afk message, max: 50 sym:'; read test; echo \$test > /tmp/phrase;"

# read phrase from file
# message=""
# while read -r line; do
#     message="$line"
#     break
# done < /tmp/phrase

# # len of phrase
# len="${#message}"

# # exit when len > 10
# if [[ len -gt 50 ]]; then
#     exit 1
# fi

# # remove tmp file
# rm /tmp/phrase

# # get display resolution
# x=$(xrandr | fgrep '*' | cut -d ' ' -f 4 | cut -d 'x' -f 1)
# y=$(xrandr | fgrep '*' | cut -d ' ' -f 4 | cut -d 'x' -f 2)
# #text_x=$(( x - x / 2 - len * 14 ))
# # set text position
# text_x=$(( x -x/2 - len * 90))
# text_y=$(( y -y/2 ))
# draw="text "$text_x","$text_y" '$message'"

# # convert image
# convert -font "Yrsa" /home/student/reg/wallpaper.png -resize "$x"x"$y"! -pointsize 500 -fill black -draw "$draw" /tmp/wallpaper.png
# # lock
i3lock -i /home/student/reg/wallpaper.png


# bash +x ./check.sh &

