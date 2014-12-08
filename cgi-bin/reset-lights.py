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
      if (1 & lights):
        pifacedigital.leds[7].toggle()
      if (2 & lights):
        pifacedigital.leds[6].toggle()
      if (4 & lights):
        pifacedigital.leds[5].toggle()

      if ('slow' == effect):
        sleep(1.0)
      if ('fast' == effect):
        sleep(0.5)

