nome = input("Informe o nome completo: ")
nome = nome.title()
email = input("Informe o e-mail: ")
telefone = input("Informe o número de telefoneefone: ")
cpf = input("Informe o CPF: ")
endereco = input("Informe o endereço: ")
cep = input("Informe o CEP: ")
emprestimo = int(input("Informe o valor do empréstimo: "))
salario = float(input("Informe o salário líquido: "))
meses = int(input("Informe a quantidade de meses para pagamento: "))
validacao = 0

#validação do cpf
while True:
    cpf = cpf.replace(".", "")
    cpf = cpf.replace("-", "")
    cpf = cpf.strip()

    if (len(cpf) == 11):
        break
    else:
        cpf = input("Digite um cpf valido: ")
validacao = 0

#validação do telefoneefone
while True:
    telefone = telefone.replace("(", "")
    telefone = telefone.replace(")", "")
    telefone = telefone.replace("-", "")
    telefone = telefone.strip()

    if (len(telefone)==11):
        break
    else:
        telefone = input("Digite um telefone valido: ")
validacao = 0

#validação do cep
while True:
    cep = cep.replace(".", "")
    cep = cep.replace("-", "")
    cep = cep.strip()

    if(len(cep)==8):
        break
    else:
        cep = input("Digite um cep valido: ")
validacao = 0

#validação do email
while True:
    email = email.lower()
    if(("@gmail." in email) or ("@g." in email)):
        break
    else:
        email = input("Digite um email valido: ")

if(emprestimo/meses <= (salario * 0.3)):
    print("\nEmpréstimo aprovado!")
else:
    print(f"\nEmpréstimo negado! O valor da prestação é maior que 30% do sálario do solicitante.")