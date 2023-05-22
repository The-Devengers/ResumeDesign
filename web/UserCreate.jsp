<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.resume.dbconnection.db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
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
                                    <form id="form" action="<%= request.getContextPath()%>/UserLogIn" method="post" novalidate>
                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Username</label>
                                            <input id="username" type="text" class="form-control form-control-lg" name="newname" >
                                            <div class="usernameMessage"></div>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Email</label>
                                            <input id="email" type="email" class="form-control form-control-lg" name="newemail" >
                                            <div class="message"></div>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Password</label>
                                            <input id="password" type="password" class="form-control form-control-lg" name="newpass" >
                                            <div class="message"></div>
                                            <ul class="mt-4">
                                                <li>Should begin with an uppercase</li>
                                                <li>Should have at least 8 characters</li>
                                                <li>Should have a special character</li>
                                            </ul>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Re-enter password</label>
                                            <input id="password2" type="password" class="form-control form-control-lg" name="password2" >
                                            <div class="message"></div>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Full name</label>
                                            <input id="fullname" type="text" class="form-control form-control-lg" name="newfullname" >
                                            <div class="message"></div>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Address</label>
                                            <input id="address" type="text" class="form-control form-control-lg" name="newaddress" >
                                            <div class="message"></div>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label">Phone number</label>
                                            <input id="phone" type="text" class="form-control form-control-lg" name="newphone" >
                                            <div class="message"></div>
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

        <script>
            const form = document.getElementById('form');
            const username = document.getElementById('username');
            const email = document.getElementById('email');
            const password = document.getElementById('password');
            const password2 = document.getElementById('password2');
            const fullname = document.getElementById('fullname');
            const address = document.getElementById('address');
            const phone = document.getElementById('phone');

            const isValidEmail = email => {
                const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(String(email).toLowerCase());
            };

            form.addEventListener('submit', e => {
                e.preventDefault();
                
                var validate = validateForm();

                if (validate) {
                    form.removeEventListener('submit', e);
                    form.submit();
                }
            });

            const setError = (element, message) => {
                const errorDisplay = element.nextElementSibling;

                errorDisplay.innerText = message;
                errorDisplay.style.color = 'red';

                element.parentElement.classList.add('message');
                element.parentElement.classList.remove('success');
            };

            const setSuccess = (element) => {
                const successDisplay = element.nextElementSibling;

                successDisplay.innerText = 'Valid';
                successDisplay.style.color = 'cyan';

                element.parentElement.classList.add('success');
                element.parentElement.classList.remove('message');
            };



            // Encryption function
            const encrypt = value => {
                const encoder = new TextEncoder();
                const data = encoder.encode(value);
                const encodedValue = window.btoa(String.fromCharCode.apply(null, data));
                return encodedValue;
            };

            // Decryption function
            const decrypt = encodedValue => {
                const decodedData = window.atob(encodedValue);
                const decoder = new TextDecoder();
                const decodedValue = decoder.decode(new Uint8Array(Array.from(decodedData).map(c => c.charCodeAt(0))));
                return decodedValue;
            };

            const storeCookie = (cname, cvalue) => {
                document.cookie = cname + "=" + encrypt(cvalue);
                +";expires=24*24*60";
            };

            const isValidPhone = phone => {
                const phonenum = /^\d{10}$/;
                return phonenum.test(String(phone));
            };
            const ifUserNameExist = username => {
                const usernamelist = [];
            <% try {
                    Connection con = db.getCon();
                    Statement st = con.createStatement();
                    String query = "select username from user";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {%>
                usernamelist.push("<%=rs.getString("username")%>");
            <% }%>
                for (var i = 0; i < usernamelist.length; i++) {
                    if (String(username) === usernamelist[i]) {
                        return false;
                    } else {
                        return true;
                    }
                }
            <%
                } catch (Exception e) {
                }
            %>
            };

            const ifEmailExist = email => {
                const emaillist = [];
            <% try {
                    Connection con = db.getCon();
                    Statement st = con.createStatement();
                    String query = "select email from user";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {%>
                emaillist.push("<%=rs.getString("email")%>");
            <% } %>
                for (var i = 0; i < emaillist.length; i++) {
                    if (String(email) === emaillist[i]) {
                        return false;
                    } else {
                        return true;
                    }
                }
            <%
                } catch (Exception e) {
                }
            %>
            };

            const ifPhoneExist = phone => {
                const phonelist = [];
            <% try {
                    Connection con = db.getCon();
                    Statement st = con.createStatement();
                    String query = "select phone from user";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {%>
                phonelist.push("<%=rs.getString("phone")%>");
            <% }%>
                for (var i = 0; i < phonelist.length; i++) {
                    if (String(phone) === phonelist[i]) {
                        return false;
                    } else {
                        return true;
                    }
                }
            <%
                } catch (Exception e) {
                }
            %>
            };

            const validateForm = (e) => {

                const usernameValue = username.value.trim();
                const emailValue = email.value.trim();
                const passwordValue = password.value.trim();
                const password2Value = password2.value.trim();
                const fullnameValue = fullname.value.trim();
                const addressValue = address.value.trim();
                const phoneValue = phone.value.trim();

                var valid = false;

                if (usernameValue === '') {
                    setError(username, 'Username is required');
                    var valid = false;

                } else if (ifUserNameExist(usernameValue) === false) {
                    setError(username, 'Username already exist');
                    var valid = false;

                } else {
                    setSuccess(username);
                    storeCookie('username', usernameValue);
                }

                if (emailValue === '') {
                    setError(email, 'Email is required');
                    var valid = false;

                } else if (!isValidEmail(emailValue)) {
                    setError(email, 'Provide a valid email address');
                    var valid = false;

                } else if (ifEmailExist(emailValue) === false) {
                    setError(email, 'Email already exist');
                    var valid = false;

                } else {
                    setSuccess(email);
                    storeCookie('email', emailValue);
                }

                if (passwordValue === '') {
                    setError(password, 'Password is required');
                    var valid = false;

                } else if (passwordValue.length < 8) {
                    setError(password, 'Password must be at least 8 characters');
                    var valid = false;

                } else if (!/[A-Z]/.test(passwordValue)) {
                    setError(password, 'Password must start with an uppercase letter');
                    var valid = false;

                } else if (!/[!@#$%^&*]/.test(passwordValue)) {
                    setError(password, 'Password must contain a special character');
                    var valid = false;

                } else {
                    setSuccess(password);
                }

                if (password2Value === '') {
                    setError(password2, 'Please confirm your password');
                    var valid = false;

                } else if (password2Value !== passwordValue) {
                    setError(password2, "Passwords don't match");
                    var valid = false;

                } else {
                    setSuccess(password2);
                    if (passwordValue.length >= 8) {
                        storeCookie('password', passwordValue);
                    } else {
                        setError(password, 'Password must be at least 8 character.');
                        var valid = false;

                    }

                }

                if (fullnameValue === '') {
                    setError(fullname, 'Full name is required');
                    var valid = false;

                } else {
                    setSuccess(fullname);
                    storeCookie('fullname', fullnameValue);
                }

                if (addressValue === '') {
                    setError(address, 'Address is required');
                    var valid = false;

                } else {
                    setSuccess(address);
                    storeCookie('address', addressValue);
                }

                if (phoneValue === '') {
                    setError(phone, 'Phone number is required');
                    var valid = false;

                } else if (!isValidPhone(phoneValue)) {
                    setError(phone, 'Provide a valid phone number');
                    var valid = false;

                } else if (ifPhoneExist(phoneValue) === false) {
                    setError(phone, 'Phone number already exist');
                    var valid = false;

                } else {
                    setSuccess(phone);
                    storeCookie('phone', phoneValue);
                    var valid = true;
                    return valid;
                }
            };



        </script>
    </body>
</html>