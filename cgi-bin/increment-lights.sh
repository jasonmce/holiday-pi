#!/bin/bash
echo Content-type: text/plain
echo ""

source /var/holiday-pi/cgi-bin/pi-status

#lights=$((($lights % 7)+1))
lights=$((($lights % 3)+1))


echo "lights is "
echo $lights

echo "lights=$lights;effect=$effect" > /var/holiday-pi/cgi-bin/pi-status

sudo pkill python3
((sudo python3 /var/holiday-pi/cgi-bin/reset-lights.py $lights $effect)&)

exit

