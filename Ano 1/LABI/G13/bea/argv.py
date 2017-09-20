import sys
import hashlib

f = open(sys.argv[1], "r")
h = hashlib.sha1()

buffer = f.readline()
h.update(buffer)

while len(buffer) > 0:
    buffer = f.readline()
    h.update(buffer)

print(h.hexdigest())
