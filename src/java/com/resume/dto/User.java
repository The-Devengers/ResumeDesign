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
    private  int status;

    
   
    private  final int LOGGED_IN = 1;
    private  final int LOGGED_OUT = 0;

    public User(String username, String password, String email, String gender) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.gender = gender;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" + "username=" + username + ", password=" + password + ", email=" + email + '}';
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


    
}
