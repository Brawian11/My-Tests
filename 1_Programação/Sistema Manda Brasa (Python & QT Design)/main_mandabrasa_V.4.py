from PyQt5 import uic, QtWidgets #importar uic e QTWigets do pyqt5
import mysql.connector 

import ctypes
import sys

import datetime
global data
data = datetime.datetime.now()
data_formatada = data.strftime('%d/%m/%Y')

icon_path = '\Sistema Manda Brasa (Python & QT Design)\icone_hamburger.ico'
icon = ctypes.windll.shell32.LoadImage(0, icon_path, 1, 32, 32, 0x10)
hwnd = ctypes.windll.user32.GetConsoleWindow()
ctypes.windll.user32.SetWindowIcon(hwnd, icon)

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

def selecionar_produto():
    global numero_id
    
    linha = consultaProd.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM produto")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM produto WHERE codigo="+ str(valor_id))
    produto = cursor.fetchall()
    itemPedido.show()
    itemPedido.lineEdit_1.setText(str(produto[0][0]))
    consultaProd.hide()

    numero_id = valor_id

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

#---------------------------------------------------------
#BOTÃO VOLTAR!
def botao_voltar():
    consultaCliente.close()
    cadCliente.close()
    consultaFuncionario.close()
    cadFuncionario.close()
    consultaProd.close()
    cadprod.close()
    consultaPedido.close()
    cadPedido.close()
    itemPedido.close()
    consultaItemPedido.close()

#---------------------------------------------------------

def abrir_cadCliente():
    cadCliente.show()

def selecionar_cliente():
    global numero_id
    
    linha = consultaCliente.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM cliente")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM cliente WHERE codigo="+ str(valor_id))
    cliente = cursor.fetchall()
    cadPedido.show()
    cadPedido.lineEdit_codcli.setText(str(cliente[0][0]))
    cadPedido.lineEdit_cli.setText(str(cliente[0][1]))
    consultaCliente.hide()

    numero_id = valor_id

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

def selecionar_funcionario():
    global numero_id
    
    linha = consultaFuncionario.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM funcionario")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM funcionario WHERE codigo="+ str(valor_id))
    funcionario = cursor.fetchall()
    cadPedido.show()
    cadPedido.lineEdit_codfunc.setText(str(funcionario[0][0]))
    cadPedido.lineEdit_func.setText(str(funcionario[0][1]))
    consultaFuncionario.hide()

    numero_id = valor_id

def abrir_cadFuncionario():
    cadFuncionario.show()

#---------------------------------------------------------------------------------------------------------------------------------------

#definição das funcionalidades Cadastro de pedidos 

def abrir_cadPedido():
    cadPedido.show()
    cadPedido.lineEdit_4.setText(str(data_formatada))

def salvar_cadPedido():

    linha1 = cadPedido.lineEdit_codcli.text()
    print(f"Código Cliente: {linha1}")
    linha2 = cadPedido.lineEdit_cli.text()
    print(f"Cliente: {linha2}")
    linha3 = cadPedido.lineEdit_codfunc.text()
    print(f"Código Funcionario: {linha3}")
    linha4 = cadPedido.lineEdit_func.text()
    print(f"Funcionario: {linha4}")
    linha5 = cadPedido.comboBox_2.currentText()
    print (f'Entrega: {linha5}')
    linha6 = cadPedido.comboBox.currentText()
    print (f'Pagamento: {linha6}')
    linha7 = cadPedido.lineEdit_4.setText(str(data_formatada))
    print (f'Data: {linha7}')
    
    #configura a ação no BD
    cursor=banco.cursor()
    comando_SQL="INSERT INTO pedido (data, codigo_funcionario, codigo_cliente, codigo_entrega, forma_pagamento) VALUES (%s,%s,%s,%s,%s)"
    dados = (data_formatada,str(linha3),str(linha1),str(linha5),str(linha6))
    cursor.execute(comando_SQL,dados)
    banco.commit()
    cadPedido.lineEdit_cli.setText("") #limpar dados do campo
    cadPedido.lineEdit_func.setText("")
    itemPedido.show()
    # cadPedido.comboBox_2.setText("")
    # cadPedido.comboBox.setText("")


def abrir_consultaPedido():
    consultaPedido.show()
    cursor=banco.cursor()
    comando_SQL="SELECT*FROM pedido"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    print(dados_lidos)
    consultaPedido.tableWidget.setRowCount(len(dados_lidos))
    consultaPedido.tableWidget.setColumnCount(6)
    
    for i in range(0,len(dados_lidos)):
        for j in range(0,6):
            consultaPedido.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j])))

def excluir_pedido():
    linha = consultaPedido.tableWidget.currentRow()
    consultaPedido.tableWidget.removeRow(linha)    

    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM pedido")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM pedido WHERE codigo="+ str(valor_id))
    banco.commit()

def selecionar_pedido():
    global numero_id
    
    linha = consultaPedido.tableWidget.currentRow()    
    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM pedido")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("SELECT * FROM pedido WHERE codigo="+ str(valor_id))
    pedido = cursor.fetchall()
    itemPedido.show()
    itemPedido.lineEdit.setText(str(pedido[0][0]))
    consultaPedido.hide()

    numero_id = valor_id

#---------------------------------------------------------------------------------------------------------------------------------------

# Denifinição das funcionalidades do Item Pedido
def abrir_itemPedido():
    itemPedido.show()


def salvar_itemPedido():
    linha1 = itemPedido.lineEdit.text()
    print(f'Código Pedido: {linha1}')
    linha2 = itemPedido.lineEdit_1.text()
    print(f'Código Produto: {linha2}')
    linha3 = itemPedido.lineEdit_2.text()
    print(f'Qtde. Itens: {linha3}')
    linha4 = itemPedido.textEdit.toPlainText()
    print(f'Acompanhamento: {linha4}')
 
    #configura a ação no BD
    cursor=banco.cursor()
    comando_SQL="INSERT INTO item_pedido (acompanhamento, qtde, codigo_pedido, codigo_produto) VALUES (%s,%s,%s,%s)"
    dados = (str(linha4),str(linha3),str(linha1),str(linha2))
    cursor.execute(comando_SQL,dados)
    banco.commit()
    itemPedido.lineEdit.setText("") #limpar dados do campo
    itemPedido.lineEdit_1.setText("")
    itemPedido.lineEdit_2.setText("")
    itemPedido.textEdit.setText("")

def abrir_consultaItemPedido():
    consultaItemPedido.show()
    cursor=banco.cursor()
    comando_SQL="SELECT*FROM item_pedido"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    print(dados_lidos)
    consultaItemPedido.tableWidget.setRowCount(len(dados_lidos))
    consultaItemPedido.tableWidget.setColumnCount(5)
    

    for i in range(0,len(dados_lidos)):
        for j in range(0,5):
            consultaItemPedido.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j])))

def excluir_item():
    linha = consultaItemPedido.tableWidget.currentRow()
    consultaItemPedido.tableWidget.removeRow(linha)    

    cursor = banco.cursor()
    cursor.execute("SELECT codigo FROM item_pedido")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM item_pedido WHERE codigo="+ str(valor_id))
    banco.commit()

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
telainicial.botaoPedido.clicked.connect(abrir_cadPedido)
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
consultaProd.botaoSelecionar.clicked.connect(selecionar_produto)

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
consultaCliente.botaoSelecionar.clicked.connect(selecionar_cliente)

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
consultaFuncionario.botaoSelecionar.clicked.connect(selecionar_funcionario)

# Tela Editar Funcionario
editaFuncionario = uic.loadUi("editarFuncionario_V0.1.ui")
editaFuncionario.botaoSalvar.clicked.connect(salvar_edit_funcionario)

#-------------------------------------------------------------------------------------------------------------------

# Tela Cadastro Pedido
cadPedido = uic.loadUi("cadPedido_V0.2.ui")
cadPedido.botaoAdicionar.clicked.connect(salvar_cadPedido)
cadPedido.botaoConsultar.clicked.connect(abrir_consultaPedido)
cadPedido.botaoVoltar.clicked.connect(botao_voltar)
cadPedido.botaoBuscar_C.clicked.connect(abrir_consultaCliente)
cadPedido.botaoBuscar_F.clicked.connect(abrir_consultaFuncionario)

# Tela Consulta Pedido
consultaPedido = uic.loadUi('consultarPedido_V2.ui')
consultaPedido.botaoVoltar.clicked.connect(botao_voltar)
consultaPedido.botaoExcluir.clicked.connect(excluir_pedido)
consultaPedido.botaoSelecionar.clicked.connect(selecionar_pedido)

#-------------------------------------------------------------------------------------------------------------------

# Tela Item Pedido
itemPedido = uic.loadUi('itemPedido_V0.3.ui')
itemPedido.botaoBuscar_P.clicked.connect(abrir_consultaPedido)
itemPedido.botaoBuscar_Pro.clicked.connect(abrir_consultaProd)
itemPedido.botaoVoltar.clicked.connect(botao_voltar)
itemPedido.botaoCadastrar.clicked.connect(salvar_itemPedido)
itemPedido.botaoConsultar.clicked.connect(abrir_consultaItemPedido)

# Tela Consulta Item Pedido
consultaItemPedido = uic.loadUi('consultarItemPedido.ui')
consultaItemPedido.botaoVoltar.clicked.connect(botao_voltar)
consultaItemPedido.botaoExcluir.clicked.connect(excluir_item)


telainicial.show()
app.exec()