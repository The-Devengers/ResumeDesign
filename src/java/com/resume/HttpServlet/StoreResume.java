/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.resume.HttpServlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author User
 */
@MultipartConfig
@WebServlet(name = "StoreResume", urlPatterns = {"/StoreResume"})
public class StoreResume extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StoreResume</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StoreResume at " + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        response.setContentType("UTF-8");
        
        HttpSession session = request.getSession();

        Part profileImage = request.getPart("profileImage");

        String imageFileName = profileImage.getSubmittedFileName();
        String uploadPath = request.getContextPath() + "/"+ imageFileName;

        try {

            FileOutputStream fos = new FileOutputStream(uploadPath);
            InputStream is = profileImage.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String phonenum = request.getParameter("phonenum");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String city = request.getParameter("city");
        String summary = request.getParameter("summary");
        String address = request.getParameter("address");
        String job = request.getParameter("job");
        String employer = request.getParameter("employer");
        String jobstartdate = request.getParameter("jobstartdate");
        String jobenddate = request.getParameter("jobenddate");
        String jobDescription = request.getParameter("job-description");

        String major = request.getParameter("major");
        String school = request.getParameter("school");
        String schoolstartdate = request.getParameter("schoolstartdate");
        String schoolenddate = request.getParameter("schoolenddate");
        String eduDescription = request.getParameter("edu-description");

        String skill = request.getParameter("skill");
        String softSkill = request.getParameter("softskill");
        String level = request.getParameter("level");

        RequestDispatcher rd = request.getRequestDispatcher("/receipt.jsp");
        request.setAttribute("image", uploadPath);
        request.setAttribute("fname", fname);
        request.setAttribute("lname", lname);
        request.setAttribute("phonenum", phonenum);
        request.setAttribute("email", email);
        request.setAttribute("country", country);
        request.setAttribute("city", city);
        request.setAttribute("summary", summary);
        request.setAttribute("address", address);

        request.setAttribute("job", job);
        request.setAttribute("employer", employer);
        request.setAttribute("jobstartdate", jobstartdate);
        request.setAttribute("jobenddate", jobenddate);
        request.setAttribute("jobDescription", jobDescription);

        request.setAttribute("major", major);
        request.setAttribute("school", school);
        request.setAttribute("schoolstartdate", schoolstartdate);
        request.setAttribute("schoolenddate", schoolenddate);
        request.setAttribute("eduDescription", eduDescription);

        request.setAttribute("skill", skill);
        request.setAttribute("softskill", softSkill);
        
        request.setAttribute("level", level);

        rd.forward(request, response);
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
