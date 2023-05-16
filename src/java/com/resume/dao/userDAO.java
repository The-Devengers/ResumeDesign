/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.resume.dao;

import com.resume.dbconnection.db;
import com.resume.dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class userDAO {

    private Connection con;
    private String query;
    private PreparedStatement prep;
    private ResultSet rs;

    public userDAO(Connection con) {
        this.con = con;
    }

    public userDAO() {

    }

    public User CreateUser(String newname, String newpass, String newemail, String gender) {
        User newUser = null;
        try {
            query = "INSERT INTO user (username, password, email, gender) VALUES (?,?,?,?);";
            prep = this.con.prepareStatement(query);
            prep.setString(1, newname);
            prep.setString(2, newpass);
            prep.setString(3, newemail);
            prep.setString(4, gender);
            prep.executeUpdate();
            newUser = new User();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return newUser;
    }

}
