Algoritmo "NotaDoAluno"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/05/2024
Var
// Seção de Declarações das variáveis 
nota1: real
nota2: real
nota3: real
mediafinal: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("Digite a primeira nota do aluno: ")
leia(nota1)
escreval("Digite a segunda nota do aluno: ")
leia(nota2)
escreval("Digite a terceira nota do aluno: ")
leia(nota3)

mediafinal <- (nota1+nota2+nota3) /3

se mediafinal < 6 entao
   escreval("A média final do aluno foi de", mediafinal:5:2, "portanto ele esta REPROVADO!!")
   senao
        se(mediafinal >= 6) e (mediafinal < 7) entao
                      escreval("A média do aluno foi de",mediafinal:5:2," portanto ele esta de RECUPERAÇÃO!!")
        senao
             escreval("A média final do aluno foi de ",mediafinal:5:2, " portanto ele está APROVADO2!!")
   fimse
fimse



Fimalgoritmo