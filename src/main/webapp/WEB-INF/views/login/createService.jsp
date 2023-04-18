  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.form-container {
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 20px;
  .form-container {
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 20px;
  text-align: left;
}

}

.form-container h2 {
  margin-top: 0;
  font-size: 24px;
  text-align: center;
}

.form-row {
  display: flex;
  flex-direction: row;
  align-items: center;
  margin-bottom: 10px;
}

.form-row label {
  flex: 1;
  margin-right: 10px;
  text-align: right;
  color: #666;
}

.form-row input,
.form-row select {
  flex: 2;
  padding: 5px;
  border-radius: 5px;
  border: 1px solid #ccc;
  box-shadow: 1px 1px 5px #ccc;
}

.checkboxes label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}
.checkboxes label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

.checkboxes input[type="checkbox"] {
  margin-right: 5px;
}

.checkboxes label span {
  font-weight: normal;
}

.checkboxes {
  display: flex;
  flex-direction: column;
}
.header1 {
  background-color: #212c95;
  display: flex;
  align-items: center;
  height: 80px;
  padding: 0;
}
.header__first {
  padding-left: 20px;
  flex: 1;
  padding-top: 4px;


}
.header__first > img {
  width: 200px;
  height: 150px;
  object-fit: contain;
  object-position: left;
}



</style>
</head>
<body>
<div class="header1">
		<div class="header__first">

		</div></div>
<div class="form-container">
  <h2>Service Details Form</h2>
  <form action="saveService" method="post" >

    <div class="form-row">
      <label for="service-name">service Name:</label>
      <input type="text" id="service-name" name="serviceName">
    </div>
    <div class="form-row">
      <label for="service-description">Service Description:</label>
      <input type="text" id="service-description" name="serviceDescription">
    </div>
    <div class="form-row">
      <label for="service-owner">Service Owner:</label>
      <input type="text" id="service-owner" name="serviceOwner">
    </div>
    <div class="form-row">
      <label for="opening-date">Opening Date:</label>
      <input type="text" id="opening-date" name="openingDate">
    </div>
    <div class="form-row">
      <label for="validity-date">Validity Date:</label>
      <input type="text" id="validity-date" name="validityDate">
    </div>
    <div class="form-row">
      <label for="expiry-date">Expiry Date:</label>
      <input type="text" id="expiry-date" name="expiryDate">
    </div>
    <div class="form-row">
      <label for="currency">Currency:</label>
      <select id="currency" name="currency">
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
        <option value="GBP">GBP</option>
      </select>
    </div>
    <div class="form-row">
      <label for="service-level-rates">Service Level Rates:</label>
      <input type="text" id="service-level-rates" name="serviceLevelRates">
    </div>
    <div class="form-row">
      <label>Rate Code:</label>
      <div class="checkboxes">
      <c:forEach items="${rates}" var="rate">

<div class="form-row">
 <label><input type="checkbox" name="rateCode" value="${rate.rateCode}"><span> ${rate.rateCode}</span></label>

         </c:forEach>
</div>

      </div>
    </div>
    <br>

</div>
<div class="form-row">
<c:url var="serviceList" value="/saveProduct">
						<c:param name="services" value="${services}" />
					</c:url>
<input type="submit" value="Submit"></div>
  </form>

</body>
</html>