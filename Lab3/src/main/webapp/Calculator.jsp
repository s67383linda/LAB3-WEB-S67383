<%-- 
    Document   : Calculator
    Created on : 17 Apr 2024, 3:13:16 pm
    Author     : Linda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calculator JSP</title>
  </head>
  <body bgcolor="#e3f7f5" text="black">
   
  <center>
    
    <h2>Basic calculator program in jsp</h2>
    <form method="get" name="f1">   
    <input type="text" size="20" name="operand1" value="" />    
    <select name="op" size="1">
      <option value="0" >+</option>
      <option value="1" >-</option>
      <option value="2" >*</option>
      <option value="3" >/</option>
      <option value="4" >%</option>
    </select>
     
    <input type="text" size="20" name="operand2" value="" />      <p><br><br><br><br>
      <input type="submit" value="Calculate" />
      
   
    <%-- Only display result after form submission --%>
    <%  
        String num1 = request.getParameter("operand1");
        String num2 = request.getParameter("operand2");
        int result = 0;
        String op = "+";

        if (request.getParameter("op")!=null) {
            op = request.getParameter("op");
            char opchar = op.charAt(0);

            if (num1 != null && num2 != null) {  try {
                    result = Integer.parseInt(num1) + (opchar == '0' ? Integer.parseInt(num2) : 
                                                         (opchar == '1' ? -Integer.parseInt(num2) : 
                                                          (opchar == '2' ? Integer.parseInt(num1) * Integer.parseInt(num2) : 
                                                           (opchar == '3' ? Integer.parseInt(num1) / Integer.parseInt(num2) : 
                                                            Integer.parseInt(num1) % Integer.parseInt(num2)))));
                } catch (NumberFormatException e) {
                    // Handle invalid input (e.g., non-numeric characters)
                    out.println("<p>Error: Invalid input. Please enter numbers only.</p>");
                }
            }
        }
    %>
    
    <% if (request.getParameter("op") != null) { %>  Result = <%= result %>
    <% } %>
    
  </form>
  </body>
   
</html>
