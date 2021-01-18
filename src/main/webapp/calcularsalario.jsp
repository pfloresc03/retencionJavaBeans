<%-- 
    Document   : calcularsalario
    Created on : 15 ene. 2021, 21:26:47
    Author     : Pablo Flores
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String nombre=request.getParameter("nombre"); %>
        <h1><%= nombre %></h1>
        <%@page import="clases.Retencion" %>
        <% 
            String bruto = request.getParameter("salario");
            Retencion miRetencion = new Retencion(bruto);
        %>
        <h3>El salario bruto es: <%= miRetencion.getSalario() %></h3>
        <h3>La retencion es del <%= miRetencion.getRetencion() %>%</h3>
        <h3>El salario neto es: <%= miRetencion.getSalarioNeto() %></h3>
        
    </body>
</html>