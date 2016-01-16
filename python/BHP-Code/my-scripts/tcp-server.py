import socket
import threading

bindIP = "0.0.0.0"
bindPORT = 9999

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server.bind(bindIP,bindPORT)

server.listen(5)

print("[*] Listening on %s:%d" % (bindIP, bindPORT))

def handle_client(client_socket):
    req = client_socket.recv(1024)

    print("[*] Received: %s" % request)

    client_socket.send(b"ACK!")
    client_socket.close()

while True:
    client,addr = server.accept()

    print("[*] Got connection from: %s:%d" & (addr[0],addr[1]))

    client_handler = threading.Thread(target = handle_client,args=(client,))
    client_handler.start()

