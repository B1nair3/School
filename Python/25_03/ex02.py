numero = input("Digite um numero de 0 a 9999: ")
definidor = ["Unidade", "Dezena", "Centena", "Milhar"]
for i in range(0, len(numero)):
    print(f"{definidor[i]}: {numero[i]}")