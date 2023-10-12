/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.newtyf.ecommerceproject.model;

/**
 *
 * @author amunoz
 */
public class User {
    private int id;
    private String name;
    private String surName;
    private String phone;
    private String address;
    private String email;
    private String password;
    private int cartId;
    private int ordersId;

    public User() {
    }

    public User(int id, String name, String surName, String phone, String address, String email, String password, int cartId, int ordersId) {
        this.id = id;
        this.name = name;
        this.surName = surName;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.password = password;
        this.cartId = cartId;
        this.ordersId = ordersId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurName() {
        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(int ordersId) {
        this.ordersId = ordersId;
    }
    
    
}
