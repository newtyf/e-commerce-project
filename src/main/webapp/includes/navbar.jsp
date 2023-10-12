<%-- 
    Document   : navbar
    Created on : 10 oct 2023, 12:38:16
    Author     : amunoz
--%>


<%@page import="com.newtyf.ecommerceproject.model.User"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
%>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Impacto S.A.C</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="form-inline row mx-1">
                <input class="form-control mr-md-2 col-12 col-md-8 " type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0 col-12 col-md-auto" type="submit">Search</button>
            </form>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">2</span> </a></li>
                <li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
                    <%
                        if (auth != null) {
                    %>
                <li class="nav-item mb-2 mr-md-2"><a class="btn btn-danger w-100" href="log-out">Logout</a></li>
                    <%
                    } else {
                    %>
                <li class="nav-item "><a class="btn btn-secondary w-100" href="login.jsp">Login</a></li>
                    <%                         }
                    %>
            </ul>
        </div>
    </div>
</nav>
