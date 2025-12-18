package com.healthplanner;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(
                     "INSERT INTO users(username,email,password) VALUES(?,?,?)")) {

            ps.setString(1, request.getParameter("username"));
            ps.setString(2, request.getParameter("email"));
            ps.setString(3, request.getParameter("password"));

            int i = ps.executeUpdate();
            if (i > 0) {
                response.sendRedirect("login.jsp?msg=registered");
            } else {
                response.sendRedirect("register.jsp?msg=error");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?msg=error");
        }
    }
}