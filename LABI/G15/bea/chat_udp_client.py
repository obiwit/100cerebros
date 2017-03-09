import select
from socket import *
import sys

def main():
    udp_c = socket(AF_INET, SOCK_DGRAM)
    udp_c.bind(("127.0.0.1", 0))

    server_addr = ("127.0.0.1", 1234)

    while 1:
        rsocks = select.select([udp_c, sys.stdin, ], [], [])[0]

        for sock in rsocks:
            if sock == udp_c:
                # Informação recebida no socket
                data, addr = udp_c.recvfrom(4096)
                sys.stdout.write("--> %s\n" % str(data)[2:-3])
            elif sock == sys.stdin:
                # Informação recebida do teclado
                data = sys.stdin.readline()
                udp_c.sendto(data.encode(), server_addr)

main()
