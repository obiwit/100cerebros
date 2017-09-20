# encoding=utf-8
# UDP Client version

import socket

def main():
    # creates socket
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # binds socket
    udp_s.bind( ('0.0.0.0', 0))

    # server addr
    server_addr = ("127.0.0.1", 1234)

    # communicates with server
    while 1:
        data = bytes(input("Please introduce your message: "), encoding="utf-8")

        # sends data to the server
        udp_s.sendto(data.upper(), server_addr)

        # receive answer from server
        data, addr = udp_s.recvfrom(4096)
        print ("Answer from server %s " %data)

    # close
    # udp_s.close()

# runs program
main()