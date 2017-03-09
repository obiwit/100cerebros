import socket

def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind( ("127.0.0.1", 1234) )
    #udp_s.bind( ("0.0.0.0", 1234) )
    while 1:
        data, addr = udp_s.recvfrom(4096)
        udp_s.sendto(data.upper(), addr)
    udp_s.close()


main()
