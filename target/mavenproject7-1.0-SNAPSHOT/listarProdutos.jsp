

<%@page import="beans.Produtos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProdutosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
        
        <style> 
            
              @import url('https://fonts.googleapis.com/css2?family=Irish+Grover&family=Titillium+Web:wght@200&display=swap');
            /*importada de https://fonts.google.com , usada no h1*/
           
            h1{
                font-family: 'Titillium Web', sans-serif;    
                font-size: 30pt;
                color: rgb(54, 145, 175);
                text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
                align-items: center;
                margin-left: 150px;
                margin-bottom: -100px;
            }
            
            body{
                background-color: #F0F8FF;
            }
            
            .botao{
                border-radius: 5px;
                border-style: none;
                transition: background-color 1s;
                background-color: rgb(120, 197, 197);
                margin-left: 50px;
                margin-top: 100px;
                padding: 15px  20px 15px 20px;
                font-size: 15px;
                }

            .botao:hover{ /*passar mouse e mudar cor*/
                background-color: lightcyan;
                color:black;
            }

            a{
                margin: -15px;
                margin-left: 0px;
                padding: 15px;
            }

            table, th, td {
                border: 2px solid white;
            }   

            table {
                border-collapse: collapse;
                margin-left: 50px;
            }

            th{
                background-color: rgb(40, 137, 148);
                color: white;
            }

            th, td{
                padding: 10px;
                text-align: center;
                width: 120px;
            }

            tr:nth-child(even) { /*não entendi, só copiei e colei*/
                background-color: white;
            }

            tr:hover:nth-child(1n + 2) { /*não entendi, só copiei e colei*/
                background-color: rgb(166, 184, 189); /*quando passa o mouse*/
                color: #fff;
            }
        </style>
        
    </head>
    <body>
        <h1>Produtos Cadastrados</h1>
        
<jsp:useBean id="produtos" class="beans.Produtos" />

<jsp:setProperty property="*" name="produtos" />

<table width="600px" >

    <th>Codigo: </th>
    <th>Produto: </th>
    <th>Marca: </th>
    <th>Valor: </th>
    <th colspan="2">Opções: </th>

        
        <%
            
        try{
   
            ProdutosDAO ProdDAO = new ProdutosDAO();
            ArrayList<Produtos> lista = ProdDAO.Pesquisar();
                     
            for(int num = 0; num < lista.size(); num++){
                out.print("" + "<tr><td>" + lista.get(num).getId() + "</td>");
                out.print("" + "<td>" + lista.get(num).getNomep() + "</td>");
                out.print("" + "<td>" + lista.get(num).getMarca() + "</td>");
                out.print("" + "<td>" +  lista.get(num).getValor() + "</td>");
                out.print("<td><a href='formAlterar.jsp?id=" +  lista.get(num).getId() + "&nomep=" +
                        lista.get(num).getNomep() + "&marca=" + lista.get(num).getMarca() + "&valor=" + lista.get(num).getValor() +" '> Alterar</a></td>");
                          
                out.print("<td><a href='formExcluir.jsp?id=" +  lista.get(num).getId() + "&nomep=" +
                        lista.get(num).getNomep() + "'> Excluir</a></td><br><br>");

            }
        
        } catch (Exception e) {
        }
   %>
   
</table>
   
   <br><br>
    <a href="index.html"><button type="button" class="botao">Voltar </button></a>
    <a href="produtosregister.jsp"><button type="button" class="botao">Inserir</button></a>


   
   
   
    </body>
</html>

