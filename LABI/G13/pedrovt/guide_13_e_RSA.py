# encoding=utf-8

from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP

# Reads file name and number of bits of the key from user
n_bits = int(raw_input("Please enter the number of bits for the key: "))
path = str(raw_input("Save keys as: "))+".pem"

keypair = RSA.generate(n_bits)
file = open(path, "w")
file.write(keypair.exportKey( "PEM", "senha" ))
file.close()

file = open(path, "r" )
keypair = RSA.importKey(file.read(), "senha" )

cipher = PKCS1_OAEP.new(keypair)

# Encryption w/ public key
x = cipher.encrypt( "The quick brown fox jumps over the lazy dog" )

# Decryption with private key
print cipher.decrypt( x )