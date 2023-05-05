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
                    <td><label>Enter Username: </label></td>
                    <td><input type="text" id="newname" name="newname" placeholder="Username" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><label>Enter Password: </label></td>
                    <td><input type="password" id="newpass" name="newpass" placeholder="Password" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><label>Enter Email: </label></td>
                    <td><input type="email" id="newmail" name="newmail" placeholder="example@gmail.com" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><label>Gender: </label></td>
                    <td>
                        <input type="radio" id="Male" name="gender" value="Male">Male
                        <input type="radio" id="Female" name="gender" value="Female">Female
                    </td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Sign up"></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td colspan="2" align="center"><label>Already a member? </label><a href="UserLogIn.jsp">Login</a></td>
                </tr>
            </table>
        </form>
    </body>
</html>