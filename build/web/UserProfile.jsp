<%-- 
    Document   : UserProfile
    Created on : May 17, 2023, 11:46:38 AM
    Author     : Leon
--%>
<%@page import="com.resume.dto.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            .background{
                background-color: #F0F0F0;
            }
        </style>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>


    <body class="p-1">
        <nav class="navbar navbar-expand-lg navbar-light bg-light mt-2 mx-4">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">APLY.</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Resume
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Professional</a></li>
                                <li><a class="dropdown-item" href="#">Modern</a></li>
                                <li><a class="dropdown-item" href="#">Simple</a></li>
                                <li><a class="dropdown-item" href="#">Creative</a></li>


                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Examples</a></li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">FAQ</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="https://www.facebook.com/profile.php?id=100093011347235">Blog</a>
                        </li>

                    </ul>

                    <%
                        User user = (User) session.getAttribute("user");
                        String phone = user.getPhone();
                        String username = user.getUsername();
                        String email = user.getEmail();
                        String gender = user.getGender();
                        String fullname = user.getFullname();
                        String address = user.getAddress();
                    %>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto me-5 mb-3 mb-lg-0">


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Hi, <%= username%>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="UserProfile.jsp?fullname=<%= fullname%>&name=<%= username%>&email=<%= email%>&gender=<%= gender%>&phone=<%= phone%>&address=<%= address%>">View profile</a></li>
                                    <li><a class="dropdown-item" href="">Setting</a></li>


                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item text-danger bold" id="signout" href="Logout.jsp">Sign out</a></li>
                                </ul>
                            </li>
                    </div>
                </div>

            </div>

        </nav>
        <section> 
            <div class="container py-5">
                <div class="row ">
                    <div class="col-lg-12">
                        <div class="card mb-4">
                            <div class="card-body background">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">User Name</p>
                                    </div>
                                    <div id="container1" class="col-sm-6">
                                        <p id="uname" class="text-muted mb-0"><%= username%></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Full Name</p>
                                    </div>
                                    <div id="container2" class="col-sm-6">
                                        <%
                                            if (fullname != null) {
                                        %>
                                        <p id="fname" class="text-muted mb-0"><%= fullname%></p>     
                                        <%  } else {%>
                                        <p id="fname" class="text-muted mb-0">Full name</p>    
                                        <% }%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Gender</p>
                                    </div>
                                    <div id="container3" class="col-sm-6">
                                        <p id="gen" class="text-muted mb-0"><%= gender%></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Email</p>
                                    </div>
                                    <div id="container4" class="col-sm-6">
                                        <p id="mail" class="text-muted mb-0"><%= email%></p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Phone number</p>
                                    </div>
                                    <div id="container5" class="col-sm-6">
                                        <%
                                            if (phone != null) {
                                        %>
                                        <p id="pnum" class="text-muted mb-0"><%= phone%></p>     
                                        <%  } else {%>
                                        <p id="pnum" class="text-muted mb-0">Phone number</p>    
                                        <% }%>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Address</p>
                                    </div>
                                    <div id="container6" class="col-sm-6">
                                        <%
                                            if (address != null) {
                                        %>
                                        <p id="add" class="text-muted mb-0"><%= address%></p>      
                                        <%  } else {%>
                                        <p id="add" class="text-muted mb-0">Address</p>    
                                        <% }%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card-body text-center" >
                            <button id="createresume" class="btn btn-outline-primary me-5">Create resume</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script>
            var createBtn = document.getElementById('createresume');
            
            if (createBtn !== null) {
                createBtn.addEventListener('click', e =>{
                window.location.href = 'http://localhost:8080/ResumeDesign/ResumeForm.jsp';
            });
            }
            
        </script>
    </body>
</html>
