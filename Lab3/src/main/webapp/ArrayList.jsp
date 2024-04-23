<%-- 
    Document   : ArrayList
    Created on : 17 Apr 2024, 3:58:39 pm
    Author     : Linda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Use Java ArrayList</title>
</head>
<body>
    <h1>Use JSP Page Directive</h1>
    <% 
        // Create ArrayList object...
        ArrayList<String> studentList = new ArrayList<String>();
        
        // Store student names...
        studentList.add(0, "Mohamad Azam");
        studentList.add(1, "Peter Chong");
        studentList.add(2, "Rahimah Mansor");
        studentList.add(3, "Sri Devi");
        studentList.add(4, "Ng Hue Ween");
        studentList.add(5, "S.Nagarajan");
        
        // Display the number of records...
        out.println("<p style='color: blue;'>The number of records in ArrayList are " + studentList.size() + "</p>");
        
        // Populate a list of students...
        for (int i = 0; i < studentList.size(); i++) {
            out.println("<p style='color: blue;'>Record " + (i * 2) + " is " + studentList.get(i) + "</p>");
        }
    %>
    <footer>&copy; 2024-Linda</footer>
</body>
</html>
