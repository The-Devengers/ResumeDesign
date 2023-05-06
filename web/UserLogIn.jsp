<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="p-3 mb-2 bg-secondary text-white">
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                  <div class="card bg-dark text-white" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">

                      <div class="mb-md-5 mt-md-4 pb-5">

                        <h2 class="fw-bold mb-2 text-uppercase">Log in</h2>
                        <br>
                        <form>
                        <div class="form-outline form-white mb-4">
                          <label class="form-label">Username</label>
                          <input type="text" class="form-control form-control-lg" name="name" required>
                        </div>

                        <div class="form-outline form-white mb-4">
                          <label class="form-label">Password</label>
                          <input type="password" class="form-control form-control-lg" name="pass" required>
                        </div>
                        
                        <input class="btn btn-outline-light btn-lg px-5" type="submit" value="Sign in">
                        </form>
                      </div>
                        <div>
                            <p class="mb-0">Not a member?<a href="UserCreate.jsp" class="text-white-50 fw-bold">Create account</a></p>
                        </div>
                        <br>
                        <div>
                            <p class="mb-0">Admin login?<a href="AdminLogIn.jsp" class="text-white-50 fw-bold">Create account</a></p>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
    </body>
</html>