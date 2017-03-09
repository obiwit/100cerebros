# encoding=utf-8
# UDP Chat Server version

import socket

def main():
    print("UDP Chat Server is running.")

    # creates socket
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # binds socket
    udp_s.bind(("127.0.0.1", 1234))

    # communicates with clients
    addr_list = []
    while 1:
        # receive
        data, addr = udp_s.recvfrom(4096)
        print(data)

        # updates addr_list
        if not addr in addr_list:
            addr_list.append(addr)

        # send to ALL clients
        for to_addr in addr_list:
            udp_s.sendto(data, to_addr)

    # close
    # udp_s.close()

# runs program
main()