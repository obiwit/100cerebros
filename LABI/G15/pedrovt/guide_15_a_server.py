# encoding=utf-8
# UDP Server version

import socket

def main():
    print("UDP Server is running.")

    # creates socket
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # binds socket
    udp_s.bind( ("127.0.0.1", 1234))

    # recv
    while 1:
        data, addr = udp_s.recvfrom(4096)

        # sends answer to the client
        udp_s.sendto(data.upper(), addr)

    # close
    # udp_s.close()

# runs program
main()