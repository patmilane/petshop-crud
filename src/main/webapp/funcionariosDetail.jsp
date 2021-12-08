<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="dao.*"%> <!<!-- importando o DAO employeeDAO -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style> 
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
        </style>
        
    </head>
    <body>
        <h1>Hello funcionario!</h1>
        
<jsp:useBean id="funcionarios" class="beans.Funcionarios" />

<jsp:setProperty property="*" name="funcionarios" />

 <%
  FuncionariosDAO funcDAO = new FuncionariosDAO();
  int status = funcDAO.registroFuncionarios(funcionarios);
  if (status > 0) {
   out.print("Func cadastrado com sucesso!");
  }else{
      out.print("Algo deu errado! Para saber mais escolha a opção OUTPUT no Netbeans e escolha o item GlashFish Server");
  }
 %>
 
 
         <a href="index.html"><button type="button" class="botao">Voltar </button></a>

 
    </body>
</html>
