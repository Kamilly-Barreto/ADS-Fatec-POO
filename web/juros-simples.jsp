<%-- 
    Document   : juros-simples
    Created on : 25 de mar. de 2025, 14:23:06
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Simples</title>
    </head>
    <body>
        <%
            double capital = Double.parseDouble(request.getParameter("capital_simples"));
            double taxa = Double.parseDouble(request.getParameter("taxa_juro_simples")) / 100;
            int tempo = Integer.parseInt(request.getParameter("tempo_simples"));
            double juros = capital * taxa * tempo;
            double montante = capital + juros;
            double valor_futuro = capital * Math.pow((1 + taxa), tempo);
            
            out.println("<h1>Resultado</h1>");
            out.println("<h2>Montante: " + montante +"</h2>");
            out.println("<h2>Valor Futuro: " + valor_futuro + "</h2>");
            out.println("<h2>Taxa de juros: " + (taxa * 100) + "%</h2>");
            out.println("<h2>Tempo em meses: " + tempo + "</h2>");
        %>
    </body>
</html>
