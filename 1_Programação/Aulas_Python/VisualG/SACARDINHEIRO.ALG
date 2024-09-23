Algoritmo "SacarDinheiro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 02/05/2024
Var
// Seção de Declarações das variáveis 
SaldoDisponivel: real
ValorDoSaque: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
SaldoDisponivel <- 1000 //Asumimos que há 1000 reais na conta disponivel[
escreval ("Indrome o valor do saque: ")
leia (ValorDoSaque)
se (ValorDoSaque) <= SaldoDisponivel entao
   SaldoDisponivel <- SaldoDisponivel - ValorDoSaque
   escreva ("Sacando R$", ValorDoSaque ,",")
senao
     escreval("O valor solicitato é maior que o valor disponivel para saque")
fimse
escreval("Valor disponivel: ", SaldoDisponivel)

Fimalgoritmo