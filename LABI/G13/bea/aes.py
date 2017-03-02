import sys
import os.path
import hashlib
from Crypto.Cipher import AES


# validation
key = sys.argv[1][:16]
if (len(sys.argv) > 2):
    # file validation
    if ((os.path.exists(sys.argv[2])) & (os.path.isfile(sys.argv[2]))):
        # key validation
        if (len(key) < 16):
            key = str(hashlib.sha1(key.encode()).hexdigest())[:16]
    else:
        sys.exit("Invalid file.\nUsage: python aes.py key file <encryp/decrypt>t\n");
else:
    sys.exit("Usage: python aes.py key file <encryp/decrypt>\n");


cipher = AES.new(key)

# encryption
if (sys.argv[3] == "encrypt"):
    f = open(sys.argv[2], "rb")
    buffer = f.read(cipher.block_size)
    # make surre everything has the right size - if not, fill with 0's
    lenBuf = len(buffer)
    if (lenBuf < cipher.block_size):
        buffer = buffer + bytes(cipher.block_size - lenBuf)
    sys.stdout.buffer.write(cipher.encrypt(buffer))
    while (lenBuf > 0):
        buffer = f.read(cipher.block_size)
        lenBuf = len(buffer)
        if (lenBuf < cipher.block_size):
            buffer = buffer + bytes(cipher.block_size - lenBuf)
        sys.stdout.buffer.write(cipher.encrypt(buffer))

# decryption
else:
    fileSize = os.path.getsize(sys.argv[2])
    if (fileSize % cipher.block_size != 0):
        sys.exit("Invalid file.")
    f = open(sys.argv[2], "rb")
    buffer = f.read(cipher.block_size)
    blockCounter = 1
    blockNum = fileSize/cipher.block_size

    sys.stdout.buffer.write(cipher.decrypt(buffer))
    while (len(buffer) > 0):
        buffer = f.read(cipher.block_size)
        blockCounter++;
        # remove excess - HOW?
        #if (blockCounter == blockNum):
        #    buffer =
        sys.stdout.buffer.write(cipher.decrypt(buffer))
