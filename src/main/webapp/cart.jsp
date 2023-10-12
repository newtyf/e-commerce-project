<%-- 
    Document   : cart
    Created on : 10 oct 2023, 9:24:55
    Author     : amunoz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp" %>
        <title>Shopping Cart</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp" %>
        <%// Verifica si la variable "auth" no está presente en la sesión
            if (auth == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="container">
            <h1>Cart</h1>
        </div>
    </body>
    <%@include file="/includes/footer.jsp" %>
</html>
