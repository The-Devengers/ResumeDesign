/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.resume.dto;


/**
 *
 * @author User
 */
public class User {
    private String username;
    private String password;
    private String gender;
    private String email;
    private String fullname;
    private String phone;
    private String address;
    private int status;

    
   
    private  final int LOGGED_IN = 1;
    private final int INVALID = 0;

    public User(String username, String password, String email, String gender, String fullname, String phone, String address) {
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.email = email;
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" + "username=" + username + ", password=" + password + ", gender=" + gender + ", email=" + email + ", fullname=" + fullname + ", phone=" + phone + ", address=" + address + ", status=" + status + ", LOGGED_IN=" + LOGGED_IN + ", INVALID=" + INVALID + '}';
    }

    public  int getStatus() {
        return status;
    }

    public  void setStatus(int status) {
        this.status = status;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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


    
}
