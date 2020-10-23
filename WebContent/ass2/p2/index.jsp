<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ass2 - P2</title>
</head>
<body>
    <form action="result.jsp">
        <table style="border: 1px solid black">
            <tr>
                <th>Process</th>
                <th>Accessories</th>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="processor" id="celeron" value="Celeron D">
                    <label for="celeron">Celeron D</label>
                </td>
                <td>
                    <input type="checkbox" name="moniter" id="moniter" value="moniter">
                    <label for="moniter">Moniter</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="processor" id="pentium" value="Pentium IV">
                    <label for="pentium">Pentium IV</label>
                </td>
                <td rowspan="2">
                    <select name="peripherals" id="peripherals" size="3" multiple>
                        <option value="Camera" >Camera</option>
                        <option value="printer" >Printer</option>
                        <option value="scanner">Scanner</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="processor" id="pentiumd" value="Pentium D">
                    <label for="pentiumd">Pentium D</label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit">PURCHASE</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>