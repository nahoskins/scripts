import socket

target_host = "192.168.43.202"
target_port = 80
part1 = '51e342ff63d20c231ced7347e593276b'
part12 = '20201'
part3 = '111111111'

def sendit(url):
  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  s.connect((target_host, target_port))
  s.send(b"GET /"+url+"\r\n")
  response = s.recv(4096)
  print(url)
  print(response)
  s.close()
