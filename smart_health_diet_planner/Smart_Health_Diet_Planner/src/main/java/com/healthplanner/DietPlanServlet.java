package com.healthplanner;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DietPlanServlet")
public class DietPlanServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Get attributes from HealthDetails
            Object bmiObj = request.getAttribute("bmi");
            Object categoryObj = request.getAttribute("category");
            Object genderObj = request.getAttribute("gender");

            if (bmiObj == null || categoryObj == null || genderObj == null) {
                response.sendRedirect("healthdetails.jsp?msg=error");
                return;
            }

            double bmi = (double) bmiObj;
            String category = (String) categoryObj;
            String gender = (String) genderObj;

            // Determine diet recommendation
            String diet;
            switch (category) {
                case "Underweight":
                    diet = "Nuts, Milk, Eggs, Peanut Butter, Rice, Chicken, Bananas.";
                    break;
                case "Normal":
                    diet = "You are in perfect weight - Maintain your diet and exercise.";
                    break;
                case "Overweight":
                case "Obese":
                    diet = "Vegetables, Salads, Lean Protein, Fruits, Low-fat Dairy.";
                    break;
                default:
                    diet = "Eat a balanced diet.";
            }

            // Set attributes for JSP
            request.setAttribute("bmi", bmi);
            request.setAttribute("category", category);
            request.setAttribute("diet", diet);

            // Forward to dietplan.jsp
            request.getRequestDispatcher("dietplan.jsp").forward(request, response);

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