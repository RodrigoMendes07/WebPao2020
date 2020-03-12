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
        <link href="dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="dist/css/sigin.css" rel="stylesheet" type="text/css"/>
        <title>Web Pão.</title>
    </head>
    <body class="text-center">
        <form class="form-signin" method="post" action="LoginControle">
            <img class="mb-4" src="/docs/4.4/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Tela de Login</h1>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="email" id="inputEmail" name="txtLogin" class="form-control" placeholder="Email address" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" name="txtSenha" class="form-control" placeholder="Password" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            <p class="mt-5 mb-3 text-muted">&copy;IFMT - 2020</p>
        </form>
    </body>





</html>
