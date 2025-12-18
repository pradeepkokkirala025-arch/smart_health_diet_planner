package com.healthplanner;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/HealthDetails")
public class HealthDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int age = Integer.parseInt(request.getParameter("age"));
            double height = Double.parseDouble(request.getParameter("height")); // in cm
            double weight = Double.parseDouble(request.getParameter("weight")); // in kg
            String gender = request.getParameter("gender");

            // Correct BMI calculation and format to 2 decimals
            double heightInMeters = height / 100.0;
            double bmiValue = weight / (heightInMeters * heightInMeters);
            String bmi = String.format("%.2f", bmiValue);

            // Determine category
            String category;
            double bmiNum = Double.parseDouble(bmi);
            if (bmiNum < 18.5) category = "Underweight";
            else if (bmiNum < 24.9) category = "Normal weight";
            else if (bmiNum < 29.9) category = "Overweight";
            else category = "Obese";

            // Pass to JSP
            request.setAttribute("bmi", bmi);
            request.setAttribute("category", category);
            request.setAttribute("age", age);
            request.setAttribute("gender", gender);

            // Forward to MealSelection.jsp
            RequestDispatcher rd = request.getRequestDispatcher("mealselection.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("healthdetails.jsp?msg=error");
        }
    }
}