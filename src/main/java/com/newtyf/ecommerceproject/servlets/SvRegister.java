/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.newtyf.ecommerceproject.servlets;

import com.newtyf.ecommerceproject.model.User;
import com.newtyf.ecommerceproject.connection.DbConnection;
import com.newtyf.ecommerceproject.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AXEL
 */
@WebServlet(name = "SvRegister", urlPatterns = {"/user-register"})
public class SvRegister extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvRegister</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvRegister at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("register-name");
            String surName = request.getParameter("register-surname");
            String phone = request.getParameter("register-phone");
            String address = request.getParameter("register-address");
            String email = request.getParameter("register-email");
            String password = request.getParameter("register-password");

            System.out.println(surName);

            try {
                UserDao udao = new UserDao(DbConnection.getConnection());
                
                if (udao.UserExists(email, phone)) {
                    response.sendRedirect("register.jsp?duplicate=true");
                    return;
                }
                
                User user = udao.UserRegister(name, surName, phone, address, email, password);

                if (user != null) {
                    out.println("user register succesfull");
                    request.getSession().setAttribute("auth", user);
                    response.sendRedirect("index.jsp");
                } else {
                    out.println("user register failed");
                }

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
