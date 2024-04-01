medida = float(input("Digite a largura do reservatorio em centimetros: "))
capacidade = int(medida.__pow__(3) / 1000)
print(f"O reservatório tem capacidade de {capacidade}L")

consumo = float(input("Digite o consumo diário de água: "))
autonomia = capacidade / consumo
print(f"O reservatorio pode ficar {autonomia} dias sem reabastecimento!")

if autonomia < 2:
    print("Consumo elevado!")
elif 2 == autonomia <= 7:
    print("Consumo moderado!")
elif autonomia > 7:
    print("Consumo controlado!")