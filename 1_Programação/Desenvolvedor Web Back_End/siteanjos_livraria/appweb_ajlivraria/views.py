from django.shortcuts import render
from django.contrib import messages
import mysql.connector as sql

# Create your views here.
def pginicio(request):
    global loguser,pswd
    if request.method == "POST":
          bd = sql.connect (host = "localhost",user = "root",password ="",database = "db_boaleitura_equipe_5")
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
            bd=sql.connect(host="localhost", user="root", passwd="", database="db_boaleitura_equipe_5")
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
                return render(request,'usuarios/cadastro_func.html') 

     return render(request, 'usuarios/cadastro_func.html')

def cad_editora(request):
     global nome_editora
     if request.method == "POST":
            bd=sql.connect(host="localhost", user="root", passwd="", database="db_boaleitura_equipe_5")
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
               return render(request, 'clientes/cadastro_editora.html')
     return render(request, 'clientes/cadastro_editora.html')

def cad_cliente(request):
     return render(request, 'clientes/cadastro_cliente.html')

def cad_autor(request):
     return render(request, 'usuarios/cadastro_autor.html')

def cad_livro(request):
     return render(request, 'usuarios/cadastro_livro.html')

def cad_pedido(request):
     return render(request,'usuarios/cadastro_pedido.html')
