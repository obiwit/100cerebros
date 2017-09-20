# encoding=utf-8

# Python 2.7
# File and key are not given as args but by the user in the console

from Crypto.Cipher import ARC4

# Reads key
key = str(raw_input("Please enter your key: "))
cipher = ARC4.new(key)

# -----------------------------------------------------------------
# Encrypts file
path = str(raw_input("Please enter the name of the file you want to encrypt: "))
infile = open(path, "rb")

buffer = infile.read(512)

while len(buffer) > 0:
    cryptogram = cipher.encrypt(buffer)
    buffer = infile.read(512)

infile.close()

print "Cryptogram from file " + path + "\n\n" + cryptogram

# -----------------------------------------------------------------
# Decrypts file
decipher = ARC4.new(key)
decrypted = decipher.decrypt(cryptogram)
print "\n--------------------------------------\nDecrypted file: \n\n" + decrypted
