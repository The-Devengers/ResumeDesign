/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.resume.HttpServlet;

import com.resume.dao.userDAO;
import com.resume.dbconnection.db;
import com.resume.dto.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class UserLogIn extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        String referer = request.getHeader("referer");
        
        userDAO userO;
        try {
            userO = new userDAO(db.getCon());
            switch (referer) {
                case "http://localhost:8080/ResumeDesign/UserCreate.jsp": {
                    
                    String username = request.getParameter("newname");
                    String password = request.getParameter("newpass");
                    String email = request.getParameter("newemail");
                    String gender = request.getParameter("gender");
                    String fullname = request.getParameter("newfullname");
                    String address = request.getParameter("newaddress");
                    String phone = request.getParameter("newphone");
                    
                    User user = userO.CreateUser(username, password, email, gender, fullname, phone, address);
                    
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    response.sendRedirect("http://localhost:8080/ResumeDesign/index.jsp");
                    return;
                }
                case "http://localhost:8080/ResumeDesign/UserLogIn.jsp": {
                    String username = request.getParameter("name");
                    String password = request.getParameter("pass");
                    
                    User loggedUser = userO.verifyUser(username, password);
                    
                    HttpSession session = request.getSession();
                    if (loggedUser.getStatus() == 1) {
                        
                        session.setAttribute("user", loggedUser);
                        response.sendRedirect("http://localhost:8080/ResumeDesign/index.jsp");
                    } else if (loggedUser.getStatus() == 0) {
                        session.setAttribute("message", "Wrong username or password. Please try again");
                        response.sendRedirect("http://localhost:8080/ResumeDesign/UserLogIn.jsp");
                    }
                    
                }
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(UserLogIn.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
