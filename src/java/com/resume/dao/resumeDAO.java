/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.resume.dao;

import com.resume.dto.Resume;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class resumeDAO {
    private Connection con;
    private String query;
    private PreparedStatement prep;
    private ResultSet rs;
    
    public resumeDAO(Connection con) {
        this.con = con;
    }
    
    public resumeDAO(){};
    
    
    public Resume storeResume(int uID, String title, String date, String imagePath) {
       Resume res = null;
       try {
           query = "INSERT INTO resume VALUES(?,?,?);";
           prep = this.con.prepareStatement(query);
           prep.setInt(1, uID);
           prep.setString(2, title);
           prep.setString(3, date);
           prep.setString(4, imagePath);
           rs = prep.executeQuery();
           res = new Resume(title, date, uID, imagePath);
       } catch (SQLException e) {
           e.getMessage();
       }
       return res;
    }
}
