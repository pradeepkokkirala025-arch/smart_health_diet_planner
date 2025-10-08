package com.healthplanner;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HealthDetails")
public class HealthDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Read form parameters safely
            String ageStr = request.getParameter("age");
            String heightStr = request.getParameter("height");
            String weightStr = request.getParameter("weight");
            String gender = request.getParameter("gender");

            if (ageStr == null || heightStr == null || weightStr == null || gender == null) {
                response.sendRedirect("healthdetails.jsp?msg=error");
                return;
            }

            int age = Integer.parseInt(ageStr);
            double height = Double.parseDouble(heightStr);
            double weight = Double.parseDouble(weightStr);

            // Calculate BMI
            double bmi = weight / (height * height);

            // Determine BMI category based on gender
            String category;
            if (gender.equalsIgnoreCase("Male")) {
                if (bmi < 20) category = "Underweight";
                else if (bmi <= 25) category = "Normal";
                else if (bmi <= 30) category = "Overweight";
                else category = "Obese";
            } else { // Female
                if (bmi < 19) category = "Underweight";
                else if (bmi <= 24) category = "Normal";
                else if (bmi <= 29) category = "Overweight";
                else category = "Obese";
            }

            // Optional: Insert health data into database
            try (Connection con = DBConnection.getConnection()) {
                String sql = "INSERT INTO health_data(user_id, age, height, weight, activity_level, bmi, category, gender) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, 1); // replace with actual user_id if login implemented
                ps.setInt(2, age);
                ps.setDouble(3, height);
                ps.setDouble(4, weight);
                ps.setString(5, ""); // activity_level not used
                ps.setDouble(6, bmi);
                ps.setString(7, category);
                ps.setString(8, gender);
                ps.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }

            // Forward data to DietPlanServlet
            request.setAttribute("bmi", bmi);
            request.setAttribute("category", category);
            request.setAttribute("gender", gender);
            request.getRequestDispatcher("DietPlanServlet").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("healthdetails.jsp?msg=error");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}