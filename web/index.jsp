<%-- 
    Document   : index
    Created on : 28/02/2020, 20:01:31
    Author     : Ti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <titl>Web Pão.</title>
    </head>
    <body>
        Olá, <%= request.getParameter("name") %>
        <h1>Hello World!</h1>
    </body>
</html>
