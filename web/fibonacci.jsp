<%-- 
    Document   : fibonacci
    Created on : 1 de abr. de 2025, 13:48:01
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    public int fibonacci(int num) {
            if (num < 2) {
                return num;
            }
            else {
                return fibonacci(num-1) + fibonacci(num-2);
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sequência de Fibonacci</title>
    </head>
    <body>
        <h1>Sequência de Fibonacci</h1>
        <form action="fibonacci.jsp" method="post">
            Até: <input type="number" name="numero">
            <input type="submit" value="Gerar sequência">
        </form>
        <%
            if (request.getParameter("numero") != null) {
                int indice = Integer.parseInt(request.getParameter("numero"));
                
                for (int i = 1; i <= indice; i++) {
                    out.println(fibonacci(i));
                }
            }
        %>
    </body>
</html>
