# encoding=utf-8
import socket

def main():
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_s.bind(("127.0.0.1", 1234))

    # máximo de 1 cliente à espera de aceitação
    tcp_s.listen(1)
    # esperar por novos clientes
    client_s, client_addr = tcp_s.accept()

    while 1:
        data = client_s.recv(4096)
        client_s.send(data.upper())

    client_s.close()
    tcp_s.close()

main()
