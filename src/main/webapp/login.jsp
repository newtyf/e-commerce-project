<%-- 
    Document   : login
    Created on : 10 oct 2023, 9:24:31
    Author     : amunoz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp" %>
        <title>IMPACTO S.A.C Login</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp" %>
        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center">User Login</div>
                <div class="card-body">
                    <form action="user-login" method="post">
                        <div class="form-group">
                            <label>Email address</label> 
                            <input type="email" name="login-email" class="form-control" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                            <label>Password</label> 
                            <input type="password" name="login-password" class="form-control" placeholder="Password" required>
                        </div>
                        <div class="text-center mt-2">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                    <p class="text-center mt-2 mb-0">
                        <a href="register.jsp">Si no tienes una cuenta, regitrate aqui!</a>
                    </p>
                </div>
            </div>
        </div>
        <%@include file="/includes/footer.jsp" %>
    </body>
</html>
