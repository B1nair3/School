from datetime import date

atual = date.today().year
data = int(input("Digite o ano em que você nasceu: "))
if atual - data >= 18:
    print(f"Você tem {atual - data} anos, é maior de idade!")
else:
    print(f"Você tem {atual - data} anos, é menor de idade!")