<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Temperature Conversion Result</title>
</head>
<body>
    <h1>Temperature Conversion Result</h1>
    <%-- Retrieve temperature in Celsius from the form --%>
    <% String celsiusStr = request.getParameter("celsius");
       double celsius = Double.parseDouble(celsiusStr);
       
       // Convert Celsius to Fahrenheit using the formula
       double fahrenheit = (9.0 / 5.0) * celsius + 32.0;
    %>
    <p><%= String.format("Temperature in Celsius: %.2f°C", celsius) %></p>
    <p><%= String.format("Temperature in Fahrenheit: %.2f°F", fahrenheit) %></p>
</body>
</html>
