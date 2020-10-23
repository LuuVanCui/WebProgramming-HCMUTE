<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result - Ass2</title>
</head>
<body>
<%
    String processor = (String)request.getAttribute("processor");
	String access = (String)request.getAttribute("access");
%>

<h1>Order summary:</h1>
    <table style="border: 1px solid black">
        <tr>
            <td>Processor: </td>
            <td> <%= processor %> </td>
        </tr>
        <tr>
            <td>
                Accessories:
            </td>
            <td>
                <%= access %>
            </td>
        </tr>
    </table>
</body>
</html>
