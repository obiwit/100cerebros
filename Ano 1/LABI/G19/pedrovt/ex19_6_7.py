#encoding=utf-8
import sys
import wave
from struct import pack
from math import sin, pi

def main(argv):
    # dictionary with tone values
    tones = {
        "0": [941, 1336],
        "1": [697, 1029],
        "2": [697, 1336],
        "3": [697, 1477],
        "4": [770, 1209],
        "5": [770, 1336],
        "6": [770, 1477],
        "7": [852, 1209],
        "8": [852, 1336],
        "9": [852, 1477],
        "*": [941, 1209],
        "#": [941, 1477],
        "A": [697, 1633],
        "B": [770, 1633],
        "C": [852, 1633],
        "D": [941, 1633],
        }

    number = argv[1]  # número a codificar
    rate = 44100
    amplitude = 10000
    data = []

    wv = wave.open(argv[2], "w")
    wv.setparams((1, 2, rate, 0, "NONE", "not compressed"))

    for n in number:
        # Códigos DTMF
        for i in range(0, int(rate * 0.040)):
            data.append(
                amplitude * sin(2 * pi * tones[n][0] * i / rate)
                + amplitude * sin(2 * pi * tones[n][1] * i / rate)
            )
        # Pausa (silêncio)
        for i in range(0, int(rate * 0.040)):
            data.append(
                0
            )

    # save to file
    wvData = []
    for v in data:
        wvData += pack("h", int(v))

    wv.writeframes(bytearray(wvData))
    wv.close()

if (len(sys.argv) >= 3):
    main(sys.argv)
else:
    print >> sys.stderr, "Usage: ex19_6_7.py <number to codify> <save location>"
    exit(1)