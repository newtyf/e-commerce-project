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
        <title>IMPACTO S.A.C | Home</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp" %>

        <div class="container">
            <% if (auth != null) {%>
            <h1>Bienvenido <%=auth.getName()%> <%=auth.getSurName()%>!</h1>
            <%
                }
            %>
        </div>
        <%@include file="/includes/footer.jsp" %>
    </body>
</html>
