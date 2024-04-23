<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calculate Car Loan</title>
</head>
<body>
    <h1>Perform Car Loan Calculation</h1>
    <form id="calculateCarLoanFrm" action="processCalculateCarLoan.jsp" method="post" onsubmit="return checkICNo()">
        <fieldset>
            <legend>Loan Calculation</legend>
            <label for="loan">Loan Amount *</label>
            <input type="text" id="loan" name="my_loan" size="15" placeholder="E.g. 10000"><br/>
                        
            <label for="period">Period</label>
            <select name="period" size="1">
                <option value="1">1 year</option>
                <option value="2">2 years</option>
                <option value="3">3 years</option>
                <option value="4">4 years</option>
                <option value="5">5 years</option>
                <option value="6">6 years</option>
                <option value="7">7 years</option>
                <option value="8">8 years</option>
                <option value="9">9 years</option>
                <option value="10">10 years</option>
            </select>       
            <p>
                <input type="submit" id="btnSubmit" value="Submit"/>
                <input type="reset" id="btnCancel" value="Cancel"/>
            </p>
        </fieldset>
    </form>
</body>
<footer>&copy; 2024-Linda</footer>
</html>
