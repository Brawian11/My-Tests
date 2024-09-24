from django.shortcuts import render
from django.contrib import messages
import mysql.connector as sql

# Create your views here.
def pginicio(request):
    global loguser,pswd
    if request.method == "POST":
          bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
          cursor = bd.cursor()
          dados = request.POST

          for key,value in dados.items():
               if key == "login":
                    loguser = value
               if key == "senha":
                    pswd = value
          c = "select * from funcionario where login = '{}' and senha = '{}' ".format(loguser,pswd)
          cursor.execute(c)
          t=tuple(cursor.fetchall())
          if t==():
               messages.error(request, 'Usuário não autorizado')
               return render(request,'usuarios/home.html')
          else:
               return render(request,'usuarios/sistema_cadastro.html')
      
    
    return render(request, 'usuarios/home.html')

def cad_sistem(request):
     return render(request,'usuarios/sistema_cadastro.html')

def cad_func(request):
     global nomeuser, email, fone, cpfuser, loguser, pswd, pswdconfirm, datanasc
     if request.method == "POST":
            bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
            cursor=bd.cursor()
            dados=request.POST
        
            for key, value in dados.items():
                
                if key=="nome":
                    nomeuser=value
                if key=="email":
                    email=value
                if key=="telefone":
                    fone=value
                if key=="cpf":
                    cpfuser=value
                if key=="login":
                    loguser=value
                if key=="senha":
                     pswd=value
                if key=="confirma_senha":
                    pswdconfirm=value
                if key=="data_nascimento":
                    datanasc=value
            
            cad="insert into funcionario (nome, email, telefone, cpf, login, senha, confirma_senha, data_nascimento) Values ('{}','{}','{}','{}','{}','{}','{}','{}')".format(nomeuser,email,fone,cpfuser,loguser,pswd,pswdconfirm,datanasc)
            cursor.execute(cad)
            bd.commit()
            if bd == ():
                return render (request, 'usuarios/cadastro_func.html')
            else:
                return render(request,'usuarios/sistema_cadastro.html') 

     return render(request, 'usuarios/cadastro_func.html')

def cad_editora(request):
     global nome_editora
     if request.method == "POST":
            bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
            cursor=bd.cursor()
            dados=request.POST
            for key, value in dados.items():
               if key == "nome":
                    nome_editora = value
            cad = "insert into editora (nome) value ('{}')".format(nome_editora)
            cursor.execute(cad)
            bd.commit()
            if bd == ():
               return render(request, 'usuarios/sistema_cadastro.html')
            else:
               return render(request,'usuarios/sistema_cadastro.html')
     return render(request, 'clientes/cadastro_editora.html')

def cad_cliente(request):
     global nomeuser, email, loguser, pswd, pswdconfirm, leiturapref, datanasc
     if request.method == "POST":
            bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
            cursor=bd.cursor()
            dados=request.POST
        
            for key, value in dados.items():
                
                if key=="nome":
                    nomeuser=value
                if key=="email":
                    email=value
                if key=="login":
                    loguser=value
                if key=="senha":
                     pswd=value
                if key=="confirma_senha":
                    pswdconfirm=value
                if key=="preferencia_leitura":
                    leiturapref=value
                if key=="data_nascimento":
                    datanasc=value
            
            cad="insert into cliente (nome, email, login, senha, confirma_senha, preferencia_leitura, data_nascimento) Values ('{}','{}','{}','{}','{}','{}','{}')".format(nomeuser,email,loguser,pswd,pswdconfirm,leiturapref,datanasc)
            cursor.execute(cad)
            bd.commit()
            if bd == ():
                return render (request, 'clientes/cadastro_cliente.html')
            else:
                return render(request,'usuarios/sistema_cadastro.html') 

     return render(request, 'clientes/cadastro_cliente.html')
     
def cad_autor(request):
     global nomeuser, nascio , datanasc, editora_id
     if request.method == "POST":
            bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
            cursor=bd.cursor()
            dados=request.POST
        
            for key, value in dados.items():
                
                if key=="nome":
                    nomeuser=value
                if key=="nacionalidade":
                    nascio=value
                if key=="anonascimento":
                    datanasc=value
                if key=='codeditora':
                    editora_id=value
                
            
            cad="insert into autor (nome, nacionalidade, data_nascimento, editora_id_editora) Values ('{}','{}','{}','{}')".format(nomeuser, nascio, datanasc, editora_id)
            cursor.execute(cad)
            bd.commit()
            if bd == ():
                return render (request, 'usuarios/cadastro_autor.html')
            else:
                return render(request,'usuarios/sistema_cadastro.html')
     return render(request, 'usuarios/cadastro_autor.html')

def cad_livro(request):
    global nome, num_pagina, quantidade, ano, categ, idioma, capa
    if request.method == "POST":
            bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
            cursor=bd.cursor()
            dados=request.POST
        
            for key, value in dados.items():
                
                if key=="nome":
                    nome=value
                if key=="num_pagina":
                    num_pagina=value
                if key=="quantidade":
                    quantidade=value
                if key=="ano":
                     ano=value
                if key=="categ":
                    categ=value
                if key=="idioma":
                    idioma=value
                if key=="capa":
                    capa=value
            
            cad="insert into livro (nome, num_pagina, quantidade, ano, categoria, idioma, tipo_capa) Values ('{}','{}','{}','{}','{}','{}','{}')".format(nome,num_pagina,quantidade,ano,categ,idioma,capa)
            cursor.execute(cad)
            bd.commit()
            if bd == ():
                return render (request, 'usuários/cadastro_livro.html')
            else:
                return render(request,'usuarios/sistema_cadastro.html')
    return render(request, 'usuarios/cadastro_livro.html')

def cad_pedido(request):
    global data, quantidade, cliente_id, funcionario_id
    if request.method == "POST":
            bd = sql.connect (host = "192.168.61.166",user = "Equipe_5",password ="123456",database = "db_boaleitura_equipe_5")
            cursor=bd.cursor()
            dados=request.POST
        
            for key, value in dados.items():
                
                if key=="datapedido":
                    data=value
                if key=="qtd_itens":
                    quantidade=value
                if key=="cli_id":
                    cliente_id=value
                if key=="func_id":
                    funcionario_id=value

            cad="insert into pedido (data, quantidade, cliente_id, funcionario_id) Values ('{}','{}','{}','{}')".format(data,quantidade,cliente_id,funcionario_id)
            cursor.execute(cad)
            bd.commit()
            if bd == ():
                return render (request, 'usuários/cadastro_livro.html')
            else:
                return render(request,'usuarios/sistema_cadastro.html')
    return render(request,'usuarios/cadastro_pedido.html')
