#encoding=utf-8

from struct import pack
from math import sin, pi
import wave
import sys

def main(argv):
    rate=44100
    wv = wave.open(argv[1], "w")
    wv.setparams((1, 2, rate, 0, "NONE", "not compressed"))

    amplitude = 10000
    data = []
    duration = 1 # Em segundos

    for n in range(-35,53):
        freq = 432 * pow(2,n/12.0) # different tones

        for i in range(0, rate * duration):
            data.append(
                amplitude * sin(2 * pi * freq * i / rate)
            )

    # Gerar (pack) a informação no formato correto (16bits)
    wvData = []
    for v in data:
        wvData += pack("h", int(v))

    wv.writeframes(bytearray(wvData))
    wv.close()
main(sys.argv)