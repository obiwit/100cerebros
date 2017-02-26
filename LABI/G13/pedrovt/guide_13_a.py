# encoding=utf-8

# Python 2.7
# File and key are not given as args but by the user in the console

import hashlib

h = hashlib.md5()
h.update( "A long sentence ".encode('utf-8'))
h.update( "broken in two halves".encode('utf-8') )
print "First MD5: " + h.hexdigest()

h.update( "A long sentence".encode('utf-8'))
h.update( "broken in two halves".encode('utf-8') )
print "Second MD5: " + h.hexdigest()

# ------------------------------------------------------------------
# Ex 13.1
path = str(input("Introduza o nome do ficheiro: "))
infile = open(path, "r")

i = hashlib.sha1()
i.update(infile.read())

print "SHA-1 from file " + path + " is " + i.hexdigest()
infile.close()

# ------------------------------------------------------------------
# Ex 13.2
infile = open(path, "r")
buffer = infile.read(512)

j = hashlib.sha1()

# len(buffer) == 0 --> End-of-file reached
# len(buffer) > 0 --> buffer has len(buffer) bytes

while len(buffer) > 0:
    j.update(buffer)
    buffer = infile.read(512)

print "SHA-1 from file " + path + " using 512 blocks is " + j.hexdigest()