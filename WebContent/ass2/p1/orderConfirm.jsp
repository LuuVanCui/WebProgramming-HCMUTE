<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ass 2 - Order Confirm</title>
</head>
<body>
<%
    double price = 9.95;
    int numberToPurchase = 0;
    double total = 0;
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    if (request.getParameter("numberToPurchase").length() > 0
            && name.length() > 0 && email.length() > 0) {
        numberToPurchase = Integer.parseInt(request.getParameter("numberToPurchase"));
        total = price * numberToPurchase;
    } else {
        String redirectURL = "error.jsp";
        response.sendRedirect(redirectURL);
    }
    %>

    <h1>Order Confirmation</h1>
    <p>Thank you for your order of <%= numberToPurchase %> widgets, <%= name %>.</p>
    <p>At $<%= price %>, your build will be $<%= total %></p>
    <p>You will shortly recieve an email information at <%= email %></p>
</body>
</html>