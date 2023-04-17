<c:import url="create-product.jsp" >
<!DOCTYPE html>
<html>
<head>
	<title>Manage Products and Services</title>
	<style>
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

button {
  padding: 10px 20px;
  margin: 0 10px;
}

    	/* Style the tab */
    .tab {
      overflow: hidden;
      border: 1px solid #ccc;
      background-color: #f1f1f1;
      height: 100%;
    }

    /* Style the buttons inside the tab */
    .tab button {
      background-color: inherit;
      color: black;
      display: block;
      padding: 14px 16px;
      width: 100%;
      border: none;
      outline: none;
      text-align: left;
      cursor: pointer;
      transition: 0.3s;
      font-size: 17px;
    }

    /* Change background color of buttons on hover */
    .tab button:hover {
      background-color: #ddd;
    }

    /* Create an active/current tablink class */
    .tab button.active {
      background-color: #ccc;
    }

    /* Style the tab content */
    .tabcontent {
      padding: 0px 12px;
      border: 1px solid #ccc;
      border-top: none;
      height: 100%;
    }

    /* Hide all tab content except the first tab */
    .tabcontent:not(:first-child) {
      display: none;
    }

		.tab {
			display: none;
		}

		.active {
			display: block;
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

		.tab-button {
			background-color: #f1f1f1;
			border: none;
			color: black;
			padding: 10px 20px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
		}

		.tab-button.active {
			background-color: #ccc;
		}
	</style>
	<script>
		function openTab(evt, tabName) {
			var i, tabContent, tabButton;

			// Hide all tab content
			tabContent = document.getElementsByClassName("tab");
			for (i = 0; i < tabContent.length; i++) {
				tabContent[i].style.display = "none";
			}

			// Remove active class from all tab buttons
			tabButton = document.getElementsByClassName("tab-button");
			for (i = 0; i < tabButton.length; i++) {
				tabButton[i].className = tabButton[i].className.replace(" active", "");
			}

			// Show the clicked tab content and add active class to the clicked button
			document.getElementById(tabName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>
</head>
<body>
<div class="header1">
		<div class="header__first">
			<img  src="/logo.PNG" alt="logo" style="width:130px;height:100px;" >
		</div>
</div>
	<h1>Admin Portal</h1>
	<button class="tab-button active" onclick="openTab(event, 'manageProducts')">Manage Products</button>
	<button class="tab-button" onclick="openTab(event, 'manageServices')">Manage Services</button>
	<button class="tab-button" onclick="openTab(event, 'manageRates')">Manage Rates</button>
	<button class="tab-button" onclick="openTab(event, 'viewAccounts')">View Accounts</button>
	<button class="tab-button" onclick="openTab(event, 'viewCustomers')">View Customers</button>

	<div id="manageProducts" class="tab" style="display: block;">
		<h2>Manage Products</h2>

          <button class="tablinks" onclick="openTab(event, 'create')">Create Product</button>
          <button class="tablinks" onclick="openTab(event, 'view')">View Products</button>
          <button class="tablinks" onclick="openTab(event, 'edit')">Edit Product</button>


       <div class="tab">
         <button class="tablinks" onclick="openTab(event, 'create')">Create Product</button>
         <button class="tablinks" onclick="openTab(event, 'view')">View Products</button>
         <button class="tablinks" onclick="openTab(event, 'edit')">Edit Product</button>
       </div>

       <div id="create" class="tabcontent">
         <jsp:include page="create-product.jsp" />
       </div>

       <div id="view" class="tabcontent">
         <jsp:include page="view-products.jsp" />
       </div>

       <div id="edit" class="tabcontent">
         <jsp:include page="edit-product.jsp" />
       </div>

	</div>

	<div id="manageServices" class="tab">
		<h2>Manage Services</h2>
		<!-- Add your code to manage services here -->
	</div>

	<div id="manageRates" class="tab">
		<h2>Manage Rates</h2>
		<!-- Add your code to manage rates here -->
		<button class="tablinks" onclick="openTab(event, 'create')">Create Rate</button>
        <button class="tablinks" onclick="openTab(event, 'view')">View Rates</button>
        <button class="tablinks" onclick="openTab(event, 'edit')">Edit Rate</button>


	</div>

	<div id="viewAccounts" class="tab">
		<h2>View Accounts</h2>
		<!-- Add your code to view accounts here -->
	</div>

	<div id="viewCustomers" class="tab">
		<h2>View Customers</h2>
		<!-- Add your code to view customers here -->
	</div>
</body>
</html>
