<%-- 
    Document   : juros-compostos
    Created on : 25 de mar. de 2025, 14:23:20
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Compostos</title>
    </head>
    <body>
        <%
            double capital = Double.parseDouble(request.getParameter("capital_composto"));
            double taxa = Double.parseDouble(request.getParameter("taxa_juro_composto")) / 100;
            int tempo = Integer.parseInt(request.getParameter("tempo_composto"));
            double juros = Math.pow((1 + taxa), tempo);
        %>
        
        <table>
            <tr>
                <th>Mês</th>
                <th>Juros</th>
                <th>Valor Atualizado</th>
            </tr>
            <%
                for (int i = 0; i <= tempo; i++) {
                    out.println("<tr>");
                    out.println("<td>" + (i) + "</td>");
                    out.println("<td>" + ((capital * Math.pow((1 + taxa), i)) - capital) + "</td>");
                    out.println("<td>" + (capital * Math.pow((1 + taxa), i)) + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <%
            out.println("<br>");
            out.println("<p>Taxa de juros: " + (taxa * 100) + "%</p>");
            out.println("<p>Tempo em meses: " + tempo + "</p>");
        %>
    </body>
</html>
