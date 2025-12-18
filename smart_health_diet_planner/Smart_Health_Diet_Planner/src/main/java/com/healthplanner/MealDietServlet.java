package com.healthplanner;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/MealDietServlet")
public class MealDietServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("category");
        String dietType = request.getParameter("dietType");
        String bmi = request.getParameter("bmi");

        Map<String, List<String>> breakfast = new LinkedHashMap<>();
        Map<String, List<String>> lunch = new LinkedHashMap<>();
        Map<String, List<String>> dinner = new LinkedHashMap<>();

        // Sample items based on diet type
        if (dietType.equalsIgnoreCase("Veg") || dietType.equalsIgnoreCase("Both")) {
            breakfast.put("Veg", Arrays.asList("Oatmeal", "Fruit Salad", "Milk"));
            lunch.put("Veg", Arrays.asList("Dal", "Rice", "Vegetable Curry"));
            dinner.put("Veg", Arrays.asList("Chapati", "Vegetable Soup", "Curd"));
        }
        
        if (dietType.equalsIgnoreCase("NonVeg") || dietType.equalsIgnoreCase("Both")) {
            breakfast.put("NonVeg", Arrays.asList("Eggs", "Toast", "Juice"));
            lunch.put("NonVeg", Arrays.asList("Grilled Chicken", "Rice", "Salad"));
            dinner.put("NonVeg", Arrays.asList("Fish Curry", "Chapati", "Yogurt"));
        }

        request.setAttribute("bmi", bmi);
        request.setAttribute("category", category);
        request.setAttribute("dietType", dietType);
        request.setAttribute("breakfast", breakfast);
        request.setAttribute("lunch", lunch);
        request.setAttribute("dinner", dinner);

        // Forward to MealDisplay.jsp
        RequestDispatcher rd = request.getRequestDispatcher("mealdisplay.jsp");
        rd.forward(request, response);
    }
}