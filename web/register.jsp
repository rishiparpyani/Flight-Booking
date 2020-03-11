<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Welcome </title>
    </head>
    <body align="center">
        <h1>Welcome to World Cruise</h1>
        <p>
            Please use the below form to register yourself to start booking your wonderful journey with us.</p>
    <br><br>
        <form method = "post" action = "registeruser">
                <table align="center">
                    <tr>
                        <td>Username:</td>
                        <td> <input type = "text" name = "username"></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type = "password" name = "password"></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type = "email" name = "email"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Register"></td>
                    </tr>
                </table>
            
        </form>
    </body>
</html>