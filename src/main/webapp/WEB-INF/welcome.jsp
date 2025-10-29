<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome, <c:out value="${userName}"/>!</h1>
            <p class="subtitle"><c:out value="${message}"/></p>
        </header>

        <main>
            <div class="card">
                <h2>Request Information</h2>
                <table class="info-table">
                    <tr>
                        <td><strong>User Name:</strong></td>
                        <td><c:out value="${userName}"/></td>
                    </tr>
                    <tr>
                        <td><strong>Session ID:</strong></td>
                        <td><%= request.getSession().getId() %></td>
                    </tr>
                    <tr>
                        <td><strong>Request Method:</strong></td>
                        <td><%= request.getMethod() %></td>
                    </tr>
                    <tr>
                        <td><strong>Request URI:</strong></td>
                        <td><%= request.getRequestURI() %></td>
                    </tr>
                    <tr>
                        <td><strong>Server Info:</strong></td>
                        <td><%= application.getServerInfo() %></td>
                    </tr>
                </table>
            </div>

            <div class="button-group">
                <a href="<%= request.getContextPath() %>/" class="btn">Back to Home</a>
                <a href="<%= request.getContextPath() %>/welcome?name=<%= URLEncoder.encode((String) request.getAttribute("userName"), "UTF-8") %>" class="btn btn-secondary">Refresh</a>
            </div>
        </main>

        <footer>
            <p>&copy; 2025 Simple Jakarta Servlet Application</p>
        </footer>
    </div>
</body>
</html>
