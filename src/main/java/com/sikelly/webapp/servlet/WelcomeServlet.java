package com.sikelly.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * A simple servlet that handles welcome page requests.
 * Uses Jakarta Servlet 6.0 API for Tomcat 10+.
 */
public class WelcomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get the name parameter from the request, default to "Guest"
        String name = request.getParameter("name");
        if (name == null || name.trim().isEmpty()) {
            name = "Guest";
        }

        // Set attributes to pass to the JSP
        request.setAttribute("userName", name);
        request.setAttribute("message", "Welcome to Jakarta Servlet 6.0!");

        // Forward to the JSP page
        request.getRequestDispatcher("/WEB-INF/welcome.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
