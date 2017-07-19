<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
</head>
<body style="background-image: url('resources/background.jpg');">
	<div align="right">
		<h4>
			<a href="AboutInterfaceInventory" style="color: white">About Interface Inventory </a>
		</h4>
	</div>
	<div class="container" align="center">
		<header>
			<img alt="header" src="resources/logo_accy.png"
				style="position: relative;">
		</header>

	</div>

	<div align="center">
		<h1 style="color: White"> Interface Inventory</h1>
		<h3 style="color: White">Login</h3>
		<form name='f' action="CheckLogin" method='POST'
			style="position: centre">
			<table style="position: centre">
				<tr>
					<td>UserName:</td>
					<td><input type='text' name='username' value=''></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' style="color: white"/></td>
				</tr>
				
				<table>
					<tr>
						<td><input name="submit" type="submit"
							value="submit" /> <input name="Clear" type="reset" value="Clear" />
						</td>

					</tr>
				</table>
			</table>
		</form>
	</div>
	<div class="footer">
		<hr>
		<footer>
			&copy; Accenture 2017
		</footer>
	</div>
</body>
</html>