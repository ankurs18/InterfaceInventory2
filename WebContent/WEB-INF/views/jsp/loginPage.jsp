<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
<script>
	function validate() {
		var user_name = document.getElementById("username");
		var pass_word = document.getElementById("password");
		var user = document.getElementById("username").value;
		var pass = document.getElementById("password").value;
		var valid = true;
		if (username.value.length <= 0) {
			alert("Name can't be blank");
			valid = false;
		}
		if (password.value.length <= 0) {
			alert("Password can't be blank");
			valid = false;
		}
		return valid;
	}
</script>
</head>
<body style="background-image: url('resources/background.jpg');">
	<div align="right">
		<h4>
			<a href="AboutInterfaceInventory" style="color: white">About
				Interface Inventory </a>
		</h4>
	</div>
	<div class="container" align="center">
		<header>
			<img alt="header" src="resources/logo_accy.png"
				style="position: relative;">
		</header>
	</div>
	<div align="center">
		<h1 style="color: White">Interface Inventory</h1>
		<h3 style="color: White">Login</h3>
		<form name='f' action="CheckLogin" method='POST'
			style="position: centre">
			<table style="position: centre">
				<tr>
					<td>UserName:</td>
					<td><input type='text' name='username' id="username"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' id="password" /></td>
				</tr>
				<table>
					<tr>
						<td><input name="submit" type="submit" value="submit"
							onclick="return validate()" /></td>
						<td><input name="Clear" type="reset" value="Clear" /></td>
					</tr>
				</table>
				<tr>
					<td>
						<h3 style="color: Red">
							<%
								if (request.getAttribute("message") != null)
									out.print(request.getAttribute("message"));
							%>					
					</td>
					</h3>
				</tr>
			</table>
		</form>
	</div>
	<div class="footer"
		style="position: static; width: 100%; bottom: 0; color: white">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>