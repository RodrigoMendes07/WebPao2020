<%-- 
    Document   : menu
    Created on : 28/02/2020, 21:28:02
    Author     : Ti
--%>

<%@page import="br.com.videoaula.bean.CategoriaBean"%>
<%@page import="br.com.videoaula.dao.CategoriaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="topo.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Web Pão</title>
    </head>
    <body>   
        <a href="index.jsp">Inicio</a>
        <%
            CategoriaDao cDao = new CategoriaDao();
            
            for (CategoriaBean elem : cDao.listaCategoria()) {
                
                     %>
                     <a href="produtos.jsp?cod_cat=<%=elem.getIdCategoria()%>"><%=elem.getDescricao()%></a>
                     <%
            }   
        %>
        <a href="logout.jsp">Sair</a>
    </body>
</html>