<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            font-size: 32px;
            color: #2d7a2d;
            margin-bottom: 40px;
        }
        label {
            display: block;
            font-size: 18px;
            margin: 15px 0 5px;
            text-align: left;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            font-size: 22px;
            padding: 10px 20px;
            background-color: #2d7a2d;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #1b4f1b;
        }
        .register-link {
            margin-top: 20px;
            font-size: 18px;
        }
        .register-link a {
            color: #2d7a2d;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
        .error-msg {
            color: red;
            font-size: 18px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 style="text-decoration: underline">Smart Health Diet Planner</h1>
        
        <!-- Display error message if login failed -->
        <% if(request.getAttribute("msg") != null){ %>
            <div class="error-msg"><%= request.getAttribute("msg") %></div>
        <% } %>
        
        <form action="LoginServlet" method="post">
            <label for="email">Email:</label>
            <input type="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>
        
        <div class="register-link">
            Don't have an account? <a href="register.jsp">Register</a>
        </div>
    </div>
</body>
</html>