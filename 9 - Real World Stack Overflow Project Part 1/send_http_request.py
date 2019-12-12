"""
Template program to send HTTP requests to HTTP servers

WARNING: be sure to change 192.168.222.130 to the correct IP address
"""

import socket
import struct

def main():
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(("192.168.222.130", 80))

	buf = (
		b"GET /index.html HTTP/1.1\r\n" + 
		b"Host: 192.168.222.130\r\n" + 
		b"User-Agent: Python\r\n" + 
		b"\r\n"
	)

	s.sendall(buf)
	print("sent")

	print("receiving")

	while True:
		received = s.recv(0x1000)
		if received == b"":
			break
		print(received)

	s.close()	
	print("\ndone")

if __name__ == '__main__':
	server_address = ""
	main()

