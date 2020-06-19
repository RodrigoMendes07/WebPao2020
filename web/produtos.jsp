<%-- 
    Document   : produtos
    Created on : 28/02/2020, 21:27:02
    Author     : Ti
--%>

<%@page import="br.com.webpao.bean.ProdutoBean"%>
<%@page import="br.com.webpao.dao.ProdutoDao"%>
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

        <h1>Produtos</h1>
        <div class="container">
            <div class="row">

                <%                    int idCategoria = Integer.parseInt(request.getParameter("cod_cat"));
                    ProdutoDao categorias = new ProdutoDao();
                    for (ProdutoBean pBean : categorias.listaProduto(idCategoria)) {
                %>               
                <!--Card produto-->
                <div class="col-sm-3">
                    <div class="card">
                        <img src="img/<%=pBean.getImagem()%>" width="100" height="200" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%=pBean.getNome()%></h5>
                            <p class="card-text"><%=pBean.getDescricao()%></p>
                            <h5>R$<%=pBean.getValor()%></h5>
                            <a href="carrinho.jsp?cod_produto=<%=pBean.getIdProduto()%>" class="btn btn-primary">OFERTA DO DIA</a>
                        </div>
                    </div>
                </div>
                <% }
                %>
            </div>
        </div>
    </body>
</html>