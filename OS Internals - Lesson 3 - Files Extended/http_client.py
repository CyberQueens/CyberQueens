
# run with: py -3 http_client.py

import socket

print("starting")
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_address = ('localhost', 9999)
client_socket.connect(server_address)

request_header = b'GET /index.html HTTP/1.0\r\n\r\n'
client_socket.send(request_header)

response = b''
while True:
    recv = client_socket.recv(1024)
    if not recv:
        break
    response += recv 

print(response)
client_socket.close()
print("done")