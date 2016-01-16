import socket

rhost = "127.0.0.1"
rport = 80

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

s.sendto(b"THIS IS A TEST OF THIS SHIT",(rhost,rport))

data, addr = s.recvfrom(4096)

print(data)
