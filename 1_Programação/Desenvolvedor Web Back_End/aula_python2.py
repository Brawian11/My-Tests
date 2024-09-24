# Exercicio 1
saldo = float(1200)
print(f'Olá, o saldo disponível é de {saldo}.')
saque = float(input("Por favor, informe o valor do saque que deseja realizar:\n"))
saldo_r = saldo - saque
if (saque <= saldo):
    print(f'Saque de R${saque}, realizado com sucesso, o saldo restante é de {saldo_r}')
else:
    print("O valor informado excede o valor disponível." )

# # Exercicio 2
cliente = str(input("Olá, digite o nome do(a) cliente: \n"))
valor_c = float(input("Agora digite o valor total da compra: \n"))
if valor_c <= 500:
    desconto = valor_c * (10/100)
    valor_t = valor_c - desconto
    print(f'Olá {cliente}, total da compra é de R${valor_t}, ja com {desconto:4.2f} de desconto aplicado.')
else:
    desconto2 = valor_c * (20/100)
    valor_t = valor_c - desconto2
    print(f'Olá {cliente}, total da compra é de R${valor_t}, ja com {desconto2:4.2f} de desconto aplicado.')

# Exercicio 3
num_m = int(input('Por favor, digite o número de maçães adquiridas:\n'))
if num_m <= 12:
    preco_m = 1.30*num_m
    print(f"O valor total da compra é de R${preco_m:4.2f}")
else:
    preco_m = 1.00*num_m
    print(f"O valor total da compra é de R${preco_m:4.2f}")

# Exercicio 4 
professor = str(input('Olá Professor, digite seu nome por favor:\n'))
nivel = int(input("Agora digite seu nivel de professor:\n"))
hora = int(input('Por fim, digite as horas trabalhadas:\n'))
if nivel == 3:
    salario = (25*hora)*30
    print(f"O salário do professor {professor} é de R${salario:4.2f} por mês.")
elif nivel == 2:
    salario = (17*hora)*30
    print(f"O salário do professor {professor} é de R${salario:4.2f} por mês.")
else:
    salario = (12*hora)*30
    print(f"O salário do professor {professor} é de R${salario:4.2f} por mês.")

# Exercico 5
time1 = int(input('Digite o número de gols do 1º time:\n'))
time2 = int(input('Digite o número de gols do 2º time:\n'))
if time1 > time2 :
    print("O Primeiro time é o vencedor!!")
elif time2 > time1:
    print('O Segundo time é o vencedor!!')
else:
    print('Houve um Empate!!')

# Exercicio 6
nota1 = float(input('Por favor, digite o valor da 1º prova:\n'))
nota2 = float(input('Por favor, digite o valor da 2º prova:\n'))
nota3 = float(input('Por favor, digite o valor da 3º prova:\n'))
media = (nota1+nota2+nota3)/3

if media >= 7:
    print(f"A média final é de {media:4.2f}, o aluno está de APROVADO!")
elif media > 4< 7:
    print(f"A média final é de {media:4.2f}, o aluno está de RECUPERAÇÃO!! ")
else:
    print(f"A média final é de {media:4.2f}, o aluno está REPROVADO!!")
