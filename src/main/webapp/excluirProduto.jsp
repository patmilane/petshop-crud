<%-- 
    Document   : excluirProduto
    Created on : 25/11/2021, 23:27:29
    Author     : patri
--%>

<%@page import="dao.ProdutosDAO"%>
<%@page import="beans.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
        body{
            background-color: #F0F8FF;
        }
        
        h1{
            font-family: 'Titillium Web', sans-serif;    
            font-size: 30pt;
            color:rgb(54, 145, 175);
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
            margin-bottom: 18px;
            font-weight: 50px;
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

            
            
        </style>
        
        
    </head>
    <body>
        
<jsp:useBean id="produtos" class="beans.Produtos" />

<jsp:setProperty property="*" name="produtos" />        
        
        
<%
           try{
               
               Produtos prod = new Produtos();
               prod.setId(Integer.parseInt(request.getParameter("id")));

               ProdutosDAO prodDAO = new ProdutosDAO();
               int status =  prodDAO.ExcluirProdutos(prod); //mudar 
             
                    if (status > 0) {

                    out.print("<h1>Exclusão realizada!</h1><br><br>");

                    } else {
                    out.print("<h1>erro</h1><br><br>");
                    }
          
               
            } catch (Exception e){
           
            }
           
           
    %>        
        
        <a href="listarProdutos.jsp"><button type="button" class="botao">Voltar </button></a>

        
    </body>
</html>
