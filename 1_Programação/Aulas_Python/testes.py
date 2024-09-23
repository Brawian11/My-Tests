# # valor_disponivel = 1450.35
# # nome_cliente = input("Digite o nome do cliente:")
# # banco = "Santander"

# # print(valor_disponivel, nome_cliente, banco )
# # print("O valor disponivel na conta do cliente",nome_cliente,"é R$",valor_disponivel,"e pertence ao banco:",banco)

# """
# você pode usar  jogo da velha(#) 6 aspas duplas, 3 em cima e 3 embaixo, para fazer comentáriosa
# """
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

