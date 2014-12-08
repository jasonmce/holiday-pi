#!/bin/bash
echo Content-type: text/plain
echo ""

source /var/holiday-pi/cgi-bin/pi-status

case $effect in
  on)
    effect='slow'
    ;;
  slow)
    effect='fast'
    ;;
  *)
    effect='on'
    ;;

esac


echo "effect is "
echo $effect

echo "lights=$lights;effect=$effect" > /var/holiday-pi/cgi-bin/pi-status

sudo pkill python3
((sudo python3 /var/holiday-pi/cgi-bin/reset-lights.py $lights $effect)&)

exit

