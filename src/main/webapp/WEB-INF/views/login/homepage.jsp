
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/homepage.css">
<style>
.dropdown {
  position: relative;
  display: inline-block;
}
.login-button {
	background-color: #212c95;
	padding: 20px;
	border-radius: 25px;
	color: white;
	width: 200px;
	height: 50px;
	background-color: #4CAF50;
	font-size: 16px;
	border: none;
	cursor: pointer;
	border-left: 1000px;
}
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown:hover .dropdown-content {
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
.headerdrop {
  background-color: transparent;
  border: none;
  margin-right: 50px;
}

.headerdrop:onclick {
  background-color: transparent;
  border: none;
}
.headericondiv {
  display: flex;
  justify-content: space-evenly;
  margin-right: 60px;
}
.ICONhead {
  color: white;
}
.logo{

  padding-top: 50px;

  padding-left: 1px;
  padding-bottom: 15px;
  width:100px;
  height:35px;

}
.header__second {
  align-items: center;

  color: white;
  width: 20px;
  display: flex;
}
.header__second1 {
  align-items: center;
  margin-left: 30px;
  color: white;
  width: 20px;
  display: flex;
}
.header__second > .MuiSvgIcon-root {
  color: white;
}
.header__third {
  margin-right: 30px;
}
.Logout,
.Logout:hover,
.Logout:active,
.Logout:focus {

  color: aliceblue;
  text-decoration: none;
  margin-right: 30px;
}
.dropdown {
	position: relative;
	display: inline-block;
}

.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.tab_group {
	max-width: 1300px;
	box-shadow: 0px 18px 18px 2px rgba(0, 0, 0, 0.3);
}

h2 {
	font-size: 2em;
	font-weight: 700;
	margin: 0 0 0.5em;
	color: #8ab9ff;
}

#ul {
	position: relative;
	border: none;
	display: flex;
	list-style: none;
	background: #f5f5f5;
	justify-opisanie_bloka: space-between;
	box-shadow: 20px 40px 40px #00000033;
	padding: 0px;
}

.tablink {
	position: relative;
	padding: 0.7em 2em;
	font-size: 16px;
	border: none;
	color: #333;
	display: inline-block;
	text-decoration: none;
	font-weight: 500;
	z-index: 3;
}

.pervue_slayd, .vosuye_slayd {
	position: absolute;
	display: inline-block;
	height: 3em;
	transition: all 0.4s cubic-bezier(0.23, 1, 0.32, 1.05);
	border-radius: 25px;
}

.pervue_slayd {
	background-color: #fff;
	border-radius: 25px;
	z-index: 2;
}

.vosuye_slayd {
	opacity: 0;
	background: #8ab9ff;
	border-radius: 25px;
	z-index: 1;
}

a:hover {
	background-color: #87CEEB;
	border-radius: 25px;
}

.tab:focus {
	outline: none !important;
}
/* Footer styles */
footer {
	background-color: #333;
	color: #fff;
	padding: 50px 0;
}

.footer-content {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	max-width: 1100px;
	margin: auto;
}

.footer-section {
	flex-basis: 30%;
	margin-bottom: 20px;
}

.about h2 {
	color: #fff;
	margin-bottom: 20px;
}

.logo-text span {
	color: #00adb5;
}

ul {
	list-style: none;
	padding: 0;
}

.links li {
	margin-bottom: 10px;
}

.links a {
	color: #fff;
}

.contact-form textarea {
	height: 100px;
}

.contact-form button {
	display: inline-block;
	background-color: #00adb5;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 4px;
	cursor: pointer;
}

.contact-form button:hover {
	background-color: #fff;
	color: #00adb5;
}

.socials a {
	display: inline-block;
	margin-right: 10px;
	color: #fff;
	background-color: #00adb5;
	width: 40
}

/* Style the buttons inside the tab */
.tab button {
	background-color: 'blue';
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
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
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}

/* Show the specific tab content */

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 10px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

input[type="text"], input[type="password"] {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	width: 100%;
}

.search-container {
	display: flex;
	align-items: center;
	margin-top: 50px;
	margin-left: 150px;
}


.search-button {
	background-color: #212c95;
	color: white;
	border: none;
	padding: 10px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 250px;
	cursor: pointer;
}

.login-button {
	background-color: #212c95;
	padding: 20px;
	border-radius: 25px;
	color: white;
	width: 200px;
	height: 50px;
	background-color: #4CAF50;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.resizedTextbox {
	margin-left: 0px;
	padding-top: 50px;
	width: 1200px;
	height: 35px
}

.search-button:hover {
	background-color: #3e8e41;
}

</style>

</head>
<body>

<div class="header1">
		<div class="header__first">
			<img  src="/logo.PNG" alt="logo" style="width:130px;height:100px;" >
		</div>
<div class="tab_group">
<ul id="ul">

        <li class="pervue_slayd" tabindex="-1"></li>
  <li class="vosuye_slayd" tabindex="-1"></li>
       <li> <a href="#" class="tablink" onclick="openTab(event, 'personal')">Personal</a></li>
	   <li><a href="#" class="tablink" onclick="openTab(event, 'nri')">NRI</a></li>
		<li><a href="#" class="tablink" onclick="openTab(event, 'smi')">SMI</a></li>
		<li><a href="#" class="tablink" onclick="openTab(event, 'about')">About Us</a></li>
		<li><a href="#" class="tablink" onclick="openTab(event, 'contact')">Contact</a></li>
  </ul>



</div>
			</div>
					<div class="search-container">

			<input type="text" placeholder="Search..." >
			<button class="search-button" type="submit">Search</button>
				<a href="showReg">RegisterUser</a></div>


<div class="dropdown">
<button class="login-button">Login</button>

  <div class="dropdown-content">
    <a href="user">User</a>
    <a href="admin">Admin</a>
  </div>
  </div>



			<div id="personal" class="tabcontent">
		<h2>Personal Banking</h2>
		<p>Welcome to our personal banking page.</p>
	</div>
	<div id="nri" class="tabcontent">
		<h2>NRI Banking</h2>
		<p>Welcome to our NRI banking page.</p>
	</div>
	<div id="smi" class="tabcontent">
		<h2>SMI Banking</h2>
		<p>Welcome to our SMI banking page.</p>
	</div>
	<div id="about" class="tabcontent">
		<h2>About Us</h2>
		<p>Welcome to our About Us page.</p>
	</div>
	<div id="contact" class="tabcontent">
		<h2>Contact Us</h2>
		<p>Welcome to our Contact Us page.</p>
	</div>
	<script>
		function openTab(evt, tabName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(" active", "");
			}
			document.getElementById(tabName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>

	<footer>
  <div class="footer-content">
    <div class="footer-section about">
      <h2 class="logo-text"><span>Bank</span>of NJIT</h2>
      <p>
        We are a reliable and trusted bank providing the best financial services to our customers.
      </p>
      <div class="contact">
        <span><i class="fas fa-phone"></i> 123-456-7890</span>
        <span><i class="fas fa-envelope"></i> info@bankname.com</span>
      </div>
      <div class="socials">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-linkedin"></i></a>
      </div>
    </div>
    <div class="footer-section links">
      <h2>Quick Links</h2>
      <ul>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Terms of Use</a></li>
      </ul>
    </div>
    <div class="footer-section contact-form">
      <h2>Contact Us</h2>
      <form action="#" method="post">
        <input type="email" name="email" class="text-input contact-input" placeholder="Your email address...">
        <textarea name="message" class="text-input contact-input" placeholder="Your message..."></textarea>
        <button type="submit" class="btn btn-big contact-btn">
          <i class="fas fa-envelope"></i>
          Send
        </button>
      </form>
    </div>
  </div>
  <div class="footer-bottom">
    &copy; Bank of NJIT 2023
  </div>
</footer>

</body>
</html>