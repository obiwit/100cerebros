# encoding=utf-8
# TCP Client version

import socket

def main():
    # creates socket
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    # binds socket
    tcp_s.bind(('0.0.0.0', 0))

    # connects to server
    tcp_s.connect(("127.0.0.1", 1234))

    # communicates with server
    while 1:
        data = bytes(input("Please introduce your message: "), encoding="utf-8")

        # sends data to the server
        tcp_s.send(data)

        # receives answer from server
        data = tcp_s.recv(4096)
        print(data)

    # close
    # tcp_s.close()

# runs program
main()