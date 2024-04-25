n1 = float(input("Digite um numero: "))
n2 = float(input("Digite outro numero: "))
print(f"{n1} + {n2} = {n1 + n2}")
print(f"{n1} - {n2} = {n1 - n2}")
print(f"{n1} x {n2} = {n1 * n2}")
if n2 > 0:
    print(f"{n1} / {n2} = {n1 / n2}")
else: 
    print("Não é possivel dividir por zero!")
