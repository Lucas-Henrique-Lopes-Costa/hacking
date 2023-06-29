import socket

# client.connect(("bancocn.com", 80)) # conecta
# client.send(b"Hello World") # envia
# resposta = client.recv(1024) # recebe
# print(resposta)

ports = [21, 22, 80, 443, 445, 3306, 25]

for port in ports:
	client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	client.settimeout(0.1)
	
	code = client.connect_ex(("bancocn.com", port))  # verifica se foi feita a conexão

	if code == 0:
		print(port, "Porta Aberta")
