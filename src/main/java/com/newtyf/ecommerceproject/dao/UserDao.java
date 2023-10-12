/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.newtyf.ecommerceproject.dao;

import com.newtyf.ecommerceproject.model.User;
import java.sql.*;

/**
 *
 * @author amunoz
 */
public class UserDao {

    public Connection con;
    private String query;
    private PreparedStatement pst = null;
    private ResultSet rs;
    
    public UserDao(Connection con) {
        this.con = con;
    }
    
    public User userLogin(String email, String password) {
        User user = null;
        
        try {
            query = "select * from users where email=? and password=?";
            pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setSurName(rs.getString("surname"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        return user;
    }
    
}
