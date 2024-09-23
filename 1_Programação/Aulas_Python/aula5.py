# number1 = int(input("Digite o primeiro número: "))
# number2 = int(input("Digite o segundo número: "))
# number3 = int(input("Digite o terceiro número: "))

# # largest_number = max(number1, number2, number3)

# # print("O maior número é:", largest_number)
# frase = str(input("Insira sua frase aqui: "))
# if  frase == ("Spathiphyllum"):
#     print("Sim - Spathiphyllum é a melhor fábrica de todos os tempos!")
# elif frase == ("spathiphyllum"):
#     print("Não, eu quero um grande Spathiphyllum!")
# else:
#     print("Spathiphyllum! Não",frase,"!")

######################################################## DESAFIO ########################################################

from datetime import date
anoNasc = int(input("Informe o ano do seu nascimento: "))
anoAtual = date.today().year
idade = anoAtual - anoNasc
if idade == 18:
    print("Você ja tem 18 anos! Aliste-se imediatamente!")
elif idade < 18:
    prazo = 18 - idade
    print("Ainda faltam" ,prazo,"anos pra você se alistar")
else:
    prazo2 = idade - 18
    data = anoAtual - prazo2
    print(f"O prazo de alistamento ja expirou. Você deveria ter se alistado em {data}.")

######################################################## DESAFIO ########################################################

from datetime import date
anoNasc = int(input("Informe o ano do seu nascimento: "))
anoAtual = date.today().year
idade = anoAtual - anoNasc
if idade <= 9:
    print("Você será um(a) atleta na categoria MIRIM!")
elif idade <= 14:
    print("Você será um(a) atleta na categoria INFANTIL!")
elif idade <= 19:
    print("Você será um(a) atleta na categora JÚNIOR!")
elif idade <= 25:
    print("Você será um(a) atleta na categoria SÊNIOR!")
else:
    print("Parabéns! Você é um(a) atleta na categoria MASTER!")