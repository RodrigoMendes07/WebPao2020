<%-- 
    Document   : produtos
    Created on : 28/02/2020, 21:27:02
    Author     : Ti
--%>
<%@page import="br.com.videoaula.dao.ProdutoDao"%>
<%@page import="br.com.videoaula.bean.ProdutoBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Pão</title>
        <link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="menu.jsp" %> 

        <h1>Nome do Produto.</h1>
        <div class="container">
            <div class="row">
                
                <%                        int idCategoria = Integer.parseInt(request.getParameter("cod_cat"));
                    ProdutoDao categorias = new ProdutoDao();
                    for (ProdutoBean pBean : categorias.listaProduto(idCategoria)) {
                %>
                <div class="card mb-3" style="max-width: 540px;">
                    <div class="row no-gutters">
                        <div class="col-md-4">
                            <img src="img/<%=pBean.getImagem()%>" class="card-img" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title"><%=pBean.getDescricao()%></h5>
                                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                </div>

                <% }
                %>

            </div>
        </div>
    </body>
</html>