import random

numero = random.randint(1, 5)
escolha = int(input("Digite um numero de 1 a 5: "))
if escolha == numero:
    print("Você venceu!")
else:
    print("Você perdeu!")