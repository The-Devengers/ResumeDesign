<%@page import="com.resume.dto.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">  
        <link rel="stylesheet" href="style.css">
    </head>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <body>
        <div>
            <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
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

                        <a class="nav-link active" href="http://localhost:8080/ResumeDesign/UserLogIn.jsp"> My Account</a>

                    </div>
                </div>
            </nav>

        </div>
        <div class="container-fluid w-50" style="padding-top: 100px;">
            <div class="text-center  mx-auto">
                <h6>ONLINE RESUME BUILDER</h6>

                <h1 class="fw-bold">Only 2% of resumes make it past the first round. Be in the top 2%</h1>

            </div>
            <div class="col-lg text-center">
                <button id="buildbtn" type="button" class="btn btn-primary btn-lg" >Build my CV</button>
            </div>
        </div>


    <script>
        // Get a reference to the button element
        var button = document.getElementById('buildbtn');

        // Add a click event listener to the button
        button.addEventListener('click', function () {
            // Redirect to the new .jsp page
            window.location.href = 'http://localhost:8080/ResumeDesign/UserLogIn.jsp';
        });
    </script>
    </body>


</html>
