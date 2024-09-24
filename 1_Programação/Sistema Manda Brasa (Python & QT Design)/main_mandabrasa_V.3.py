from PyQt5 import uic, QtWidgets #importar uic e QTWigets do pyqt5
import mysql.connector 
from reportlab.pdfgen import canvas

#configuração do BD
banco = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="bd_mandabrasa"
)
#definição das funcionalidades do Produto
def salvar_produto():
    linha1= cadprod.lineEdit_2.text()
    print(f'Cadastro: {linha1}')
    linha2= cadprod.textEdit.toPlainText()
    print(f'Descrição: {linha2}')
    linha3= cadprod.lineEdit_3.text()
    print(f'Preço: {linha3}')
 

    #configura a ação no BD
    cursor=banco.cursor()
    comando_SQL="INSERT INTO produto (nome, descricao, preco) VALUES (%s,%s,%s)"
    dados = (str(linha1),str(linha2),str(linha3))
    cursor.execute(comando_SQL,dados)
    banco.commit()
    cadprod.lineEdit_2.setText("") #limpar dados do campo
    cadprod.textEdit.setText("")
    cadprod.lineEdit_3.setText("")

def abrir_consultaProd():
    consultaProd.show()
    cursor=banco.cursor()
    comando_SQL="SELECT*FROM produto"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    print(dados_lidos)
    consultaProd.tableWidget.setRowCount(len(dados_lidos))
    consultaProd.tableWidget.setColumnCount(4)
    

    for i in range(0,len(dados_lidos)):
        for j in range(0,4):
            consultaProd.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j])))


def excluir_prod():
    linha=consultaProd.tableWidget.currentRow()
    consultaProd.tableWidget.removeRow(linha)    

    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM produto")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM produto WHERE codigo="+ str(valor_id))
    banco.commit()

def botao_voltar():
    consultaProd.close()
    cadprod.close()

def editar_prod():
    global numero_id
    
    linha = consultaProd.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM produto")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM produto WHERE codigo="+ str(valor_id))
    produto = cursor.fetchall()
    editaProd.show()
    editaProd.lineEdit.setText(str(produto[0][0]))
    editaProd.lineEdit_2.setText(str(produto[0][1]))
    editaProd.lineEdit_3.setText(str(produto[0][2]))
    editaProd.lineEdit_4.setText(str(produto[0][3]))
    numero_id = valor_id

def salvar_edit_prod():
     global numero_id
     # ler dados do lineEdit
     codigo = editaProd.lineEdit.text()
     nome = editaProd.lineEdit_2.text()
     descricao = editaProd.lineEdit_3.text()
     preco = editaProd.lineEdit_4.text()
    
     # atualizar os dados no banco
     cursor = banco.cursor()
     cursor.execute("UPDATE produto SET codigo = '{}', nome = '{}',descricao = '{}', preco ='{}' WHERE codigo = {}".format(codigo,nome,descricao,preco,numero_id))
     banco.commit()
     #atualizar as janelas
     editaProd.close()
     consultaProd.close()
     abrir_consultaProd()

def abrir_cadprod():
    cadprod.show()

#---------------------------------------------------------------------------------------------------------------------------------------

#denifinição das funcionalidades do Cliente
def salvar_cliente():
    linha1= cadCliente.lineEdit_2.text()
    print(f'Nome: {linha1}')
    linha2= cadCliente.lineEdit_3.text()
    print(f'CPF: {linha2}')
    linha3= cadCliente.lineEdit_4.text()
    print(f'Endereço: {linha3}')
    linha4= cadCliente.lineEdit_5.text()
    print(f'Telefone: {linha4}')

    #configura a ação no BD
    cursor=banco.cursor()
    comando_SQL="INSERT INTO cliente (nome, cpf, endereco, telefone) VALUES (%s,%s,%s,%s)"
    dados = (str(linha1),str(linha2),str(linha3),str(linha4))
    cursor.execute(comando_SQL,dados)
    banco.commit()
    cadCliente.lineEdit_2.setText("") #limpar dados do campo
    cadCliente.lineEdit_3.setText("")
    cadCliente.lineEdit_4.setText("")
    cadCliente.lineEdit_5.setText("")

def abrir_consultaCliente():
    consultaCliente.show()
    cursor=banco.cursor()
    comando_SQL="SELECT*FROM cliente"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    print(dados_lidos)
    consultaCliente.tableWidget.setRowCount(len(dados_lidos))
    consultaCliente.tableWidget.setColumnCount(5)
    

    for i in range(0,len(dados_lidos)):
        for j in range(0,5):
            consultaCliente.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j])))

def excluir_cliente():
    linha=consultaCliente.tableWidget.currentRow()
    consultaCliente.tableWidget.removeRow(linha)    

    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM cliente")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM cliente WHERE codigo="+ str(valor_id))
    banco.commit()

def editar_cliente():
    global numero_id
    
    linha = consultaCliente.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM cliente")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM cliente WHERE codigo="+ str(valor_id))
    cliente = cursor.fetchall()
    editaCliente.show()
    editaCliente.lineEdit_2.setText(str(cliente[0][0]))
    editaCliente.lineEdit_3.setText(str(cliente[0][1]))
    editaCliente.lineEdit_4.setText(str(cliente[0][2]))
    editaCliente.lineEdit_5.setText(str(cliente[0][3]))
    editaCliente.lineEdit_6.setText(str(cliente[0][4]))

    numero_id = valor_id

def salvar_edit_cliente():
     global numero_id
     # ler dados do lineEdit
     codigo = editaCliente.lineEdit_2.text()
     nome = editaCliente.lineEdit_3.text()
     cpf = editaCliente.lineEdit_4.text()
     endereco = editaCliente.lineEdit_5.text()
     telefone = editaCliente.lineEdit_6.text()

     # atualizar os dados no banco
     cursor = banco.cursor()
     cursor.execute("UPDATE cliente SET codigo = '{}', nome = '{}', cpf = '{}', endereco ='{}', telefone = '{}'  WHERE codigo = {}".format(codigo, nome, cpf, endereco, telefone, numero_id))
     banco.commit()
     #atualizar as janelas
     editaCliente.close()
     consultaCliente.close()
     abrir_consultaCliente()

def botao_voltar():
    consultaCliente.close()
    cadCliente.close()


def abrir_cadCliente():
    cadCliente.show()

#---------------------------------------------------------------------------------------------------------------------------------------

#denifinição das funcionalidades do Funcionario
def salvar_funcionario():
    linha1= cadFuncionario.lineEdit_2.text()
    print(f'Nome: {linha1}')
    linha2= cadFuncionario.lineEdit_3.text()
    print(f'CPF: {linha2}')
    linha3= cadFuncionario.lineEdit_4.text()
    print(f'Função: {linha3}')
    linha4= cadFuncionario.lineEdit_5.text()
    print(f'Telefone: {linha4}')

    #configura a ação no BD
    cursor=banco.cursor()
    comando_SQL="INSERT INTO funcionario (nome, cpf, funcao, telefone) VALUES (%s,%s,%s,%s)"
    dados = (str(linha1),str(linha2),str(linha3),str(linha4))
    cursor.execute(comando_SQL,dados)
    banco.commit()
    cadFuncionario.lineEdit_2.setText("") #limpar dados do campo
    cadFuncionario.lineEdit_3.setText("")
    cadFuncionario.lineEdit_4.setText("")
    cadFuncionario.lineEdit_5.setText("")

def abrir_consultaFuncionario():
    consultaFuncionario.show()
    cursor=banco.cursor()
    comando_SQL="SELECT*FROM funcionario"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    print(dados_lidos)
    consultaFuncionario.tableWidget.setRowCount(len(dados_lidos))
    consultaFuncionario.tableWidget.setColumnCount(5)
    

    for i in range(0,len(dados_lidos)):
        for j in range(0,5):
            consultaFuncionario.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j])))

def excluir_funcionario():
    linha = consultaFuncionario.tableWidget.currentRow()
    consultaFuncionario.tableWidget.removeRow(linha)    

    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM funcionario")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM funcionario WHERE codigo="+ str(valor_id))
    banco.commit()

def editar_funcionario():
    global numero_id
    
    linha = consultaFuncionario.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM funcionario")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM funcionario WHERE codigo="+ str(valor_id))
    funcionario = cursor.fetchall()
    editaFuncionario.show()
    editaFuncionario.lineEdit_2.setText(str(funcionario[0][0]))
    editaFuncionario.lineEdit_3.setText(str(funcionario[0][1]))
    editaFuncionario.lineEdit_4.setText(str(funcionario[0][2]))
    editaFuncionario.lineEdit_5.setText(str(funcionario[0][3]))
    editaFuncionario.lineEdit_6.setText(str(funcionario[0][4]))

    numero_id = valor_id

def salvar_edit_funcionario():
     global numero_id
     # ler dados do lineEdit
     codigo = editaFuncionario.lineEdit_2.text()
     nome = editaFuncionario.lineEdit_3.text()
     cpf = editaFuncionario.lineEdit_4.text()
     funcao = editaFuncionario.lineEdit_5.text()
     telefone = editaFuncionario.lineEdit_6.text()

     # atualizar os dados no banco
     cursor = banco.cursor()
     cursor.execute("UPDATE funcionario SET codigo = '{}', nome = '{}', cpf = '{}', funcao = '{}', telefone = '{}'  WHERE codigo = {}".format(codigo, nome, cpf, funcao, telefone, numero_id))
     banco.commit()
     #atualizar as janelas
     editaFuncionario.close()
     consultaFuncionario.close()
     abrir_consultaFuncionario()


def botao_voltar():
    consultaFuncionario.close()
    cadFuncionario.close()


def abrir_cadFuncionario():
    cadFuncionario.show()

#---------------------------------------------------------------------------------------------------------------------------------------



def fechar_prog():
    telainicial.close()


#cria a aplicação
app=QtWidgets.QApplication([])

# Tela Inicial:
telainicial = uic.loadUi('telaInicial_V0.1.ui')
telainicial.botaoProdutos.clicked.connect(abrir_cadprod)
telainicial.botaoSair.clicked.connect(fechar_prog)
telainicial.botaoClientes.clicked.connect(abrir_cadCliente)
telainicial.botaoFuncionario.clicked.connect(abrir_cadFuncionario)

#-------------------------------------------------------------------------------------------------------------------

# Tela Cadastro de produtos:
cadprod=uic.loadUi('cadProdutos_V0.3.ui')
cadprod.botaoCadastrar.clicked.connect(salvar_produto)
cadprod.botaoConsultar.clicked.connect(abrir_consultaProd)
cadprod.botaoVoltar.clicked.connect(botao_voltar)

# Tela Consulta de produtos:
consultaProd=uic.loadUi('consultarProdutos_V0.3.ui')
consultaProd.botaoExcluir.clicked.connect(excluir_prod)
consultaProd.botaoVoltar.clicked.connect(botao_voltar)
consultaProd.botaoEditar.clicked.connect(editar_prod)

# Tela Editar produtos:
editaProd=uic.loadUi("editarProdutos_V0.3.ui")
editaProd.botaoSalvar.clicked.connect(salvar_edit_prod)


#-------------------------------------------------------------------------------------------------------------------

#Tela cadastro Cliente
cadCliente = uic.loadUi('cadClientes_V0.2.ui')
cadCliente.botaoCadastrar.clicked.connect(salvar_cliente)
cadCliente.botaoConsultar.clicked.connect(abrir_consultaCliente)
cadCliente.botaoVoltar.clicked.connect(botao_voltar)

# Tela Consulta de Cliente
consultaCliente = uic.loadUi('consultarClientes_V0.2.ui')
consultaCliente.botaoExcluir.clicked.connect(excluir_cliente)
consultaCliente.botaoVoltar.clicked.connect(botao_voltar)
consultaCliente.botaoEditar.clicked.connect(editar_cliente)

# Tela Editar Cliente:
editaCliente = uic.loadUi("editarClientes_V0.2.ui")
editaCliente.botaoSalvar.clicked.connect(salvar_edit_cliente)


#-------------------------------------------------------------------------------------------------------------------

#Tela cadastro Funcionario
cadFuncionario = uic.loadUi('cadFuncionario_V0.2.ui')
cadFuncionario.botaoCadastrar.clicked.connect(salvar_funcionario)
cadFuncionario.botaoConsultar.clicked.connect(abrir_consultaFuncionario)
cadFuncionario.botaoVoltar.clicked.connect(botao_voltar)

# Tela Consulta de Funcionario
consultaFuncionario = uic.loadUi('consultarFuncionario_V0.1.ui')
consultaFuncionario.botaoExcluir.clicked.connect(excluir_funcionario)
consultaFuncionario.botaoVoltar.clicked.connect(botao_voltar)
consultaFuncionario.botaoEditar.clicked.connect(editar_funcionario)

# Tela Editar Funcionario
editaFuncionario = uic.loadUi("editarFuncionario_V0.1.ui")
editaFuncionario.botaoSalvar.clicked.connect(salvar_edit_funcionario)



telainicial.show()
app.exec()