
<%@page import="br.com.webpao.bean.CategoriaBean"%>
<%@page import="br.com.webpao.dao.CategoriaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="topo.jsp"%>
<!--inicio Menu -->
<nav class="navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="#">
        <img src="img/paocaseiro.jpg" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
    </a>
    <form class="form-inline" action="produtos.jsp">
        <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar...." aria-label="Pesquisar....">
        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Buscar</button>
    </form>
</nav>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Web Pão</a>
    <!-- Navbar content -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="destaques.jsp">Home<span class="sr-only">(current)</span></a>
            </li>
            <%            CategoriaDao cDao = new CategoriaDao();

                for (CategoriaBean elem : cDao.listaCategoria()) {

            %>
            <li class="nav-item">
                <a class="nav-link" href="produtos.jsp?cod_cat=<%=elem.getIdCategoria()%>"><%=elem.getDescricao()%></a>
            </li>            
            <%
                }
            %>
            <li class="nav-item">
                <a class="nav-link" href= "logout.jsp">Sair</a>
            </li>
        </ul>
    </div>
</nav>
