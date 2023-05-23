/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.resume.dao;

import com.resume.service.UserService;
import com.resume.dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class userDAO implements UserService {

    private Connection con;
    private String query;
    private PreparedStatement prep;
    private ResultSet rs;

    public userDAO(Connection con) {
        this.con = con;
    }

    public userDAO() {

    }

    @Override
    public User CreateUser(String newname, String newpass, String newemail, String gender, String newfullname, String newphone, String newaddress) {
        User newUser = null;
        try {
            query = "INSERT INTO user (username, password, email, gender, fullname, phone, address) VALUES (?,?,?,?,?,?,?);";
            prep = this.con.prepareStatement(query);
            prep.setString(1, newname);
            prep.setString(2, newpass);
            prep.setString(3, newemail);
            prep.setString(4, gender);
            prep.setString(5, newfullname);
            prep.setString(6, newphone);
            prep.setString(7, newaddress);
            prep.executeUpdate();
            newUser = new User(newname, newpass, newemail, gender, newfullname, newphone, newaddress);
            newUser.setStatus(1);
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return newUser;
    }

    @Override
    public User verifyUser(String name, String pass) {
        User oldUser = null;
        try {
            query = "SELECT * FROM user where username=? and password=?";
            prep = this.con.prepareStatement(query);
            prep.setString(1, name);
            prep.setString(2, pass);
            rs = prep.executeQuery();
            oldUser = new User();
            if (rs.next()) {
                oldUser.setUsername(rs.getString("username"));
                oldUser.setPassword(rs.getString("password"));
                oldUser.setFullname(rs.getString("fullname"));
                oldUser.setPhone(rs.getString("phone"));
                oldUser.setEmail(rs.getString("email"));
                oldUser.setGender("gender");
                oldUser.setAddress(rs.getString("address"));
                oldUser.setStatus(1);
            } else {
                oldUser.setStatus(0);
        }
        } catch (SQLException ex) {
            ex.getMessage();
        }

        return oldUser;
    }

}
