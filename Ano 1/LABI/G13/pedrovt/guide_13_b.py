# encoding=utf-8

# Python 2.7
# File and key are not given as args but by the user in the console

from Crypto.Hash import SHA256

g = SHA256.new()
path = str(raw_input("Please enter the name of the file you want to encrypt: "))
infile = open(path, "rb")

g.update(infile.read())

print "SHA-1 from file " + path + " using Crypto is " + g.hexdigest()
infile.close()