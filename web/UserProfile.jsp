<%-- 
    Document   : UserProfile
    Created on : May 17, 2023, 11:46:38 AM
    Author     : Leon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            .background{
               background-color: #F0F0F0; 
            }
        </style>
    </head>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light mt-2 mx-4">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">APLY.</a>
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
                                <a class="nav-link active" aria-current="page" href="#">Blog</a>
                            </li>

                        </ul>

                        <% 
                            String name = request.getParameter("name");
                            String email = request.getParameter("email");
                            String gender = request.getParameter("gender");
                        %>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto me-5 mb-3 mb-lg-0">


                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Hi, <%= name%>
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="UserProfile.jsp?name=<%= name%>&email=<%= email%>&gender=<%= gender%>">View profile</a></li>
                                        <li><a class="dropdown-item" href="">Setting</a></li>


                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item text-danger bold" id="signout" href="#">Sign out</a></li>
                                    </ul>
                                </li>
                        </div>
                    </div>

                </div>

            </nav>
                    <section> 
  <div class="container py-5">

    <div class="row ">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center background" >
            <h5 class="my-3">John Smith</h5>
            <p class="text-muted mb-1"><%= gender%></p>
            <p class="text-muted mb-4">Bay Area, San Francisco, CA</p>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body background">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">Johnatan Smith</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= email%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">(097) 234-5678</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Address</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">Bay Area, San Francisco, CA</p>
              </div>
            </div>
          </div>
        </div>
      </div>
              <div class="col-lg-12">
                  <div class="card-body text-center" >
                      <button id="createresume" class="btn btn-outline-primary me-5">Create resume</button>
                      <button class="btn btn-outline-primary">Edit profile</button>
                  </div>
              </div>
    </div>
  </div>
</section>
    </body>
    <script>
            // Get a reference to the button element
            var button = document.getElementById('createresume');

            // Add a click event listener to the button
            button.addEventListener('click', function () {
                // Redirect to the new .jsp page
                window.location.href = 'http://localhost:8080/ResumeDesign/ResumeForm.jsp?name=<%= name%>';
            });
            
            
        </script>
</html>
