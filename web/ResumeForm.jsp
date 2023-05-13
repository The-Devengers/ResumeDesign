<%-- 
    Document   : ResumeForm
    Created on : May 13, 2023, 1:25:06 PM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create resume</h1>
        <h2>Please fill in all fields below</h2>
        <form>
            <label>First name:</label>
            <input type="text" name="fname" required>
            <label>Last name:</label>
            <input type="text" name="lname" required>
            <label >Email:</label>
            <input type="email" name="rmail" required>
            <label >Phone number:</label>
            <input type="text" name="phone" required>
            <label >Address:</label>
            <input type="text" name="address" required>
            <label >Summary:</label>
            <textarea name="summary" rows="5" cols="70"></textarea>
            
        </form>
    </body>
</html>
