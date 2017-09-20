import pyaudio
player = pyaudio.PyAudio()

# ...

stream = player.open(format = player.get_format_from_width(sample_width),
                     channels = nchannels,
                     rate = frame_rate,
                     output = True)

while True:
    data = wf.readframes(1024)
    if not data:
        break
        
stream.write(data)

stream.close()
player.terminate()
