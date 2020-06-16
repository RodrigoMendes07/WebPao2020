<%-- 
    Document   : carrinho
    Created on : 28/02/2020, 21:30:06
    Author     : Ti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho.</title>
    </head>
    <body>
        <h1>Carrinho.</h1>  
        <form>
            <td aling ="left" width ="50%">
                <img style="margin-right: 20px;" src="img/pao.png" height="100" alt="Pão de Hamburguer com gergelim" align ="left"/>
                <b>Pão de Hamburguer</b> <br/><br/>
                Pão de Hamburger com gergelim.<br/>
                <input type="hidden" name="id" value="4" />
                Quantidade:
                <select name="qtd">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                </select>
                <p align = "center">
                    <input type="submit" value="Adicionar ao carrinho" name="botao" />
                </p>
            </td>
        </form>
    </body>
</html>
