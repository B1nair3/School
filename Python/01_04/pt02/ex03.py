idade = int(input("Digite a idade do nadador: "))
if 5 <= idade <= 7:
    print("Esta classificado para a classe infantil A!")
elif 8 <= idade <= 11:
    print("Esta classificado para a classe infantil B!")
elif 12 <= idade <= 13:
    print("Esta classificado para a classe juvenil A!")
elif 14 <= idade <= 17:
    print("Esta classificado para a classe juvenil B!")
elif idade >= 18:
    print("Esta classificado para a classe adulto!")
else:
    print("Você é novo demais para competir!")
            