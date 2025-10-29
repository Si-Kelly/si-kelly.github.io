# Simple Jakarta Servlet Web Application

A simple Java web application using Jakarta Servlet 6.0 and JSPs, suitable for deploying to Tomcat 10+ without Spring or any framework.

## Features

- ✅ Jakarta Servlet 6.0 API
- ✅ JavaServer Pages (JSP)
- ✅ JSTL Support
- ✅ No frameworks (no Spring, no Struts, etc.)
- ✅ Compatible with Tomcat 10+
- ✅ Maven build system
- ✅ Responsive UI with CSS styling

## Prerequisites

- **Java Development Kit (JDK)**: 11 or higher
- **Apache Maven**: 3.6 or higher
- **Apache Tomcat**: 10.0 or higher (for Jakarta EE 9+)

## Project Structure

```
.
├── pom.xml                                    # Maven configuration
├── src/
│   └── main/
│       ├── java/
│       │   └── com/sikelly/webapp/servlet/
│       │       └── WelcomeServlet.java       # Example servlet
│       └── webapp/
│           ├── css/
│           │   └── style.css                  # Application styles
│           ├── WEB-INF/
│           │   ├── web.xml                    # Deployment descriptor
│           │   └── welcome.jsp                # Protected JSP page
│           └── index.jsp                      # Landing page
└── README.md
```

## Building the Application

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Si-Kelly/si-kelly.github.io.git
   cd si-kelly.github.io
   ```

2. **Build the WAR file**:
   ```bash
   mvn clean package
   ```

   This will create a `webapp.war` file in the `target/` directory.

## Deploying to Tomcat

### Method 1: Manual Deployment

1. Copy the WAR file to Tomcat's webapps directory:
   ```bash
   cp target/webapp.war $CATALINA_HOME/webapps/
   ```

2. Start Tomcat:
   ```bash
   $CATALINA_HOME/bin/startup.sh    # Linux/Mac
   $CATALINA_HOME/bin/startup.bat   # Windows
   ```

3. Access the application:
   ```
   http://localhost:8080/webapp/
   ```

### Method 2: Using Maven Tomcat Plugin

1. Add your Tomcat credentials to `~/.m2/settings.xml`:
   ```xml
   <settings>
     <servers>
       <server>
         <id>TomcatServer</id>
         <username>admin</username>
         <password>password</password>
       </server>
     </servers>
   </settings>
   ```

2. Deploy using Maven:
   ```bash
   mvn tomcat7:deploy
   ```

## Application Features

### Home Page (index.jsp)
- Simple form to collect user input
- Responsive design
- Submit form to servlet

### Welcome Servlet
- Processes GET and POST requests
- Handles form data
- Forwards to welcome page with attributes

### Welcome Page (welcome.jsp)
- Displays personalized greeting
- Shows request information
- Demonstrates session management

## Development

### Running in Development Mode

You can use Maven to compile and package changes:

```bash
# Clean and compile
mvn clean compile

# Run tests (if any)
mvn test

# Package as WAR
mvn package
```

### Viewing Logs

Check Tomcat logs for application output:
```bash
tail -f $CATALINA_HOME/logs/catalina.out
```

## Technology Stack

- **Jakarta Servlet API 6.0**: Core servlet functionality
- **Jakarta Server Pages 3.1**: Dynamic web pages
- **JSTL 3.0**: JSP Standard Tag Library
- **Maven 3**: Build and dependency management
- **Java 11**: Programming language

## Why Jakarta EE 9+?

Jakarta EE 9+ (including Servlet 6.0) uses the `jakarta.*` namespace instead of `javax.*`. This is important because:

- Tomcat 10+ requires Jakarta EE 9+
- The namespace change is mandatory
- Older `javax.*` code won't work on Tomcat 10+

## Tomcat Version Compatibility

- **Tomcat 10.0.x**: Jakarta EE 9 (Servlet 5.0, JSP 3.0)
- **Tomcat 10.1.x**: Jakarta EE 10 (Servlet 6.0, JSP 3.1)
- **Tomcat 11.x**: Jakarta EE 11 (Servlet 6.1)

This application is designed for Tomcat 10.1+ with full Jakarta EE 10 support.

## License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details.