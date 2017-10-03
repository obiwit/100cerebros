from socket import *

def main():
    udp_s = socket(AF_INET, SOCK_DGRAM)
    udp_s.bind(("0.0.0.0", 1234))

    # Lista de sockets conhecidos
    addr_list = []
    while 1:
        data, addr = udp_s.recvfrom(4096)
        print (data)

        # Adicionar o nome do socket à lista de sockets conhecidos
        if not addr in addr_list:
            addr_list.append(addr)

        # Enviar a mensagem para todos
        for dst_addr in addr_list:
            udp_s.sendto(data.upper(), dst_addr)

main()
