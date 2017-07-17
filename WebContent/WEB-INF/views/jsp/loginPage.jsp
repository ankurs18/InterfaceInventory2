<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login</title>
<link rel = "stylesheet" type="text/css" href="Form.css">
</head>
<body style="background-color: skyblue">
<div class="container">
		<header>
			<img alt="header"
				src="resources/logo_internal.png"
				style="width: 100%">
		</header>
	</div>
<div align="center">
	<h1>Login</h1>
	<h3>Enter user name and password:</h3>	
	<form name='f' action="CheckLogin" method='POST' style="position: centre">
		<table style="position: centre">
			<tr>
				<td>UserName:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			
			<tr align="center">
			
				<td><br/><input name="submit" type="submit" value="submit" /></td>
				<td><br/><input name="Clear" type="reset" value="Clear" /></td>
			</tr>
		</table>
	</form>	
	</div>
	<div class="container">
		<hr>
		<footer>
			<p>&copy; Accenture 2017</p>
		</footer>
	</div>
</body>
</html>