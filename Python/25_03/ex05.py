frase = input("Digite uma frase: ")
contador = 0
print(f"A letra 'a' aparece {frase.upper().count("A")} vezes na frase")
for i in range(0, len(frase)):
    if frase.upper()[i] == "A":
        if contador == 0:
            print(f"O 'a' aparece pela primeira vez na {i + 1}ª posição")
        contador += 1
        if contador == len(frase.upper().split("A")) - 1:
            print(f"O 'a' aparece pela ultima vez na {i + 1}ª posição")