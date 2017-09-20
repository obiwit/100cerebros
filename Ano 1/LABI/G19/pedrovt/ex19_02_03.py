import wave
import sys
import pyaudio

player = pyaudio.PyAudio()

def main(argv):
    wf = wave.open(argv[1], "rb")
    nchannels    = wf.getnchannels()
    frame_rate   = wf.getframerate()
    sample_width = wf.getsampwidth()

    print "Number of Channels: " + str(nchannels)
    print "Framerate: " + str(frame_rate)
    print "Sample Width: " + str(sample_width)
    print "Number of frames: " + str(wf.getnframes())

    stream = player.open(format=player.get_format_from_width(sample_width),
                         channels=nchannels,
                         rate=frame_rate*6,
                         output=True)
    while True:
        data = wf.readframes(1024)
        if not data:
            break
        # stream.write(data*2)
        stream.write(data)

    stream.close()
    player.terminate()
    wf.close()

main(sys.argv)