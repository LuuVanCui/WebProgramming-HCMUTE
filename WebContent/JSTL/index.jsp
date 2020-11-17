<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>JSTL</title>
</head>
<body>  
<jsp:include page="../until/header.jsp"></jsp:include>
	<h1 class="text-center mt-5">Enter Your Information</h1>
    <form class="" action="${pageContext.request.contextPath}/JSTL">
        <div class="form-group">
          <label for="quantity">Number of purchase</label>
          <input name="quantity" value="${quantity}" type="text" class="form-control" id="quantity" min="1" required>  
        </div>
	
        <div class="form-group">
          <label for="name">Your name</label>
          <input name="name" value="${name }" type="text" class="form-control" id="name" required>
        </div>

        <div class="form-group">
            <label for="name">Your phone</label>
            <input name="phone" value="${phone}" type="phone" class="form-control" id="name" required>
            <c:if test="${not empty phoneErr}">
            	<div class="alert alert-danger mt-3" role="alert">
					${phoneErr }		  
				</div>
            </c:if>
        </div>

        <div class="form-group">
            <label for="email">Your email</label>
            <input name="email" type="email" value="${email}" class="form-control" id="email" required>
            
        </div>

        <br>
        
        <div>
            <h2 class="text-center">Credit Information</h1>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="creaditNumber">Creadit Number</label>
                    <input name="creaditNumber" value="${creditNumber}" type="number" class="form-control" id="creaditNumber">
                  </div>
                  <div class="form-group col-md-6">
                    <label for="expirationDate">Expiration Date</label>
                    <div class="d-flex">
                    	<c:set var="selectedMonth" value="${month }" />
                        <select class="form-control" name="month" id="expirationDate">
                            <option>- Month -</option>
                            <c:forEach var="monthItem" begin="1" end="12">
                            	<option value="${monthItem }"  
                            	<c:if test="${selectedMonth == monthItem}">
		                    		<c:out value="selected" />
		                    	</c:if>
                            	> ${monthItem} </option>
                            </c:forEach>
                        </select>
                 
                        <select class="form-control" name="year">
                        	<option>- Year -</option>
                            <c:set var="selectedYear" value="${year}" />
                            <c:forEach var="year" begin="1930" end="2020" varStatus="loop" >
                            	<c:set var="yearItem" value="${loop.end - year + loop.begin}" />	
                            	<c:choose>
	                            	<c:when test="${not empty selectedYear and selectedYear == yearItem}">
	                            		<option value="${yearItem }" selected> ${yearItem } </option>		
	                            	</c:when>
	                            	<c:otherwise>
								        <option value="${yearItem }"> ${yearItem } </option>
								    </c:otherwise>
                            	</c:choose>
                            </c:forEach>
                        </select>
                    </div>
                    
                </div>
                <c:if test="${not empty creditErr}">
		            <div class="alert alert-danger mt-3" role="alert">
						${creditErr }		  
					</div>
           		</c:if>
      			<c:if test="${not empty dateErr}">
				    <div class="alert alert-danger mt-3" role="alert">
						${dateErr }		  
					</div>
      			</c:if>
            </div>
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
                        	<c:if test=""></c:if>
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
                        <input type="radio" name="processor" id="penti4" value="Pentium IV">
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
      <jsp:include page="../until/footer.jsp"></jsp:include>
</body>
</html>