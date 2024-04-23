<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rectangle Area Comparison Result</title>
</head>
<body>
    <h1>Rectangle Area Comparison Result</h1>
    <%-- Retrieve lengths and widths of rectangles from the form --%>
    <% double length1 = Double.parseDouble(request.getParameter("length1"));
       double width1 = Double.parseDouble(request.getParameter("width1"));
       double length2 = Double.parseDouble(request.getParameter("length2"));
       double width2 = Double.parseDouble(request.getParameter("width2"));
       
       // Calculate areas of rectangles
       double area1 = length1 * width1;
       double area2 = length2 * width2;
       
       // Compare areas
       String comparisonResult;
       if (area1 > area2) {
           comparisonResult = "Rectangle 1 has a greater area.";
       } else if (area2 > area1) {
           comparisonResult = "Rectangle 2 has a greater area.";
       } else {
           comparisonResult = "Both rectangles have the same area.";
       }
    %>
    <p>Area of Rectangle 1: <%= String.format("%.2f", area1) %> square units</p>
    <p>Area of Rectangle 2: <%= String.format("%.2f", area2) %> square units</p>
    <p><%= comparisonResult %></p>
</body>
</html>
