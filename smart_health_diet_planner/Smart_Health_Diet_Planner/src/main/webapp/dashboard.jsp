<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Diet Planner</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 350px; text-align: center; }
        h2 { color: #388e3c; }
        a.button { display: block; margin: 15px 0; padding: 10px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 4px; }
        a.button:hover { background-color: #388e3c; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
        
        <a href="healthDetails.jsp" class="button">Enter Health Details</a>
        <a href="DietPlanServlet" class="button">View Diet Plan</a>
        <a href="LogServlet" class="button">Logout</a>
    </div>
</body>
</html>