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
#      if (1 & lights):
      if ((0 == (1 & lights)) or (0 != lights)):
        pifacedigital.leds[0].toggle()
        print('light 0 is on')
      if (2 & lights):
        pifacedigital.leds[1].toggle()
        print('light 1 is on')

      if ('on' == effect):
        break
      if ('slow' == effect):
        sleep(1.0)
      if ('fast' == effect):
        sleep(0.5)

