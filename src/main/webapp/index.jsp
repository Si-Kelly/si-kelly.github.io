<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jakarta Servlet Web Application</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to Jakarta Servlet 6.0</h1>
            <p class="subtitle">A simple web application for Tomcat 10+</p>
        </header>

        <main>
            <div class="card">
                <h2>Enter Your Name</h2>
                <form action="welcome" method="get">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                    <button type="submit" class="btn">Submit</button>
                </form>
            </div>

            <div class="info-section">
                <h3>About This Application</h3>
                <ul>
                    <li>Built with Jakarta Servlet 6.0</li>
                    <li>Uses JavaServer Pages (JSP)</li>
                    <li>Compatible with Tomcat 10+</li>
                    <li>No Spring or other frameworks required</li>
                </ul>
            </div>
        </main>

        <footer>
            <p>&copy; 2025 Simple Jakarta Servlet Application</p>
        </footer>
    </div>
</body>
</html>
