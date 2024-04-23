<%-- 
    Document   : memberProcessing
    Created on : 17 Apr 2024, 2:57:51 pm
    Author     : Linda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lab 3 - Task 1</title>
</head>
<body>
    <h1>Passing data from main JSP's page to other JSP's page</h1>
    
    <fieldset>
        <% 
            // Define variables
            String myIC = null;
            String myName = null;
            
            // Use request.getParameter() method to retrieve data from main's form
            myIC = request.getParameter("my_icno");
            myName = request.getParameter("my_name");
           
        %>
            <!-- Display the output -->
            <p>Thank you for registering in this event..!</p>
            <p>This is your details;</p>
            <p>IC No : <%= myIC %></p>
            <p>Name : <%= myName %></p> 
       
    </fieldset>
</body>
</html>