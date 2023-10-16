<%-- 
    Document   : register
    Created on : 12 oct 2023, 9:27:31
    Author     : amunoz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp" %>
        <title>IMPACTO S.A.C Register</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp" %>
        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center">User Register</div>
                <div class="card-body">
                    <form action="user-register" method="post">
                        <div class="form-group">
                            <label>Nombre</label> 
                            <input type="text" name="register-name" class="form-control" placeholder="Ingrese su nombre">
                        </div>
                        <div class="form-group">
                            <label>Apellido</label> 
                            <input type="text" name="register-surname" class="form-control" placeholder="Ingrese su apellido">
                        </div>
                        <div class="form-group">
                            <label>Telefono</label> 
                            <input type="tel" name="register-phone" class="form-control" placeholder="+51999999999">
                        </div>
                        <div class="form-group">
                            <label>Direccion</label> 
                            <input type="text" name="register-address" class="form-control" placeholder="Mz Cx Ltx Barranco Lima">
                        </div>
                        <div class="form-group">
                            <label>Correo Electronico</label> 
                            <input type="email" name="register-email" class="form-control" placeholder="example@gmail.com">
                        </div>
                        <div class="form-group">
                            <label>Password</label> 
                            <input type="password" name="register-password" class="form-control" placeholder="Password">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="/includes/footer.jsp" %>
    </body>
</html>
