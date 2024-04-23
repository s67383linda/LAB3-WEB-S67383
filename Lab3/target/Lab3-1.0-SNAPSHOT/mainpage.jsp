
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
</head>
<body>
    <%@ include file="header.jsp" %>
   
    <h1>Using Java Include directive</h1>
    <p style="font-size: small; color: red;">Java Server Page (JSP) is a technology 
        for controlling the content or appearance of Web pages through the use of servlets, 
        small programs that are specified in the Web page and run on the Web server 
        to modify the Web page before it is sent to the user who requested it.</p>
    
    <%@ include file="footerPage.jsp" %>
</body>
</html>
