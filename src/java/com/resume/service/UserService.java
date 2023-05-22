package com.resume.service;

import com.resume.dto.User;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author User
 */
public interface UserService {
    public User CreateUser(String newname, String newpass, String newemail, String gender, String newfullname, String newphone, String newaddress);
    public User verifyUser(String name, String pass);
}
