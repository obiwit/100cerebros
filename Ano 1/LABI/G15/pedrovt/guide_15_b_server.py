# encoding=utf-8
# TCP Server version

import socket

def main():
    print("TCP Server is running.")

    # creates socket
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # binds socket
    tcp_s.bind( ("127.0.0.1", 1234))

    # listen
    tcp_s.listen(2)

    # accept
    client_s, client_addr = tcp_s.accept()

    # communicates with client
    while 1:
        # recv
        data = bytes(client_s.recv(4096))

        # sends answer to the client
        client_s.send(data.upper())

    # close
    # client_s.close()
    # tcp_s.close()

# runs program
main()