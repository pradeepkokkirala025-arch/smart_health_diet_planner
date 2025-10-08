<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Health Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 25px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #2e7d32;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .gender-container {
            margin-bottom: 15px;
        }
        .gender-container label {
            font-weight: normal;
            margin-right: 20px;
        }
        .gender-container input[type="radio"] {
            vertical-align: middle;
            margin-right: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #2e7d32;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #1b5e20;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Your Health Details</h2>
        <form action="HealthDetails" method="post">
            <label for="age">Age:</label>
            <input type="number" name="age" id="age" required>

            <label for="height">Height (in meters):</label>
            <input type="number" step="0.01" name="height" id="height" required>

            <label for="weight">Weight (in kg):</label>
            <input type="number" step="0.1" name="weight" id="weight" required>

            <div class="gender-container">
                <label>Gender:</label>
                <label>
                    <input type="radio" name="gender" value="Male" required> Male
                </label>
                <label>
                    <input type="radio" name="gender" value="Female" required> Female
                </label>
            </div>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>