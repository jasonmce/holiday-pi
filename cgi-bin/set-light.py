from time import sleep
import pifacedigitalio
import sys
 
DELAY = 0.5  # seconds

lights = int(sys.argv[1])
effect = sys.argv[2]
 
if __name__ == "__main__":
    pifacedigital = pifacedigitalio.PiFaceDigital()

    pifacedigital.output_port.all_off()

    while True:
      pifacedigital.leds[lights].toggle()

