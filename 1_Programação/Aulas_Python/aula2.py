
nome1 = input("Nome da primeira pessoa:")
try:
    salario1 = float(input("Salário da primeira pessoa:"))
except:
    print("O valor digitado é inválido, você deve digitar um número.")
nome2 = input("Nome da segunda pessoa:")
try:
    salario2 = float(input("Salário da segunda pessoa:"))
except:
    print("O valor digitado é inválido, você deve digitar um número.")

idade = int(input("Digite uma idade:"))
sexo = input("Digite um sexo(F/M)")

print(f"Nome 1: {nome1}")
print(f"Salário 1: {salario1:.2f}")
print(f"Nome 2: {nome2}")
print(f"Salário 2: {salario2:.2f}")
print(f"Idade: {idade}")
print(F"Sexo: {sexo}")

produto1 = "Computador"
produto2 = "TV"
preco1 = 1500.5
preco2 = 1830.3
idade = 30
codigo = 5291
genero = "F"

print("Produtos\n ")
print(f"O produto {produto1} custa R$ {preco1:.2f}")
print(f"O produto {produto2} custa R$ {preco2:.2f}\n ")
print(f"Codigo = {codigo}\n ")
print(f"Dados da pessoa: Gênero {genero} e idade {idade}")

largura = float(input("Insira a largura do terreno:"))
comprimento = float(input("Insira o comprimento do terreno:"))
metro_quadrado = float(input("Insira o valor do metro quadrado (em Reais R$):"))

#largura é 10, comprimento 30 e metro quadrado 200

area = largura * comprimento
preco = area * metro_quadrado

print(f"Area do terreno = {area:.2f}")
print(f"Preço do terreno = {preco:.2f}")

nome = input("Digite seu nome: ")
idade = int(input("DIgite a sua idade: "))
endereco = input("Digite o seu endereço: " )
estado_civil = input("Digite o seu estado civil: ")
escolaridade = input("Digite a sua escolaridade: ")
salario1 = float(input("Qual o seu salário no primeiro mês? "))
salario2 = float(input("Qual o seu salário no segundo mês? "))
salario3 = float(input("Qual o seu salário no terceiro mês? "))

salario_medio = (salario1 + salario2 + salario3) / 3
dif_salario = salario1 - salario2

print("DADOS DIGITADOS")
print(f"Nome: {nome}")
print(f"Idade: {idade}")
print(f"Endereço: {endereco}")
print(f"Estado Civíl: {estado_civil}")
print(f"Escolarida: {escolaridade}")
print(f"Salário 1: {salario1:.2f}")
print(f"Salário 2: {salario2:.2f}")
print(f"Salário 3: {salario3:.2f}")
print(f"Média salarial: {salario_medio:.2f}")
print(f"Diferença de salário 1 e 2: {abs(dif_salario):.2f}")

preco = float(input("Preço unitário do produto: R$"))
qtdade = int(input("Quantidade de produtos: "))
valor = float(input("Valor recebido: R$ "))
troco = valor - preco * qtdade

print(f"O valor do troco é de: R$ {troco:.2f}")