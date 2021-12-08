<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="dao.*"%> <!<!-- importando o DAO employeeDAO -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style> 
            
            @import url('https://fonts.googleapis.com/css2?family=Irish+Grover&family=Titillium+Web:wght@200&display=swap');
            /*importada de https://fonts.google.com , usada no h1*/
            
            h1{
            font-family: 'Titillium Web', sans-serif;    
            font-size: 30pt;
            color:rgb(54, 145, 175);
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
            margin-bottom: 18px;
            font-weight: 50px;
            }
            
            .botao{
            border-radius: 5px;
            border-style: none;
            transition: background-color 1s;
            background-color: rgb(120, 197, 197);
            margin-left: 50px;
            margin-right: 5px;
            padding: 20px 25px 20px 25px;
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
        </style>
        
        
        
    </head>
    <body>
        <h1>Status de cadastro</h1>
        
<jsp:useBean id="produtos" class="beans.Produtos" />

<jsp:setProperty property="*" name="produtos" />

 <%
  ProdutosDAO prodDAO = new ProdutosDAO();
  int status = prodDAO.registerProdutos(produtos);
  if (status > 0) {
   out.print("  Produto cadastrado com sucesso!");
  }else{
      out.print("Algo deu errado! Para saber mais escolha a opção OUTPUT no Netbeans e escolha o item GlashFish Server");
  }
 %>
 
 
 <br><br><br><!-- comment -->
 <a href="index.html"><button type="button" class="botao">Voltar </button></a>

 
    </body>
</html>
