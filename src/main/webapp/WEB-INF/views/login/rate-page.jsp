<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rate configuration</title>

<style>
 * {
   box-sizing: border-box;
   font-family: 'Open Sans', sans-serif;
   margin: 0;
   padding: 0;
 }

 body {
   background-color: #f7f7f7;
 }

 .container {
   max-width: 800px;
   margin: 0 auto;
   padding: 30px;
   background-color: #fff;
   box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
   border-radius: 5px;
 }

 h1, h2, h3, h4, h5, h6 {
   margin-top: 0;
 }

 h2 {
   font-size: 24px;
   margin-bottom: 20px;
 }

 label {
   display: block;
   font-size: 16px;
   font-weight: bold;
   margin-bottom: 5px;
 }

 input[type="text"], input[type="number"], select {
   width: 100%;
   height: 40px;
   padding: 10px;
   border: none;
   border-radius: 5px;
   margin-bottom: 20px;
 }

 input[type="radio"] {
   margin-right: 10px;
 }

 table {
   width: 100%;
   margin-bottom: 20px;
   border-collapse: collapse;
 }

 thead {
   background-color: #f5f5f5;
 }

 th, td {
   padding: 10px;
   text-align: center;
   border: 1px solid #ddd;
 }

 th {
   font-weight: bold;
   text-transform: uppercase;
 }

 tfoot td {
   text-align: right;
 }

 .add-row, .remove-row {
   border: none;
   padding: 10px 20px;
   background-color: #4285f4;
   color: #fff;
   font-size: 16px;
   font-weight: bold;
   border-radius: 5px;
   cursor: pointer;
 }

 .add-row {
   margin-right: 10px;
 }

 .remove-row {
   background-color: #dc3545;
 }

 button[type="submit"] {
   border: none;
   padding: 10px 20px;
   background-color: #4CAF50;
   color: #fff;
   font-size: 16px;
   font-weight: bold;
   border-radius: 5px;
   cursor: pointer;
   transition: background-color 0.2s ease-in-out;
 }

 button[type="submit"]:hover {
   background-color: #3e8e41;
 }

 @media screen and (max-width: 768px) {
   .container {
     padding: 20px;
   }
 }
 input[type=text] {
     border: 2px solid #ccc;
     border-radius: 5px;
     padding: 10px;
     font-size: 16px;
     color: #333;
 }

   input[type=text]:focus {
     outline: none;
     border-color: #007bff;
     box-shadow: 0 0 5px #007bff;
   }



</style>

</head>
<script>
function addRow() {
var table = document.getElementById("charge-quantity-table");
var rowCount = table.rows.length;
var row = table.insertRow(rowCount);
var minimum = row.insertCell(0);
var maximum = row.insertCell(1);
var rate = row.insertCell(2);
minimum.innerHTML = '<input type="number" name="minimum[]" required>';
maximum.innerHTML = '<input type="number" name="maximum[]" required>';
rate.innerHTML = '<input type="number" name="rate[]" required>';
}

function removeRow() {
var table = document.getElementById("charge-quantity-table");
var rowCount = table.rows.length;
if (rowCount > 2) {
table.deleteRow(rowCount - 1);
}
}
</script>
<body>
<div class="container">
<div>
<h2>Rate:</h2>
<form action="createRate" method="post">
<label for "rateCode">Rate Code:</label>
<input type="text" name="rateCode"><br>
<br>
<label for "rateDescription">Rate description:</label>
<input type="text" name="rateDescription"><br>
<br>
<label for "rateType">Rate type:</label>
<select name="rateType" required style="border: 2px solid #ccc; padding: 5px;">
			<option>---Choose rate type---</option>
			<option>One time</option>
			<option>Monthly</option>
			<option>Recurring</option>
</select><br>
<br>
<label for "pricingMethodology">Choose Pricing Methodology:</label>
<select name="pricingMethodology" required style="border: 2px solid #ccc; padding: 5px;">
<option>---Choose pricing methodology---</option>
			<option>Flat Absolute</option>
			<option>Flat Rate</option>
			<option>Tiered Rate</option>
</select><br>
<br>
<h2>Charge Quantity Rate:</h2>
<table id="charge-quantity-table">
<thead>
<tr>
<th>Minimum</th>
<th>Maximum</th>
<th>Rate</th>
</tr>
</thead>
<tbody>
<tr>
<td><input type="number" name="min[]" required></td>
<td><input type="number" name="max[]" required></td>
<td><input type="number" name="rateValue[]" required></td>
</tr>
<tr>
<td><input type="number" name="min[]" required></td>
<td><input type="number" name="max[]" required></td>
<td><input type="number" name="rateValue[]" required></td>
</tr>
</tbody>
</table>
<div>
<button type="button" class="add-row" onclick="addRow()">Add Row</button>
<button type="button" class="remove-row" onclick="removeRow()">Remove Row</button>
</div>
<br><br>

  <button type="submit">Save</button>
</form>
</div>
</div>
</body>
</html>