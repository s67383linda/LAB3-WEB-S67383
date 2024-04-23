<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Temperature Conversion</title>
</head>
<body>
    <h1>Temperature Conversion</h1>
    <form method="post" action="temperatureResult.jsp">
        <label for="celsius">Enter temperature in Celsius:</label>
        <input type="text" id="celsius" name="celsius">
        <input type="submit" value="Convert to Fahrenheit">
    </form>
</body>
</html>
