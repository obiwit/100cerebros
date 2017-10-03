# Usage: py rc4.py key file encrypt
#    or: py rc4.py key cryptogram decrypt

import sys
from Crypto.Cipher import ARC4

def encrypt(filename, key):
	cipher = ARC4.new(key)

	f = open(filename, "rb")
	buffer = f.read(512)
	fout = open(filename+".enc", "wb")

	while (len(buffer) > 0):
		fout.write(cipher.encrypt(buffer))
		buffer = f.read(512)
	f.close()
	fout.close()

def decrypt(filename,key):
	decipher = ARC4.new(key)

	f = open(sys.argv[2]+".enc", "rb")
	fout = open(sys.argv[2]+".dec", "wb")
	buffer = f.read(512)

	while (len(buffer) > 0):
		fout.write(decipher.decrypt(buffer))
		buffer = f.read(512)
	f.close()
	fout.close()

def usage():
	print("Usage: python %s key file <encrypt/decrypt>" % sys.argv[0])
	sys.exit(-1)

####################

if len(sys.argv) < 4:
	usage()

if sys.argv[3] == 'encrypt':
	encrypt(sys.argv[2], sys.argv[1])

elif sys.argv[3] == 'decrypt':
	decrypt(sys.argv[2], sys.argv[1])

else:
	usage()
