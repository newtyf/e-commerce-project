<%-- 
    Document   : index
    Created on : 9 oct 2023, 18:23:06
    Author     : amunoz
--%>

<%@page import="com.newtyf.ecommerceproject.connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp" %>
        <title>IMPACTO S.A.C</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp" %>
        
        <% DbConnection.getConnection(); %>
        
        <div class="container">
            <h1>Hello World!</h1>
        </div>
    </body>
    <%@include file="/includes/footer.jsp" %>
</html>
