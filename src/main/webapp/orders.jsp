<%-- 
    Document   : orders
    Created on : 10 oct 2023, 9:31:53
    Author     : amunoz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp" %>
        <title>Orders</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp" %>
        <%// Verifica si la variable "auth" no está presente en la sesión
            if (auth == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="container">
            <h1>Orders</h1>
        </div>
        <%@include file="/includes/footer.jsp" %>
    </body>
</html>
