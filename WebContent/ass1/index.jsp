<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assignment 1</title>
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
        .container {
            width: 100%;
            min-height: 100vh;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 15px;
        }
        .box {
            width: 790px;
            background: grey;
            border-radius: 10px;
            overflow: hidden;
            padding: 72px 55px 90px 55px;
            background: linear-gradient(45deg, rgba(115, 126, 96, 0.8), rgba(105, 70, 69, 0.8));
        }
        form {
            width: 100%;
            display: flex;
            font-size: 30px;
            opacity: 1;
        }
        label {
            margin-right: 5px;
            color: white;
        }
        .txtbox {
            width: 60%;
            margin-right: 2px;
            border: none;
            border-radius: 3px;
        }
        .btn {
            width: 30%;
            border: none;
            border-radius: 3px;
            background-color: olivedrab;
            font-weight: lighter;
            color: white;
        }
        .btn:hover {
            cursor: pointer;
            background-color: rgb(58, 75, 25);;
        }
    </style>
</head>
<body>
	<div class="container">
        <div class="box">
            <form name="purchaseform" method="get" action="res.jsp" >
                <label for="quantity">Quantity: </label>
                <input class="txtbox" type="number" id="quantity" min="1" size="8" name="quantity" />
                <br />
                <input class="btn" type="submit" value="Submit" />
            </form>
        </div>
    </div>
</body>
</html>