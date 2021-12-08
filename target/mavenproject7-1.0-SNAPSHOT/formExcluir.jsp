<%-- 
    Document   : formExcluir
    Created on : 25/11/2021, 23:26:17
    Author     : patri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
           @import url('https://fonts.googleapis.com/css2?family=Irish+Grover&family=Titillium+Web:wght@200&display=swap');
            
        body{
            background-color: #F0F8FF;
        }
        
        form{
            width: 300px;
            margin-left: 100px;
            margin-bottom: 100px;
        }

        button{
            border-radius: 5px;
            border-style: none;
            transition: background-color 1s;
            background-color: rgb(120, 197, 197);
            margin-left: 30px;
            margin-right: 5px;
            padding: 15px 40px 15px 8px;
        }
        
        button:hover{ /*passar mouse e mudar cor*/
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

        </style>
    </head>
    <body>
        <h1>Excluir</h1>
        
         <form action="excluirProduto.jsp" method="POST">
            
            <label> Cod. produto:</label><br>
            <input type="text" name="id" value="<%=request.getParameter("id") %>"><br><br>
            
            <label> Nome:</label><br>
            <input type="text" name="nomep" value="<%=request.getParameter("nomep") %>"><br><br>
            
            
            
            
            <button type="submit">Excluir</button>
            <a href="listarProdutos.jsp"><button type="button" class="botao">Voltar </button></a>

            
        </form>
        
        
    </body>
</html>
