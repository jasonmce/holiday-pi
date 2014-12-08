#!/bin/bash
echo Content-type: text/plain
echo ""

files=(/var/holiday-pi/cgi-bin/music/*)
#printf "%s\n" "${files[RANDOM % ${#files[@]}]}"
sudo pkill mplayer
((sudo mplayer "${files[RANDOM % ${#files[@]}]}" > /dev/null) &)


