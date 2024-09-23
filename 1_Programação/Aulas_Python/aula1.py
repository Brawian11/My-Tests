# operação de atribuição
nome = 'Ricardo Soeiro'
idade = 23
salario = 45000.00
# a linguagem python ja identifica automaticamente o tipo de variável, se fazendo desnecessário a definição das mesmas.

# Mostrar na tela (console)
print(nome)
print(idade)
print(salario)

# usar (type) para mostrar o tipo da variavel
print(type(nome))
print(type(idade))
print(type(salario))

# maneiras de fazer com que uma ou mais variaves apareçam na tela
print(nome,'tem a idade de',idade,'anos e recebe o salário de R$',salario,'reais por mês')
print('{} tem {} e recebe {} por mês.'.format(nome,idade,salario))
print(f'{nome} tem {idade} e recebe {salario} por mês.')

# usar o (input) para entrada/digitar dados
nome2 = input('informe o nome do cliente:')
print(f'o nome do cliente digitado foi :{nome2}')

# usar (\n) para quebar a linha, fazendo com que tudo que estiver depois de (\n) passe para proxima linha
print('O nome da pessoa digitada foi fulano de tal \ne ele tem x anos.')

# usar (,end=''ou "") para juntar duas frases de linhas diferentes para uma linha só
print("Meu nome é Andrey.",end=" ")
print("Vamos aprender a programar")

# usar (sep = "-") separa ou uni as palavras (ou termos) com de acordo com os simbolos dentro das aspas. Ex (,sep = "==" ou ,sep = "§§")
print('Vamos','codificar','em','Phyton',sep=' ºººº ')
print('Olá','bom','dia','galera','do','youtube', sep="§§§")

# usar (/') ou simplesmente alternar entre ('' e "") para que a aspas se destaque dentro da string
print('I\' Monty Python')
print('A palavra "palavra" significa...')
print("Por 'exemplo'")
print('"""Andrey"""')

# operadores basicos
num1 = int(input("Digite o 1º número:"))
num2 = int(input("Digite o 2º número:"))
print(f"soma = {num1 + num2}")
print(f"Subtração = {num1 - num2}")
print(f"Divisão = {num1 / num2}")
print(f"Resto da divisão = {num1 % num2}")
print(f"Exponênciação {num1 ** num2}")
print(f"Divisão inteira = {num1 // num2}")

# usar o comando (round), para aredondar(ou formatar) o valor/resultado, para a quantidade de casas decimais desejadas.
divisao = 4/3
print(round(divisao,2))
print(f'{divisao:.2f}')
 
 # ao usar o comando (input) para inserir um número inteiro (ou real/float) devemos especificar o tipo de variavel a ser inserida,
 # pois o comando input automaticamente identifica a variavel inserida como string EX:
idade_cliente = int(input("Digite a idade do cliente:"))
print("Sua idade é:",idade_cliente)

# (if = se) (else = senao) (elif = senao se)
hora = int(input("digite uma hora do dia: "))
if hora < 12:
    print("Bom dia!")
elif hora <18:
    print("Boa tarde!")
else:
    print("Boa noite!")

########################################################################################################

    distancia = int(input("Insira a distância aproximada da viagem em KM: "))
if distancia <= 200:
    valor = distancia * 0.50
    print(f"A viagem sairá pelo valor de R${valor} reais")
else:
    valor = distancia * 0.45
    print(f"A viagem sairá pelo valor de R${valor}")