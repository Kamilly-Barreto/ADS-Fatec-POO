<%-- 
    Document   : numero-primo
    Created on : 1 de abr. de 2025, 13:47:46
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Número Primo</title>
    </head>
    <body>
        <h1>Número Primo</h1>
        
        <form action="numero-primo.jsp" method="post">
            Número: <input type="number" name="numero">
            <input type="submit" value="Verificar">
        </form>
        <%
            if (request.getParameter("numero") != null) {
                int numero = Integer.parseInt(request.getParameter("numero"));
                boolean e_primo = true;
                ArrayList<Integer> divisores = new ArrayList<Integer>();
                                
                if (numero == 1 || numero == 0) {
                    e_primo = false;
                }
                else {
                    for (int i = 2; i <= numero / 2; i++) {
                        if (numero % i == 0) {
                            e_primo = false;
                            for (int j = 1; j <= numero; j++) {
                                if ((numero % j) == 0) {
                                    divisores.add(j);
                                }
                            }
                            break;
                        }
                    }
                }
                
                if (e_primo) {
                    out.println("O número é primo.");
                }
                else {
                    out.println("O número não é primo.");
                    if (numero != 1 && numero != 0) {
                        out.println("Divisores: ");
                        for (int i = 0; i < divisores.size(); i++) {
                            out.println(divisores.get(i));
                        }
                    }
                }
            }
            
        %>
    </body>
</html>
