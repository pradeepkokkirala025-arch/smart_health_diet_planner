<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Log</title>
  <style>
    body {background:#f0fff0; font-family:Arial; display:flex; justify-content:center; align-items:center; height:100vh;}
    .card {background:#fff; padding:30px; border-radius:10px; box-shadow:0 0 10px rgba(0,0,0,0.2);}
    a {color:#4CAF50; text-decoration:none;}
  </style>
</head>
<body>
  <div class="card">
    <h2>Health Logs</h2>
    <p>No logs yet. (You can enhance this later by fetching health_data table)</p>
    <p><a href="healthdetails.jsp">Back</a> | <a href="LogServlet">Logout</a></p>
  </div>
</body>
</html>