<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Processing Form Submission</title>
</head>
<body>

<%
    // Retrieve the data submitted from the form
    String inputData = request.getParameter("inputData");

    // Database connection details
    String url = "jdbc:mariadb://172.17.0.3:3306/sumit"; // Replace with your MySQL database URL
    String username = "root"; // Replace with your MySQL username
    String password = "123"; // Replace with your MySQL password

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish a connection to the MySQL database
        Connection conn = DriverManager.getConnection(url, username, password);

        // Perform database operations with the retrieved data
        // For example, you can execute an SQL query or insert data into a table
        // Here, we simply print the input data
        out.println("Input Data: " + inputData);

        // Close the database connection
        conn.close();
    } catch (Exception e) {
        out.println("Database connection error: " + e.getMessage());
    }
%>

</body>
</html>
