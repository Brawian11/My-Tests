Algoritmo "NotaDoAluno"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/05/2024
Var
// Se��o de Declara��es das vari�veis 
nota1: real
nota2: real
nota3: real
mediafinal: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

escreval("Digite a primeira nota do aluno: ")
leia(nota1)
escreval("Digite a segunda nota do aluno: ")
leia(nota2)
escreval("Digite a terceira nota do aluno: ")
leia(nota3)

mediafinal <- (nota1+nota2+nota3) /3

se mediafinal < 6 entao
   escreval("A m�dia final do aluno foi de", mediafinal:5:2, "portanto ele esta REPROVADO!!")
   senao
        se(mediafinal >= 6) e (mediafinal < 7) entao
                      escreval("A m�dia do aluno foi de",mediafinal:5:2," portanto ele esta de RECUPERA��O!!")
        senao
             escreval("A m�dia final do aluno foi de ",mediafinal:5:2, " portanto ele est� APROVADO2!!")
   fimse
fimse



Fimalgoritmo