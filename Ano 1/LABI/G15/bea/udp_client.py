import socket

def main():
    udp_c = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_c.bind(("127.0.0.1", 0))
    # print (udp_c.getsockname())
    server_addr = ("127.0.0.1", 1234)
    
    while 1:
        data = input("<-:")
        udp_c.sendto(data.encode(), server_addr)
        data, addr = udp_c.recvfrom(4096)
        print ("->: %s \n" % str(data)[2:-1])
    udp_c.close()


main()
