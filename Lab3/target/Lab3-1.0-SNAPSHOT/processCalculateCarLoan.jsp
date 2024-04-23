<%-- 
    Document   : processCalculateCarLoan
    Created on : 17 Apr 2024, 4:48:37 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Calculate Car Loan</title>
</head>
<body>
    <h1>Perform Car Loan Calculation</h1>
    <h2>Details of car loan</h2>
    <fieldset>
        <% 
            // Define variables
            
            double loanAmount = 0.0;
            int period = 0;
            double totalLoan = 0.0;
            
            // Retrieve data from main form
            String loanAmountStr = request.getParameter("my_loan");
            String periodStr = request.getParameter("period");
            
            // Parse strings to appropriate data types
            if (loanAmountStr != null && !loanAmountStr.isEmpty()) {
                loanAmount = Double.parseDouble(loanAmountStr);
            }
            if (periodStr != null && !periodStr.isEmpty()) {
                period = Integer.parseInt(periodStr);
            }
            
            // Calculate total loan amount (assuming 5% interest rate)
            double interestRate = 0.05; // 5% interest rate
            double interest = loanAmount * interestRate * period;
            totalLoan = loanAmount + interest;
        %>
        
        <!-- Display loan details -->
        <p>Loan Amount: RM<%= loanAmount %></p>
        <p>Period of Payment: <%= period %> years</p> 
        <p>Total Loan (including interest): RM<%= totalLoan %></p>
    </fieldset>
</body>
</html>
