from struct import pack
from math import sin, pi
import wave
import sys

# Generates audio

def main(argv):
    rate=44100
    wv = wave.open(argv[1], "w")
    wv.setparams((1, 2, rate, 0, "NONE", "not compressed"))
    amplitude = 10000
    data = []
    freq = 440
    duration = 1 # Em segundos
    if (False) then:
        # single signal sound gen
        for i in range(0, rate * duration):
            data.append(amplitude*sin(2*pi*freq*i/rate))
    else:
        # double signal sound gen
        freq_a = 440
        freq_b = 880
        for i in range(0, rate):
            data.append(
                amplitude*sin(2*math.pi*freq_a*i/rate) +
                amplitude*sin(2*math.pi*freq_b*i/rate)
                )
    # Gerar (pack) a informação no formato correto (16bits)
    wvData = [] for v in data:
        wvData += pack("h", int(v))
    wv.writeframes(bytearray(wvData))
    wv.close()
main(sys.argv)
