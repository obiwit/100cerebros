# encoding=utf-8
import socket

def main():
    tcp_c = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_c.bind(("127.0.0.1", 0))

    # Ligar ao servidor
    tcp_c.connect( ("127.0.0.1", 1234) )

    while 1:
        data = input("Mensagem: ")
        tcp_c.send(data.encode())
        data = tcp_c.recv(4096)
        print (str(data)[2:-1])

    tcp_c.close()

main()
