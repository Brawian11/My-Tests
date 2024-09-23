# programa para calcular média das notas do aluno

# nota1 = float(input("Digite a 1ª nota: "))
# nota2 = float(input("Digite a 2ª nota: "))
# nota3 = float(input("Digite a 3ª nota: "))

# media = (nota1+nota2+nota3) /3
# print(f"Sua média é = {media:.2}")

# if media <6:
#     print("Você foi reprovado(a)!!")
# elif media <7:
#     print("Você ficou de recuperação!")
# else:
#     print("PARABÉNS! Você foi aprovado!")

#################################### atividade para identificar o menor número #####################################

# num1 = int(input("Digite o 1ª número: "))
# num2 = int(input("Digite o 2ª número: "))
# num3 = int(input("Digite o 3ª número: "))
# if num1 == num2 > num3:
#     print(f"O 1ª e o 2ª número são iguas e o menor número é: {num3}")
# elif num1 == num3 > num2:
#     print(f"O 1ª e o 3ª número são iguais e o menor número é: {num2}")
# elif num2 == num3 > num1:
#     print(f"O 2ª e o 3ª número são iguas e o menor número é: {num1}")
# elif num1 == num2 < num3:
#     print("O 1ª e o 2ª número são menores iguais!")
# elif num1 == num3 < num2:
#     print(f"O 1ª e o 3ª número são menores iguais!")
# elif num2 == num3 < num1:
#     print(f"O 2ª e o 3ª número são menores iguais!")
# elif num1 < num2 and num1 < num3:
#     print(f"O menor número é: {num1}")
# elif num2 < num3:
#     print(f"O menor número é: {num2}")
# else:
#     print(f"O menor número é: {num3}")

####################################################### DESAFIO ########################################################

from random import randint #biblioteca (random) e sua função (randint)
from time import sleep #biblioteca (time) e sua função (sleep)
# sleep seguido de um numero dar uma pausa no tempo de execução do codigo de acordo com o numero em segundos.  

cpu = randint(0,5)
user = int(input("Digite um número entre 0 e 5: "))

print("Analizando resultado...")
sleep(10) # sleep demora 3 segundos para dar continuidade com o codigo de acordo com os argumentos

if cpu == user:
    print(f"Resposta: {cpu}\nParabéns, acertô mizeravi!")
else:
    print(f"Resposta: {cpu}\nQue pena, você errou. Tente novamente")

####################################################### DESAFIO ########################################################

velocidade = float(input("Qual a velocidade do veiculo: "))
if velocidade > 80:
    multa = (velocidade - 80)*7
    print(f"Velocidade acima do limite permitido! Multa de R$ {multa}")
else:
    print("Velocidade dentro do limite permitido.")

####################################################### DESAFIO ########################################################

distancia = int(input("Insira a distância aproximada da viagem em KM: "))
if distancia <= 200:
    valor = distancia * 0.50
    print(f"A viagem sairá pelo valor de R${valor} reais")
else:
    valor = distancia * 0.45
    print(f"A viagem sairá pelo valor de R${valor}")

####################################################### DESAFIO ########################################################
