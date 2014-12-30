#!/bin/bash
# Script to turn the lights off every night at OFF_HOUR
# and on again each morning at ON_HOUR.

# Only turn on for Monday (1) through Friday (5).
DAY_OF_WEEK=$(date +%u)
if [ 5 -lt $DAY_OF_WEEK ]; then
  python3 /var/holiday-pi/cgi-bin/reset-lights.py 0 on
  echo "turned off for weekend";
  exit 1;
fi

ON_HOUR=6
OFF_HOUR=18

