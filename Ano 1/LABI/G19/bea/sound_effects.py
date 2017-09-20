import wave
import struct
import sys
from struct import pack
import math

def copy(data):
    output = []
    for index,value in enumerate(data):
        output.append(value)
    return output

def reverse(data):
    output = []
    for index,value in enumerate(data):
        output[:0] = value # <- Does this work?
        # PS. alternative:
        #  def deque_appendleft():
        #      d = deque()
        #      for i in range(20):
        #      d.appendleft(i)  # semantically same as above
        # http://stackoverflow.com/questions/8537916/whats-the-idiomatic-syntax-for-prepending-to-a-short-python-list
    return output

def volume_adjust(data, vol_level):
    output = []
    for index,value in enumerate(data):
        output.append(vol_level * value)
    return output

def normalize(data):
    max = 0
    for index,value in enumerate(data):
        if value > max:
            max = value;
    return volume_adjust(data, 32767/max)

def fade_in(data, sample_rate, duration):
    output = []
    time_start = 0
    time_stop = duration * sample_rate
    step = 1.0 / (sample_rate * duration)
    for index, value in enumerate(data):
        #i = index/time_stop;
        #if (i > 1):
        #    i = 1
        output.append(value * index * step)
    return output

def fade_out(data, sample_rate, num_frames, duration):
    output = []
    time_stop = num_frames * sample_rate
    time_start = time_stop - duration * sample_rate
    step = 1.0 / (sample_rate * duration)
    for index, value in enumerate(data):
        #i = time_start - index
        #if (i > 0):
        #    i = 1
        #else
        output.append(value * i * step)
    return output


def mask(data, sample_rate, type, start, dur):
    time_start = start* sample_rate
    time_stop = time_start + duration * sample_rate
    output = []
    for index, value in enumerate(data):
        if (index > time_start and index < time_stop):
            if(type = "tone"):
                output.append(amplitude*sin(2*math.pi* 440 *i/sample_rate))
            elif (type = "silence"):
                output.append(0)
            else: # random
                output.append(random.randint(−32768, 32767))
        else:
            output.append(value * i * step)
    return output

def modulate(data, freq, sample_rate):
    output = []
    for index, value in enumerate(data):
        output.append(value * amplitude*sin(2*math.pi* freq *i/sample_rate))
    return output

def delay(data, sample_rate, amount, delay):
    if amount < 0.05:
        return copy(data) # Not sure if this is redundant or not for making sure
                          # delay also produces a copy, but addmitedly I'm not
                          # really paying much attetion to this code
    else:
        output = [0] * len(data)+tdelay
        for index,value in enumerate(data):
            output[index] += value
            output[index+tdelay] += value * amount
        return output

    # Repetir com 80% da força e com 20% mais de atraso.
    return delay(output, sample_rate, amount * 0.8, delay * 1.2)

def steg_add(data, message):
    bitstream = "" # Irá conter uma string. ex: "011101010"
    for c in message:
        bitstream += format(ord(c),2)
    output = []
    encoded_bit = 0
    for index, value in enumerate(data):

def main(argv):

    print("First thing's first: todos os meus filtros fazem uma copia, pq nao " +
          "se estragam ficheiros originais assim sem se querer saber. Nao e porreiro :/\n")
    stream = wave.open(argv[1], "rb")

    sample_rate = stream.getframerate()
    num_frames = stream.getnframes()

    raw_data = stream.readframes( num_frames )
    stream.close()

    data = struct.unpack("%dh" % num_frames, raw_data) # "B" para ficheiros 8bits

    # Aplica efeito sobre data, para output_data
    i=2
    output_data = []
    while i < len(argv):
        if argv[i] == "copy":
            output_data = copy(data) # <=> volume_adjust(data, 1)
        #elif argv[i] == "foo":
        #    param = int(argv[i+1])
        #    output_data = foo(data, param)
        #    i += 1
        elif argv[i] == "reverse": # Not sure if this works
                output_data = reverse(data)
        elif argv[i] == "volume":
            if (((i + 1) < len(argv)) and (int(argv[i+1]) >= 0) and (int(argv[i+1]) < 10)):
                output_data = volume_adjust(data, float(argv[i+1]))
            else:
                print("Must have a numeric value ranging from [0, 10[ after volume command.")
                sys.exit(2)
        elif argv[i] == "normalize":
                output_data = normalize(data)
        elif argv[i] == "fade-in":  # Not sure if this works
            if (((i + 1) < len(argv)) and (int(argv[i+1]) >= 0) and (int(argv[i+1]) < 31)):
                output_data = fade_in(data, sample_rate, int(argv[i+1]))
            else:
                print("Must have a numeric value ranging from [0, 30] after fade-in command.")
                sys.exit(2)
        elif argv[i] == "fade-out":  # Also not sure if this works
            if (((i + 1) < len(argv)) and (int(argv[i+1]) >= 0) and (int(argv[i+1]) < 31)):
                output_data = fade_out(data, sample_rate, num_frames, int(argv[i+1]))
            else:
                print("Must have a numeric value ranging from [0, 30] after fade-out command.")
                sys.exit(2)
        elif argv[i] == "mask":  # Also not sure if this works
            if ((i + 3) < len(argv):
                type = argv[i+1]
                start = int(argv[i+2])
                dur = int(argv[i+3])
                output_data = mask(data, sample_rate, type, start, dur)
            else:
                print("mask <type> <start time> <duration>")
                sys.exit(2)
        elif argv[i] == "modulate":
            if ((i + 1) < len(argv)):
                output_data = modulate(data, int(argv[i+1]), sample_rate)
            else:
                print("Must have a numeric value after modulate command.")
                sys.exit(2)
        elif argv[i] == "":
        elif... #Outros filtros

        i += 1

    wvData = []
    for v in output_data:
        wvData += pack("h", int(v))

    stream = wave.open("out-"+argv[1], "wb")
    stream.setnchannels(1)
    stream.setsampwidth(2)
    stream.setframerate(sample_rate)
    stream.setnframes(len(wvData))
    stream.writeframes(bytearray(wvData))
    stream.close()

if len(sys.argv) < 3:
    print("Usage: %s wave-file filter1 <params> filter2 <params> ..." % sys.argv[0])
else:
    main(sys.argv)
