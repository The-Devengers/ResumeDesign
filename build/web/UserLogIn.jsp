<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Login</h1>
        <form>
            <table align="center">
                <tr>
                    <td><label>Username: </label></td>
                    <td><input type="text" id="name" name="name" placeholder="Username" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><label>Password: </label></td>
                    <td><input type="password" id="pass" name="pass" placeholder="Password" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Sign in"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td colspan="2" align="center"><label>Not a member? </label><a href="UserCreate.jsp">Create account</a></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td colspan="2" align="center"><label>Admin login? </label><a href="AdminLogIn.jsp">Admin login</a></td>
                </tr>
            </table>
        </form>
    </body>
</html>