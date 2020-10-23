<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assignment 2 - Order Form</title>
</head>
<body>
<div class="box">
    <h1>Widget Order Form</h1>
    <form action="orderConfirm.jsp">
        <div class="form-group">
            <label for="numberToPurchase">Number to purchase:</label>
            <input name="numberToPurchase" type="number" class="form-control" id="numberToPurchase" placeholder="Number to purchase">
        </div>
        <div class="form-group">
            <label for="yourName">Your Name:</label>
            <input name="name" type="text" class="form-control" id="yourName" placeholder="Your Name">
        </div>
        <div class="form-group">
            <label for="yourEmail">Your Email:</label>
            <input name="email" type="email" class="form-control" id="yourEmail" placeholder="Your Email">
        </div>
        <button type="submit" class="btn-submit">Submit</button>
    </form>
</div>
</body>
</html>