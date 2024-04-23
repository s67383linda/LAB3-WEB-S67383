<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rectangle Area Comparison</title>
</head>
<body>
    <h1>Rectangle Area Comparison</h1>
    <form method="post" action="rectangleResult.jsp">
        <label for="length1">Length of Rectangle 1:</label>
        <input type="text" id="length1" name="length1"><br>
        <label for="width1">Width of Rectangle 1:</label>
        <input type="text" id="width1" name="width1"><br>
        <label for="length2">Length of Rectangle 2:</label>
        <input type="text" id="length2" name="length2"><br>
        <label for="width2">Width of Rectangle 2:</label>
        <input type="text" id="width2" name="width2"><br>
        <input type="submit" value="Compare Areas">
    </form>
</body>
</html>
