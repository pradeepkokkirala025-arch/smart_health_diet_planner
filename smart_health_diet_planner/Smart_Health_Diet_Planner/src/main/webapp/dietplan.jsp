<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Diet Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8f5;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        .container {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 40px;
            max-width: 700px;
            margin: auto;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        h1 {
            font-size: 32px;
            font-weight: bold;
            color: #2d7a2d;
            margin-bottom: 50px;
        }
        .bmi, .category, .diet-label, .diet {
            font-size: 24px;
            margin: 25px 0;
        }
        .diet {
            font-weight: bold;
            color: #2d7a2d;
        }
        .back-button a {
            text-decoration: none;
            font-size: 20px;
            padding: 10px 25px;
            background-color: #2d7a2d;
            color: white;
            border-radius: 10px;
            display: inline-block;
            margin-top: 40px;
        }
        .back-button a:hover {
            background-color: #1b4f1b;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Title -->
        <h1 style="text-decoration: underline">Smart Health Diet Planner</h1>
        
        <!-- BMI -->
        <div class="bmi">
            BMI: <%= String.format("%.2f", request.getAttribute("bmi")) %>
        </div>
        
        <!-- Category -->
        <div class="category">
            Category: <%= request.getAttribute("category") %>
        </div>
        
        <!-- Diet Recommendation -->
        <div class="diet-label" style="text-decoration: underline">
            Diet Recommendation:
        </div>
        <div class="diet">
            <%= request.getAttribute("diet") %>
        </div>
        
        <!-- Back button -->
        <div class="back-button">
            <a href="healthdetails.jsp">Enter New Details</a>
        </div>
    </div>
</body>
</html>