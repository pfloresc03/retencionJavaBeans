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
        <jsp:useBean id="ret" class="clases.Retencion"/>
        <% 
            Float bruto = Float.parseFloat(request.getParameter("salario"));
        %>
        <jsp:setProperty name="ret" property="salario" value="<%= bruto %>"/>
        <h3>El salario bruto es: <jsp:getProperty name="ret" property="salario" /></h3>
        <h3>La retencion es del <jsp:getProperty name="ret" property="retencion" />%</h3>
        <h3>El salario neto es: <jsp:getProperty name="ret" property="salarioNeto" /></h3>
        
    </body>
</html>