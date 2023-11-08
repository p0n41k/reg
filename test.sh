#!/bin/bash

# gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Lock screen'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/home/student/reg/lock.sh'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Pause'
# sleep 1


# xdotool mousemove 1600 630

# while true; do
#   color=$(import -window root -crop 1x1+1600+630 -depth 8 txt:- | awk 'NR==2 {print $3}')
#   if [ "$color" == "#2C2C2C" ]; then
#   echo nashel $color
#   sleep 0.5
#   break
#   else
#   echo ne tot $color
#   sleep 0.5
#   fi
# done

# echo "tut"