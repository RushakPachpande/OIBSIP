<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <script>
        function validateLogin() {
            const username = document.getElementById("username").value.trim();
            const password = document.getElementById("password").value.trim();
            if (username === "" || password === "") {
                alert("Username and Password are required!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h1>Login</h1>
    <form action="login" method="post" onsubmit="return validateLogin();">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Login</button>
    </form>
</body>
</html>