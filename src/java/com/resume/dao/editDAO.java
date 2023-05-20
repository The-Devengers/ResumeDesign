/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.resume.dao;

/**
 *
 * @author Leon
 */
import com.resume.UserService;
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
public class editDAO {

    private static Connection con;
    private static String query;
    private static PreparedStatement pst;
    private static ResultSet rs;

    public static void EditUserName(String newusername, String username){
        try{
            con = db.getCon();
            query="update user set username = ? where username = ? ";
            pst= con.prepareStatement(query);
            pst.setString(1, newusername);
            pst.setString(2, username);
            pst.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }

}
