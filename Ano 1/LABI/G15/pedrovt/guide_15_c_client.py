# encoding=utf-8
# UDP Chat Client version

import socket
import select
import sys

def main():
    # creates socket
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # binds socket
    udp_s.bind( ('0.0.0.0', 0))

    # server addr
    server_addr = ("127.0.0.1", 1234)

    # communicates with server and clients
    while 1:
        rsocks = select.select([udp_s, sys.stdin, ], [], [])[0]

        for sock in rsocks:
            # current client --> gets input and sends to the server
            if sock == sys.stdin:
                data = bytes(input("Please introduce your message: "), encoding="utf-8")
                # sends data to the server
                udp_s.sendto(data.upper(), server_addr)

            # other clients --> gets their messages
            elif sock == udp_s:
                # receive answer from server
                data, addr = udp_s.recvfrom(4096)
                print ("%s " %data)

    # close
    # udp_s.close()

# runs program
main()