<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Admin Login</h1>
        <form>
            <table align="center">
                <tr>
                    <td><label>Admin Username: </label></td>
                    <td><input type="text" id="adname" name="adname" placeholder="Username" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td><label>Admin Password: </label></td>
                    <td><input type="password" id="adpass" name="adpass" placeholder="Password" required></td>
                </tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Sign in"></td>
                </tr>
            </table>
        </form>
    </body>
</html>