
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>MySQL Connection in JSP</title>
</head>
<body>

    <h1>MySQL Connection in JSP</h1>

    <%-- Display a form with an input field and a submit button --%>
    <form method="post" action="mysql.jsp">
        <input type="text" name="inputData" placeholder="Enter data">
        <input type="submit" value="Submit">
    </form>

</body>
</html>