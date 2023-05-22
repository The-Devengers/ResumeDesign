<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="p-1 mb-2 bg-light text-white">
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
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-left">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase">LOG IN</h2>
                                    <br>
                                    <form action="<%= request.getContextPath()%>/UserLogIn" method="post">
                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Username</label>
                                            <input type="text" class="form-control form-control-lg" name="name" required>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Password</label>
                                            <input type="password" class="form-control form-control-lg" name="pass" required>
                                        </div>
                                        <% String message = (String) session.getAttribute("message");
                                            if (message != null) {
                                            out.println("<p style=\"color: red;\">" + message + "</p>");
                                            session.removeAttribute("message");
    }%>
                                        <input class="btn btn-outline-light btn-lg px-5" type="submit" value="Sign in">
                                    </form>

                                    
                                </div>
                                <div>
                                    <p class="mb-0">Not a member? <a href="UserCreate.jsp" class="text-white-50 ">Create account</a></p>
                                </div>
                                <br>
                                <div>
                                    <p class="mb-0">Admin login? <a href="AdminLogIn.jsp" class="text-white-50 ">Admin</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>