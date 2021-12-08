<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar func</title>
        
        <link href="img/icone.png">
                
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Irish+Grover&family=Titillium+Web:wght@200&display=swap');
            /*importada de https://fonts.google.com , usada no h1*/
            
            
        body{
                background-color: #F0F8FF;
        }
        
        form{
            width: 300px;
            margin-left: 100px;
            margin-bottom: 100px;
        }

        .botao{
            border-radius: 5px;
            border-style: none;
            transition: background-color 1s;
            background-color: rgb(120, 197, 197);
            margin-left: 30px;
            margin-right: 5px;
            padding: 15px 40px 15px 8px;
        }
        
        .botao:hover{ /*passar mouse e mudar cor*/
            background-color: lightcyan;
            color:black;
        }
        
        a{
            margin: -15px;
            margin-left: 0px;
            padding: 15px;
            position: absolute;
        }

         h1{
            font-family: 'Titillium Web', sans-serif;    
            font-size: 30pt;
            color:rgb(54, 145, 175);
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
            align-items: center;
            padding: 20px;
            margin-bottom: 20px;
            margin-left: 150px;
            font-weight: 50px;
         }

         img#icone {
            position: absolute;
            left: 450px;
            top: 80px;
          }
        </style>

        <script>

          function limpar(){

            document.getElementById("nomef").value = "";
            document.getElementById("telefone").value = "";
            document.getElementById("endereco").value = "";
          }

        </script>
      
    </head>
    
    
    <body>        
        <h1>CADASTRAR FUNCIONARIO</h1>
        
        <img src="img/icone.png" id="icone"  alt="alt" width="350"/>
 
        <form action="funcionariosDetail.jsp" method="POST">
    <div class="form-group">
      <label for="nomep">Nome:</label>
      <input type="text" class="form-control" name="nomef" id="nomef" required><BR>
    </div>
    <div class="form-group">
      <label for="marca">Telefone:</label>
      <input type="text" class="form-control" name="telefone" id="telefone" placeholder="(00)00000-0000" required><BR>
    </div>

    <div class="form-group">
      <label for="valor">Endereco:</label>
      <input type="text" class="form-control" name="endereco" id="endereco"  placeholder="Rua x, nº x, CEP: 00000-000" required> <br><BR>
    </div> <br><br>
    

    <button type="submit" value="submit" class="botao">Cadastrar</button> 
    <button type="button" class="botao" onclick="limpar()" >Novo </button>
    <a href="index.html"><button type="button" class="botao">Voltar </button></a>

  </form>

        
    </body>
</html>

