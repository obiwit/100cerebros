# Usage: py rc4.py key file encrypt
#    or: py rc4.py key cryptogram decrypt

import sys
from Crypto.Cipher import ARC4

cipher = ARC4.new(sys.argv[1])

if (sys.argv[3] == 'encrypt'):
    f = open(sys.argv[2], "rb")
    buffer = f.read(512)
    sys.stdout.buffer.write(cipher.encrypt(buffer))

    while(len(buffer) > 0):
        buffer = f.read(512)
        sys.stdout.buffer.write(cipher.encrypt(buffer))


else: # decrypt
    f = open(sys.argv[2], "rb")
    buffer = f.read(512)
    sys.stdout.buffer.write(cipher.decrypt(buffer))

    while(len(buffer) > 0):
        buffer = f.read(512)
        sys.stdout.buffer.write(cipher.decrypt(buffer))



## ISTO_101 : encriptar    -> python rc4_p.py yodeleyodeleyodeleio dummy.txt encrypt > dummy2.txt
## ISTO_102 : desencriptar -> python rc4_p.py yodeleyodeleyodeleio dummy2.txt decrypt > dummy3.txt
