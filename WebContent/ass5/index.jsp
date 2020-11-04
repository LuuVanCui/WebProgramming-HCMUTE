<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style>
    .select-item {
        padding: 5px;
        border-bottom: solid 1px grey;
    }
</style>
<title>Ass 5</title>
</head>
<body>
	<%
		// get input value
		String quantity = (String)request.getAttribute("quantity");
		String name = (String)request.getAttribute("name");
		String phone = (String)request.getAttribute("phone");
		String email = (String)request.getAttribute("email");
		String creditNumber = (String)request.getAttribute("creditNumber");
		String month = (String)request.getAttribute("month");
		String year = (String)request.getAttribute("year");
		String processor = (String)request.getAttribute("processor");
		
		if (quantity == null) {
			quantity = "";
		}
		if (name == null) {
			name = "";
		}
		if (email == null) {
			email = "";
		}
		if (phone == null) {
			phone = "";
		}
		if (creditNumber == null) {
			creditNumber = "";
		}
		if (month == null) {
			month = "";
		}
		if (year == null) {
			year = "";
		}
		
		String phoneErr = (String)request.getAttribute("phoneErr");
		String creditErr = (String)request.getAttribute("creditErr");
		String dateErr = (String)request.getAttribute("dateErr");
	%>
	
	<h1 class="text-center mt-5">Enter Your Information</h1>
    <form class="container" action="${pageContext.request.contextPath}/Ass5">
        <div class="form-group">
          <label for="quantity">Number of purchase</label>
          <input name="quantity" value="<%=quantity %>" type="text" class="form-control" id="quantity" min="1" required>  
        </div>
	
        <div class="form-group">
          <label for="name">Your name</label>
          <input name="name" value="<%=name %>" type="text" class="form-control" id="name" required>
        </div>

        <div class="form-group">
            <label for="name">Your phone</label>
            <input name="phone" value="<%=phone %>" type="phone" class="form-control" id="name" required>
            <% if (phoneErr != null) {
            %>
            	<div class="alert alert-danger mt-3" role="alert">
					<%=phoneErr %>		  
				</div>
            <%		
            }
            %>
            
        </div>

        <div class="form-group">
            <label for="email">Your email</label>
            <input name="email" type="email" value="<%=email %>" class="form-control" id="email">
        </div>

        <br>
        
        <div>
            <h2 class="text-center">Credit Information</h1>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="creaditNumber">Creadit Number</label>
                    <input name="creaditNumber" value="<%=creditNumber %>" type="number" class="form-control" id="creaditNumber">
                  </div>
                  <div class="form-group col-md-6">
                    <label for="expirationDate">Expiration Date</label>
                    <div class="d-flex">
                        <select class="form-control" value="<%=month %>" name="month" id="expirationDate">
                            <option>- Month -</option>
                            <option value="January">January</option>
                            <option value="Febuary">Febuary</option>
                            <option value="March">March</option>
                            <option value="April">April</option>
                            <option value="May">May</option>
                            <option value="June">June</option>
                            <option value="July">July</option>
                            <option value="August">August</option>
                            <option value="September">September</option>
                            <option value="October">October</option>
                            <option value="November">November</option>
                            <option value="December">December</option>
                        </select>
                        <select class="form-control" value="<%=year %>" name="year">
                            <option>- Year -</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>
                            <option value="1979">1979</option>
                            <option value="1978">1978</option>
                            <option value="1977">1977</option>
                            <option value="1976">1976</option>
                            <option value="1975">1975</option>
                            <option value="1974">1974</option>
                            <option value="1973">1973</option>
                            <option value="1972">1972</option>
                            <option value="1971">1971</option>
                            <option value="1970">1970</option>
                            <option value="1969">1969</option>
                            <option value="1968">1968</option>
                            <option value="1967">1967</option>
                            <option value="1966">1966</option>
                            <option value="1965">1965</option>
                            <option value="1964">1964</option>
                            <option value="1963">1963</option>
                            <option value="1962">1962</option>
                            <option value="1961">1961</option>
                            <option value="1960">1960</option>
                            <option value="1959">1959</option>
                            <option value="1958">1958</option>
                            <option value="1957">1957</option>
                            <option value="1956">1956</option>
                            <option value="1955">1955</option>
                            <option value="1954">1954</option>
                            <option value="1953">1953</option>
                            <option value="1952">1952</option>
                            <option value="1951">1951</option>
                            <option value="1950">1950</option>
                            <option value="1949">1949</option>
                            <option value="1948">1948</option>
                            <option value="1947">1947</option>
                            <option value="1946">1946</option>
                            <option value="1945">1945</option>
                            <option value="1944">1944</option>
                            <option value="1943">1943</option>
                            <option value="1942">1942</option>
                            <option value="1941">1941</option>
                            <option value="1940">1940</option>
                            <option value="1939">1939</option>
                            <option value="1938">1938</option>
                            <option value="1937">1937</option>
                            <option value="1936">1936</option>
                            <option value="1935">1935</option>
                            <option value="1934">1934</option>
                            <option value="1933">1933</option>
                            <option value="1932">1932</option>
                            <option value="1931">1931</option>
                            <option value="1930">1930</option>
                        </select>
                    </div>
                </div>
            </div>
            <% 
            if (creditErr != null) {
            %>
            	<div class="alert alert-danger mt-3" role="alert">
					<%=creditErr %>		  
				</div>
            <%
            }
            %>
            
            <% 
            if (dateErr != null) {
            %>
            	<div class="alert alert-danger mt-3" role="alert">
					<%=dateErr %>		  
				</div>
            <%
            }
            %>
            
        </div>

        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center">Processor</th>
                    <th class="text-center">Accessors</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="radio" name="processor" id="celeronD" value="Celeron D" 
                        >
                        <label for="celeronD">Celeron D</label>
                    </td>
                    <td>
                        <input type="checkbox" name="moniter" id="moniter">
                        <label for="moniter">Moniter</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="processor" id="penti4" value="Pentium IV"
                        
                        >
                        <label for="penti4">Pentium IV</label>
                    </td>
                    <td rowspan="2">
                        <select style="padding-left: 40%; padding-right: 40%;" size="3" multiple>
                            <option value="camera" class="select-item">Camera</option>
                            <option value="printer" class="select-item">Printer</option>
                            <option value="scanner" class="select-item">Scanner</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="processor" id="penti-d" value="Pentium D"
                        >
                        <label for="penti-d">Pentium D</label>
                    </td>
                </tr>
            </tbody>
        </table>
        <button type="submit" class="btn btn-primary mb-5">Configure</button>
      </form>
</body>
</html>