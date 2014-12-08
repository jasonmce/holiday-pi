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


#echo "effect is "
#echo $effect

echo "lights=$lights;effect=$effect" > /var/holiday-pi/cgi-bin/pi-status

sudo pkill python3
((sudo python3 /var/holiday-pi/cgi-bin/reset-lights.py $lights $effect)&)

#echo Status: 302 Found
#echo Location: http://holidaypi.bso1.com/index.html
#echo '<meta http-equiv="refresh" content="2;url=http://holidaypi.bso1.com/">'
#echo "<head><script type='text/javascript'>window.location.replace('/index.html');</script></head>"


