nome = input("Digite seu nome completo: ")
print(f"Nome maiusculo: {nome.upper()}")
print(f"Nome minusculo: {nome.lower()}")
quantidade = 0
primeiro = 0
for i in range(0, len(nome)):
    if nome[i] != " ":
        quantidade += 1
    else:
        if primeiro == 0:
            primeiro = quantidade
print(f"Tamanho do nome: {quantidade}")
print(f"Tamanho do primeiro nome: {primeiro}")