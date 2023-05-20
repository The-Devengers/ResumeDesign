<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="p-1 mb-2 bg-light text-white">
        <div>
            <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light mt-2 mx-4">
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
                                <a class="nav-link active" aria-current="page" href="#">Blog</a>
                            </li>

                        </ul>
                    </div>

                </div>

            </nav>

        </div>
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-90">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body px-5 py-3 text-left">

                                <div class="mb-md-5 mt-md-4 pb-1">

                                    <h2 class="fw-bold mb-2 text-uppercase">Sign up</h2>
                                    <p class="text-white-50 mb-5">Please fill in the below form to sign up</p>
                                    <form action="<%= request.getContextPath()%>/UserLogIn" method="post">
                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Enter username</label>
                                            <input type="text" class="form-control form-control-lg" name="newname" required>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Enter password</label>
                                            <input type="password" class="form-control form-control-lg" name="newpass" required>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Enter email</label>
                                            <input type="email" class="form-control form-control-lg" name="newemail" required>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <div class="btn-group me-2" role="group" aria-label="First group">
                                                <label class="form-label">Gender</label>
                                            </div>
                                            <br>
                                            <div class="btn-group me-2" role="group" aria-label="First group">
                                                <input class="form-check-input" type="radio" name="gender" value="Male">Male
                                            </div>
                                            <div class="btn-group me-2" role="group" aria-label="First group">
                                                <input class="form-check-input" type="radio" name="gender" value="Female">Female
                                            </div>
                                        </div>

                                        <input class="btn btn-outline-light btn-lg px-5" type="submit" value="Sign up">
                                    </form>

                                </div>
                                <div>
                                    <p class="mb-0">Already a member?<a href="UserLogIn.jsp" class="text-white-50 fw-bold">Sign in</a></p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>