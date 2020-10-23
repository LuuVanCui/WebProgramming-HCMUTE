<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ass 4 - Order Confirm</title>
</head>
<body>
<%
    String name = (String)request.getAttribute("name");
    String quantity = (String)request.getAttribute("quantity");
    String price = (String)request.getAttribute("price");
    String total = (String)request.getAttribute("total");
    String email = (String)request.getAttribute("email");
%>

    <h1>Order Confirmation</h1>
    <p>Thank you for your order of <%= quantity %> widgets, <%= name %>.</p>
    <p>At $<%= price %>, your build will be $<%= total %></p>
    <p>You will shortly recieve an email information at <%= email %></p>
</body>
</html>