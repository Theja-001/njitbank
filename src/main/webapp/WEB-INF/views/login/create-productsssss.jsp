<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html>
<head>
	<title>Product Details Form</title>
	<style>
		form {
			max-width: 500px;
			margin: 0 auto;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 10px 15px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<form action="saveProduct" method="post" >
     <pre>
		Product Code:
		<input type="text" id="productCode" name="productCode"><br>

		Product Name:
		<input type="text" id="productName" name="productName"><br>

		Product Description:
		<textarea id="productDescription" name="productDescription"></textarea><br>

	Product Owner:
		<input type="text" id="productOwner" name="productOwner"><br>

		Opening Date:
		<input type="text" id="openingDate" name="openingDate"><br>

		Validity Date:
		<input type="text" id="validityDate" name="validityDate"><br>

		Expiry Date:
		<input type="text" id="expiryDate" name="expiryDate"><br>

		Currency:
		<input type="text" id="currency" name="currency"><br>

		Product Level Rates:
		<input type="text" id="productLevelRates" name="productLevelRates"><br>
		Select a field service:
        <select id="serviceName" name="serviceName">
        <c:forEach items="${services}" var="service">
        <option value=" ${service.serviceName}" name="serviceName"> ${service.serviceName}</option>


            <p> ${service.serviceName}</p>
         </c:forEach></select>
        		</pre>

		<input type="submit" value="Submit">
	</form>
</body>
</html>
