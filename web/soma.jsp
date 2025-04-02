<%-- 
    Document   : soma
    Created on : 1 de abr. de 2025, 13:48:12
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma</title>
    </head>
    <body>
        <h1>Soma</h1>
        <form action="soma.jsp" method="post">
            <input type="number" name="numero">
            <input type="submit" value="Somar">
        </form>
        <%
            if (request.getParameter("numero") != null) {
                int numero = Integer.parseInt(request.getParameter("numero"));
                int soma = 0;
                
                for (int i = 1; i <= numero; i++) {
                    soma += i;
                }
                out.println("Soma = " + soma);
            }
        %>
    </body>
</html>
