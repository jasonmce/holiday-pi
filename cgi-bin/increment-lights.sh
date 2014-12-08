source /var/holiday-pi/cgi-bin/pi-status

lights=$((($lights % 8)+1))

echo "lights is "
echo $lights

echo "lights=$lights;effect=$effect" > /var/holiday-pi/cgi-bin/pi-status

