# encoding=utf-8

from Crypto.Cipher import AES
from Crypto.Hash import SHA

# Reads key from user
user_key = str(raw_input("Please enter your key: "))
key = ""

# If given key has less than 16 bytes, new key is generated
# based on the given one, using SHA-1 hash function

if len(user_key) < 16:
    g = SHA.new(user_key)
    key = g.hexdigest() [0:16]

else:
    key = user_key[0:16]

# Debug
# key = '9l660fr16U214422'

# -----------------------------------------------------------------
# Reads file to encrypt
# path = "C:\\Users\\Pedro\\Desktop\\Comoutilizar.txt"
path = str(raw_input("Please enter the name of the file you want to encrypt: "))
infile = open(path, "rb")

# Encrypts file
cipher = AES.new(key)
buffer = infile.read(512)

while len(buffer) > 0:
    cryptogram = cipher.encrypt(buffer)
    #to print to a file "outfile" use
    #outfile.write(cipher.encrypt(buffer))
    buffer = infile.read(512)

infile.close()

# Prints cryptogram
print "Cryptogram from file " + path + "\n\n" + cryptogram

# -----------------------------------------------------------------
# Decrypts file and prints result
decipher = AES.new(key)
decrypted = decipher.decrypt(cryptogram)
print "\n--------------------------------------\nDecrypted file: \n\n" + decrypted