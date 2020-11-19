import os

def greet(name):
	print("we are making you a message box")
	os.system("msg * "+name)

def main():
	name = input("Please enter your name: ")
	greet(name)

if __name__ == '__main__':
	main()

