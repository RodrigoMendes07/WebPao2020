<%-- 
    Document   : produtos
    Created on : 28/02/2020, 21:27:02
    Author     : Ti
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Pão</title>
    </head>
    <body>
          <%@include file="menu.jsp" %> 
        
        <h1>Nome do Produto.</h1>
        
        <%
            String idProduto = request.getParameter("cod_cat");
        %>
        
        <h1>Meu produto tem o cod<%=idProduto%></h1>
        
    </body>
</html>