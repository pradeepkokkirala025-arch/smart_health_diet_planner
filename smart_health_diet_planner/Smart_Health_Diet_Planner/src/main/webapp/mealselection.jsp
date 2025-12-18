<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Meal Selection</title>
    <style>
        body { font-family: Arial; text-align:center; background:#f0f8f5; padding:50px; }
        .container { background:#fff; padding:40px; max-width:600px; margin:auto; border-radius:15px; box-shadow:0 5px 15px rgba(0,0,0,0.1);}
        h1 { color:#2d7a2d; margin-bottom:30px; text-decoration:underline; }
        .info { font-size:28px; margin:15px 0; color:#1b4f1b; font-weight:bold; }
        .buttons input { font-size:22px; padding:10px 25px; margin:10px; border:none; border-radius:10px; background:#2d7a2d; color:white; cursor:pointer; }
        .buttons input:hover { background:#145214; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Smart Health Diet Planner</h1>
        <div class="info">Body Mass Index: <%= request.getAttribute("bmi") %></div>
        <div class="info">Category: <%= request.getAttribute("category") %></div>
        <p style="text-decoration: underline">Select your preferred diet type:</p>

        <form action="MealDietServlet" method="post" class="buttons">
            <input type="hidden" name="bmi" value="<%= request.getAttribute("bmi") %>">
            <input type="hidden" name="category" value="<%= request.getAttribute("category") %>">
            <input type="submit" name="dietType" value="Veg">
            <input type="submit" name="dietType" value="NonVeg">
            <input type="submit" name="dietType" value="Both">
        </form>
    </div>
</body>
</html>