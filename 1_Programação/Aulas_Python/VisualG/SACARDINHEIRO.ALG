Algoritmo "SacarDinheiro"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/05/2024
Var
// Se��o de Declara��es das vari�veis 
SaldoDisponivel: real
ValorDoSaque: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
SaldoDisponivel <- 1000 //Asumimos que h� 1000 reais na conta disponivel[
escreval ("Indrome o valor do saque: ")
leia (ValorDoSaque)
se (ValorDoSaque) <= SaldoDisponivel entao
   SaldoDisponivel <- SaldoDisponivel - ValorDoSaque
   escreva ("Sacando R$", ValorDoSaque ,",")
senao
     escreval("O valor solicitato � maior que o valor disponivel para saque")
fimse
escreval("Valor disponivel: ", SaldoDisponivel)

Fimalgoritmo