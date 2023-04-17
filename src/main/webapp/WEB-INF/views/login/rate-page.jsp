<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rate configuration</title>
</head>
<body>

<h2>Rate:</h2>
<form action="">
<label for "ratecode">Rate Code:</label>
<input type="text" name="ratecode"><br>
<br>
<label for "ratedescription">Rate description:</label>
<input type="text" name="ratedescription"><br>
<br>
<label for "ratetype">Rate type:</label>
<select name="ratetype" required>
			<option>---Choose rate type---</option>
			<option>One time</option>
			<option>Monthly</option>
			<option>Recurring</option>
</select><br>
<br>
<label for "chargeQuantityRate">Charge Quantity Rate:</label>
<input type="text" name="chargeQuantityRate"><br>
<br>
<label for "pricingMethodology">Choose Pricing Methodology:</label>
<button name="pricingMethodology" value="Flat Absolute">Flat Absolute</button>
<button name="pricingMethodology" value="Flat Rate">Flat Rate</button>
<button name="pricingMethodology" value="Tiered Rate">Tiered Rate</button>
<br>


</form>
</body>
</html>