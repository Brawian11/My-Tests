# for c in range(1,10):
#     print(f'c = {c}')
#     print('Estude Python')
# print('Repetiu qunatas vezes?') #repetiu 9 vezes

# for c in range(10,-1,-1):
#     print(c)

# n = int(input('Digite um número: '))
# for c in range(0, n+1):
#     print(c)

inicio = int(input('Início: '))
fim = int(input('Fim: '))
passo = int(input('Passo: ')) 
for c in range(inicio, fim+1, passo):
    print(c)