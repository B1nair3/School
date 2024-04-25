vel = float(input("Digite a velocidade do carro: "))
if vel > 80:
    multa = (vel - 80) * 7
    print(f"Você esta a {vel} numa via de 80Km/H! Multado em {multa}R$")