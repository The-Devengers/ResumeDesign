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
                            <a class="nav-link active" aria-current="page" href="#">Blog</a>
                        </li>

                    </ul>

                    <%
                        String phone = request.getParameter("phone");
                        String username = request.getParameter("name");
                        String email = request.getParameter("email");
                        String gender = request.getParameter("gender");
                        String fullname = request.getParameter("fullname");
                        String address = request.getParameter("address");
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
                                    <div class="col-sm-3">
                                        <button id="edit1" class="btn btn-outline-primary me-5">edit</button>
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
                                    <div class="col-sm-3">
                                        <button id="edit2" class="btn btn-outline-primary me-5">edit</button>
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
                                    <div class="col-sm-3">
                                        <button id="edit3" class="btn btn-outline-primary me-5">edit</button>
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
                                    <div class="col-sm-3">
                                        <button id="edit4" class="btn btn-outline-primary me-5">edit</button>
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
                                    <div class="col-sm-3">
                                        <button id="edit5" class="btn btn-outline-primary me-5">edit</button>
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
                                    <div class="col-sm-3">
                                        <button id="edit6" class="btn btn-outline-primary me-5">edit</button>
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
    </body>
    <script>
        // Get a reference to the button element
        var button = document.getElementById('createresume');
        var edit1 = document.getElementById('edit1');
        const container1 = document.getElementById('container1');
        var edit2 = document.getElementById('edit2');
        const container2 = document.getElementById('container2');
        var edit3 = document.getElementById('edit3');
        const container3 = document.getElementById('container3');
        var edit4 = document.getElementById('edit4');
        const container4 = document.getElementById('container4');
        var edit5 = document.getElementById('edit5');
        const container5 = document.getElementById('container5');
        var edit6 = document.getElementById('edit6');
        const container6 = document.getElementById('container6');

        // Add a click event listener to the button
        button.addEventListener('click', function () {
            // Redirect to the new .jsp page
            window.location.href = 'http://localhost:8080/ResumeDesign/ResumeForm.jsp?name=<%= username%>';
        });

        edit1.addEventListener('click', function () {
            // Redirect to the new .jsp page
            document.getElementById('uname').remove();
            let input1 = document.createElement('input');
            input1.name = 'username';
            container1.appendChild(input1);
        });

        edit2.addEventListener('click', function () {
            // Redirect to the new .jsp page
            document.getElementById('fname').remove();
            let input2 = document.createElement('input');
            input2.name = 'fullname';
            container2.appendChild(input2);
        });

        edit3.addEventListener('click', function () {
            // Redirect to the new .jsp page
            document.getElementById('gen').remove();
            let input3 = document.createElement('input');
            input3.name = 'gender';
            container3.appendChild(input3);
        });

        edit4.addEventListener('click', function () {
            // Redirect to the new .jsp page
            document.getElementById('mail').remove();
            let input4 = document.createElement('input');
            input4.name = 'email';
            container4.appendChild(input4);
        });

        edit5.addEventListener('click', function () {
            // Redirect to the new .jsp page
            document.getElementById('pnum').remove();
            let input5 = document.createElement('input');
            input5.name = 'phone';
            container5.appendChild(input5);
        });

        edit6.addEventListener('click', function () {
            // Redirect to the new .jsp page
            document.getElementById('add').remove();
            let input6 = document.createElement('input');
            input6.name = 'address';
            container6.appendChild(input6);
        });
    </script>
=======
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
              <div id="buttoncontainer1" class="col-sm-3">
                <button id="edit1" class="btn btn-outline-primary me-5">edit</button>
              </div>
            </div>
              <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div id="container2" class="col-sm-6">
                  <%
                      if (fullname != null){
                      %>
                <p id="fname" class="text-muted mb-0"><%= fullname%></p>     
                    <%  }else {%>
                <p id="fname" class="text-muted mb-0">Full name</p>    
                   <% }%>
              </div>
              <div id="buttoncontainer2" class="col-sm-3">
                <button id="edit2" class="btn btn-outline-primary me-5">edit</button>
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
              <div id="buttoncontainer3" class="col-sm-3">
                <button id="edit3" class="btn btn-outline-primary me-5">edit</button>
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
              <div id="buttoncontainer4" class="col-sm-3">
                <button id="edit4" class="btn btn-outline-primary me-5">edit</button>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone number</p>
              </div>
              <div id="container5" class="col-sm-6">
                  <%
                      if (phone != null){
                      %>
                <p id="pnum" class="text-muted mb-0"><%= phone%></p>     
                    <%  }else {%>
                <p id="pnum" class="text-muted mb-0">Phone number</p>    
                   <% }%>
              </div>
              <div id="buttoncontainer5" class="col-sm-3">
                <button id="edit5" class="btn btn-outline-primary me-5">edit</button>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Address</p>
              </div>
              <div id="container6" class="col-sm-6">
                  <%
                      if (address != null){
                      %>
                <p id="add" class="text-muted mb-0"><%= address%></p>      
                    <%  }else {%>
                <p id="add" class="text-muted mb-0">Address</p>    
                   <% }%>
              </div>
              <div id="buttoncontainer6" class="col-sm-3">
                <button id="edit6" class="btn btn-outline-primary me-5">edit</button>
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
    </body>
    <script>
            // Get a reference to the button element
            var button = document.getElementById('createresume');
            var edit1 = document.getElementById('edit1');
            var edit2 = document.getElementById('edit2');
            var edit3 = document.getElementById('edit3');
            var edit4 = document.getElementById('edit4');
            var edit5 = document.getElementById('edit5');
            var edit6 = document.getElementById('edit6');
            
            const container1 = document.getElementById('container1');
            const container2 = document.getElementById('container2');
            const container3 = document.getElementById('container3');
            const container4 = document.getElementById('container4');
            const container5 = document.getElementById('container5');
            const container6 = document.getElementById('container6');
            
            const buttoncontainer1 = document.getElementById('buttoncontainer1');
            const buttoncontainer2 = document.getElementById('buttoncontainer2');
            const buttoncontainer3 = document.getElementById('buttoncontainer3');
            const buttoncontainer4 = document.getElementById('buttoncontainer4');
            const buttoncontainer5 = document.getElementById('buttoncontainer5');
            const buttoncontainer6 = document.getElementById('buttoncontainer6');
            
            // Add a click event listener to the button
            button.addEventListener('click', function () {
                // Redirect to the new .jsp page
                window.location.href = 'http://localhost:8080/ResumeDesign/ResumeForm.jsp?name=<%= username%>';
            });
            
            edit1.addEventListener('click', function () {
                // Redirect to the new .jsp page
                document.getElementById('uname').remove();
                document.getElementById('edit1').remove();
                document.getElementById('edit2').remove();
                document.getElementById('edit3').remove();
                document.getElementById('edit4').remove();
                document.getElementById('edit5').remove();
                document.getElementById('edit6').remove();
                let input1 = document.createElement('input');
                input1.id = 'newusername';
                let editbutton1 = document.createElement('button');
                editbutton1.innerHTML = 'finish edit';
                editbutton1.className = 'btn btn-outline-primary me-5';
                editbutton1.addEventListener('click', function () {
                    var newusername = document.getElementById('newusername');
                    window.location.replace('EditUName.jsp?newusername=' + newusername.value + '&fullname=<%= fullname%>&name=<%= username%>&email=<%= email%>&gender=<%= gender%>&phone=<%= phone%>&address=<%= address%>');
                });
                container1.appendChild(input1);
                buttoncontainer1.appendChild(editbutton1);
            });
            
            edit2.addEventListener('click', function () {
                // Redirect to the new .jsp page
                document.getElementById('fname').remove();
                document.getElementById('edit1').remove();
                document.getElementById('edit2').remove();
                document.getElementById('edit3').remove();
                document.getElementById('edit4').remove();
                document.getElementById('edit5').remove();
                document.getElementById('edit6').remove();
                let input2 = document.createElement('input');
                input2.id = 'newfullname';
                container2.appendChild(input2);
            });
            
            edit3.addEventListener('click', function () {
                // Redirect to the new .jsp page
                document.getElementById('gen').remove();
                document.getElementById('edit1').remove();
                document.getElementById('edit2').remove();
                document.getElementById('edit3').remove();
                document.getElementById('edit4').remove();
                document.getElementById('edit5').remove();
                document.getElementById('edit6').remove();
                let input3 = document.createElement('input');
                input3.id = 'newgender';
                container3.appendChild(input3);
            });
            
            edit4.addEventListener('click', function () {
                // Redirect to the new .jsp page
                document.getElementById('mail').remove();
                document.getElementById('edit1').remove();
                document.getElementById('edit2').remove();
                document.getElementById('edit3').remove();
                document.getElementById('edit4').remove();
                document.getElementById('edit5').remove();
                document.getElementById('edit6').remove();
                let input4 = document.createElement('input');
                input4.id = 'newemail';
                container4.appendChild(input4);
            });
            
            edit5.addEventListener('click', function () {
                // Redirect to the new .jsp page
                document.getElementById('pnum').remove();
                document.getElementById('edit1').remove();
                document.getElementById('edit2').remove();
                document.getElementById('edit3').remove();
                document.getElementById('edit4').remove();
                document.getElementById('edit5').remove();
                document.getElementById('edit6').remove();
                let input5 = document.createElement('input');
                input5.id = 'newphone';
                container5.appendChild(input5);
            });
            
            edit6.addEventListener('click', function () {
                // Redirect to the new .jsp page
                document.getElementById('add').remove();
                document.getElementById('edit1').remove();
                document.getElementById('edit2').remove();
                document.getElementById('edit3').remove();
                document.getElementById('edit4').remove();
                document.getElementById('edit5').remove();
                document.getElementById('edit6').remove();
                let input6 = document.createElement('input');
                input6.id = 'newaddress';
                container6.appendChild(input6);
            });
        </script>
</html>
