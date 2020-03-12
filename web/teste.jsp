<%-- 
    Document   : teste
    Created on : 11/03/2020, 21:21:14
    Author     : Ti
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            session.setAttribute("usuario","admin");
            session.setAttribute("senha","admin");
            
            out.println(session.getAttribute("usuario"));
        %>
        
    </body>
</html>
