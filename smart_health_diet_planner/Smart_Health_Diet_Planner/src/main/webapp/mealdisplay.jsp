<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Meal Plan</title>
    <style>
        body { font-family: Arial; text-align:center; background:#f0f8f5; padding:50px; }
        .container { background:#fff; padding:40px; max-width:700px; margin:auto; border-radius:15px; box-shadow:0 5px 15px rgba(0,0,0,0.1);}
        h1 { color:#2d7a2d; margin-bottom:30px; text-decoration:underline; }
        .info { font-size:28px; margin:10px 0; color:#1b4f1b; font-weight:bold; }
        h2 { color:#145214; margin-top:20px; }
        ul { list-style-type:none; padding:0; }
        li { margin:5px 0; font-size:20px; }
        .back-button a { text-decoration:none; font-size:20px; padding:10px 25px; background:#2d7a2d; color:white; border-radius:10px; display:inline-block; margin-top:30px; }
        .back-button a:hover { background:#145214; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Personalized Meal Plan</h1>
        <div class="info">Body Mass Index: <%= request.getAttribute("bmi") %></div>
        <div class="info">Category: <%= request.getAttribute("category") %></div>
        <div class="info">Diet Type: <%= request.getAttribute("dietType") %></div>

        <h2 style="text-decoration: underline">Breakfast</h2>
        <ul>
        <%
            Map<String, List<String>> breakfast = (Map<String, List<String>>)request.getAttribute("breakfast");
            if (breakfast != null) {
                for (List<String> items : breakfast.values()) {
                    for (String item : items) { out.println("<li>" + item + "</li>"); }
                }
            }
        %>
        
        </ul>

        <h2 style="text-decoration: underline">Lunch</h2>
        <ul>
        <%
            Map<String, List<String>> lunch = (Map<String, List<String>>)request.getAttribute("lunch");
            if (lunch != null) {
                for (List<String> items : lunch.values()) {
                    for (String item : items) { out.println("<li>" + item + "</li>"); }
                }
            }
        %>
        </ul>

        <h2 style="text-decoration: underline">Dinner</h2>
        <ul>
        <%
            Map<String, List<String>> dinner = (Map<String, List<String>>)request.getAttribute("dinner");
            if (dinner != null) {
                for (List<String> items : dinner.values()) {
                    for (String item : items) { out.println("<li>" + item + "</li>"); }
                }
            }
        %>
        </ul>
<br>

<h style=" font-size: 30px; color: #32a842; font-weight:bold; "> ---------- BENCHMARK ---------- </h>
		<style>
.table-box {
  width:90%; 
  margin:30px auto; 
  border-collapse:collapse; 
  font-family:'Segoe UI',sans-serif;
  background:#ffffff; 
  border-radius:12px; 
  overflow:hidden; 
  box-shadow:0 4px 15px rgba(0,0,0,0.1);
  border:1px solid #ddd;
}

.table-box th, .table-box td {
  padding:12px; 
  text-align:center; 
  border:1px solid #ddd;  /* Column lines */
}

.table-box th {
  background:#27ae60; 
  color:#fff; 
  font-size:17px;
}

.table-box tr:hover {
  background:#f6fff8;
}

.table-box a {
  color:#2c7efc; 
  text-decoration:none; 
  font-weight:600;
}

.table-box a:hover {
  color:#16a085;
}

.table-title {
  text-align:center; 
  font-size:24px; 
  margin-top:40px; 
  color:#27ae60;
}
</style>

<!-- Vegetarian Diet -->
<h2 class="table-title">Vegetarian Diet Plan</h2>
<table class="table-box">
<tr><th>Meal</th><th>Food Items</th><th>Key Nutrients</th><th>Health Benefit</th><th>Reference</th></tr>
<tr>
  <td>Breakfast</td>
  <td>Oatmeal, Fruit Salad, Milk</td>
  <td>Fiber, Vitamins, Calcium</td>
  <td>Boosts energy and supports digestion</td>
  <td>
    <a href="https://www.hsph.harvard.edu/nutritionsource/food-features/oats/" target="_blank">Harvard Health (Oats)</a><br><br>
    <a href="https://www.healthline.com/nutrition/healthy-fruit" target="_blank">Healthline (Fruits)</a><br><br>
    <a href="https://www.nhs.uk/live-well/eat-well/milk-and-dairy-nutrition/" target="_blank">NHS (Milk)</a>
  </td>
</tr>
<tr>
  <td>Lunch</td>
  <td>Dal, Rice, Vegetable Curry</td>
  <td>Protein, Carbohydrates, Fiber</td>
  <td>Provides balanced energy and muscle repair</td>
  <td>
    <a href="https://www.nin.res.in/DietaryGuidelinesforNINwebsite.pdf" target="_blank">ICMR–NIN</a><br><br>
    <a href="https://www.healthline.com/nutrition/lentils" target="_blank">Healthline (Dal)</a>
  </td>
</tr>
<tr>
  <td>Dinner</td>
  <td>Chapati, Vegetable Soup, Curd</td>
  <td>Iron, Fiber, Probiotics</td>
  <td>Light meal aiding digestion and gut health</td>
  <td>
    <a href="https://www.mayoclinic.org/healthy-lifestyle/nutrition-and-healthy-eating/expert-answers/yogurt/faq-20058447" target="_blank">Mayo Clinic (Yogurt)</a><br><br>
    <a href="https://www.nhs.uk/live-well/eat-well/the-eatwell-guide/" target="_blank">NHS Eatwell Guide</a>
  </td>
</tr>
</table>

<!-- Non-Vegetarian Diet -->
<h2 class="table-title">Non-Vegetarian Diet Plan</h2>
<table class="table-box">
<tr><th>Meal</th><th>Food Items</th><th>Key Nutrients</th><th>Health Benefit</th><th>Reference</th></tr>
<tr>
  <td>Breakfast</td>
  <td>Eggs, Toast, Orange Juice</td>
  <td>Protein, Vitamins, Carbohydrates</td>
  <td>Supports muscle growth and immunity</td>
  <td>
    <a href="https://www.healthline.com/nutrition/proven-health-benefits-of-eggs" target="_blank">Healthline (Eggs Nutrition & Benefits)</a><br><br>
    <a href="https://www.medicalnewstoday.com/articles/322361" target="_blank">MNT (Orange Juice)</a>
  </td>
</tr>
<tr>
  <td>Lunch</td>
  <td>Grilled Chicken, Rice, Salad</td>
  <td>Protein, Carbohydrates, Fiber</td>
  <td>Boosts energy and maintains lean muscle</td>
  <td>
    <a href="https://www.nhs.uk/live-well/eat-well/meat-nutrition/" target="_blank">NHS (Chicken)</a>
  </td>
</tr>
<tr>
  <td>Dinner</td>
  <td>Fish Curry, Quinoa, Steamed Veggies</td>
  <td>Omega-3, Protein, Fiber</td>
  <td>Promotes heart health and digestion</td>
  <td>
    <a href="https://www.heart.org/en/healthy-living/healthy-eating/eat-smart/fats/fish-and-omega-3-fatty-acids" target="_blank">AHA (Fish)</a>
  </td>
</tr>
</table>

<!-- Both Diet (Veg + Non-Veg) -->
<h2 class="table-title">Combined Diet Plan</h2>
<table class="table-box">
<tr><th>Meal</th><th>Food Items</th><th>Key Nutrients</th><th>Health Benefit</th><th>Reference</th></tr>
<tr>
  <td>Breakfast</td>
  <td>Oatmeal, Eggs, Fruit Juice</td>
  <td>Protein, Fiber, Vitamins</td>
  <td>Balanced start for energy and immunity</td>
  <td>
    <a href="https://www.hsph.harvard.edu/nutritionsource/food-features/oats/" target="_blank">Harvard Health (Oats)</a><br><br>
    <a href="https://www.healthline.com/nutrition/proven-health-benefits-of-eggs" target="_blank">Healthline (Eggs Nutrition & Benefits)</a><br><br>
  </td>
</tr>
<tr>
  <td>Lunch</td>
  <td>Grilled Fish, Lentil Soup, Rice</td>
  <td>Protein, Omega-3, Fiber</td>
  <td>Muscle repair and heart health</td>
  <td>
    <a href="https://www.nhs.uk/live-well/eat-well/fish-nutrition/" target="_blank">NHS (Fish)</a><br><br>
    <a href="https://www.healthline.com/nutrition/lentils" target="_blank">Healthline (Lentils)</a>
  </td>
</tr>
<tr>
  <td>Dinner</td>
  <td>Chicken Curry, Chapati, Veggies</td>
  <td>Protein, Carbs, Vitamins</td>
  <td>Complete balanced light dinner</td>
  <td>
    <a href="https://www.nhs.uk/live-well/eat-well/meat-nutrition/" target="_blank">NHS (Chicken)</a>
  </td>
</tr>
</table>


        <div class="back-button">
            <a href="healthdetails.jsp">Enter New Details</a>
        </div>
    </div>
</body>
</html>