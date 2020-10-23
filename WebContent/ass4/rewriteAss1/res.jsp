<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
    <style>
        body {
            height: 100%;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            margin: 0;
            padding: 0;
            background-image: url('https://images.unsplash.com/photo-1440744147460-3236ece72dcb?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80');
            background-repeat: no-repeat;
            background-size: cover;
        }
        h1 {
            color: white;
        }
    </style>
</head>
<body>
	<h1>Thank you for your order of <%=request.getParameter("quantity")%> widgets!</h1>
</body>
</html>