<%
    if (session.getAttribute("usuario") == null) {

        session.setAttribute("mensagem", "Acesso Negado! Favor se Autenticar!");

%>
<jsp:forward page="index.jsp" /> 
<%        }
%>    