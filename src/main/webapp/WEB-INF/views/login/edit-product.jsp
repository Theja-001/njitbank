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
	<form method="get" action="admin">
		<label for="product-code">Product Code:</label>
		<input type="text" id="product-code" name="product-code"><br>

		<label for="product-name">Product Name:</label>
		<input type="text" id="product-name" name="product-name"><br>

		<label for="product-description">Product Description:</label>
		<textarea id="product-description" name="product-description"></textarea><br>

		<label for="product-owner">Product Owner:</label>
		<input type="text" id="product-owner" name="product-owner"><br>

		<label for="opening-date">Opening Date:</label>
		<input type="date" id="opening-date" name="opening-date"><br>

		<label for="validity-date">Validity Date:</label>
		<input type="date" id="validity-date" name="validity-date"><br>

		<label for="expiry-date">Expiry Date:</label>
		<input type="date" id="expiry-date" name="expiry-date"><br>

		<label for="currency">Currency:</label>
		<input type="text" id="currency" name="currency"><br>

		<label for="product-level-rates">Product Level Rates:</label>
		<input type="text" id="product-level-rates" name="product-level-rates"><br>

		<input type="submit" value="Submit">
	</form>
</body>
</html>
