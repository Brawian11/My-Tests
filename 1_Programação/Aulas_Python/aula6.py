######################## exemplo de loop 1 ##############################

# numero = int(input("Digite um número ou 0 (zero) para encerrar: "))
# while numero != 0:
#     numero = int(input("Digite um número ou 0 (zero) para encerrar: "))

######################## exemplo de loop 2 ##############################

# resposta = 'S'
# while resposta == "S":
#     n = int(input('Digite um número: '))
#     resposta = input('Deseja continuar? (S/N)').upper().strip()[0]
# - upper= retona a letra maiuscula, mesmo que o usuario foneca uma resposta em minuscolo
# - strip= ignora o espaço em branco na resposta do usuário
# print('Fim.')

######################## exemplo de loop 3 ##############################

# while True:
#     valor = int(input('Digite um valor ou 999 para parar: '))
#     if valor == 999:
#         break

######################## exemplo de loop 4 ##############################

# soma = 0
# x = int(input('Digite um número: '))
# while x != 0:
#     soma+=x
#     x = int(input('Digite outro número: '))
# print(f'Soma = {soma}')

######################## exemplo de loop 4 ##############################

#pares e impares
n = 1
par = impar = somap =somai = 0
while n != 0:
    n = int(input('Digite um valor: '))
    if n != 0:
        if n % 2 == 0:
            par +=1
            somap +=n
        else:
            impar += 1
            somai +=n
print(f'Você digitou {par} números pares e {impar} números impares.')
print(f'Soma dos pares = {somap}')
print(f'Soma dos ímpares = {somai}')
