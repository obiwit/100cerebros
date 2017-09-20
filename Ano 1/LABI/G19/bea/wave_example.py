import wave
import sys
def main(argv):
    wf = wave.open(argv[1], "rb")
    print wf.getnchannels()
    # ...
    wf.close()
main(sys.argv)
