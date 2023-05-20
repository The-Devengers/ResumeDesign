<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    // Perform logout logic
    session.invalidate(); // Invalidate the user session

    // Redirect to index.jsp
    response.sendRedirect("index.jsp");
%>
