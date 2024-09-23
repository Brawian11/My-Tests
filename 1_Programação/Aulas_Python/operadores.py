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