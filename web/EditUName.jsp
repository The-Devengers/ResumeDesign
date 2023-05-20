<%-- 
    Document   : EditUName
    Created on : May 20, 2023, 2:42:07 PM
    Author     : Leon
--%>
<%@page import="com.resume.dao.editDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            request.setCharacterEncoding("UTF-8"); 
            String newusername = request.getParameter("newusername");
            String username = request.getParameter("name");
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            editDAO.EditUserName(newusername, username);
            response.sendRedirect("UserProfile.jsp?fullname="+ fullname+"&name="+username+"&email="+email+"&gender="+gender+"&phone=" + phone+"&address="+ address);
        %> 
    </body>
</html>
