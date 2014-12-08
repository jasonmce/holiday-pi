#!/bin/bash
echo Content-type: text/plain
echo ""

source /var/holiday-pi/cgi-bin/pi-status

lights=$((($lights % 7)+1))

echo "lights is "
echo $lights

echo "lights=$lights;effect=$effect" > /var/holiday-pi/cgi-bin/pi-status

