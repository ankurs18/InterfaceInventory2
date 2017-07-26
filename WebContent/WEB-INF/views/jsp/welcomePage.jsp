<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.acc.interfaceinventory.entity.LoginBean"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
<title>Spring MVC</title>

</head>
<body style="background-image: url('resources/images_wel.jpg');">
	<div align="right">
		<table>
			<tr>
				<h4>
					<a href="logoutSuccessful" style="color: Black"> Logout | </a> <a
						href="AboutInterfaceInventory" style="color: Black"> About
						Interface Inventory </a>
				</h4>
			</tr>
		</table>

	</div>
	<div class="container">
		<header>
			<img alt="header" src="resources/logo_internal.png"
				style="width: 100%">
		</header>
	</div>

	<h1>
		<%
			LoginBean bean = (LoginBean) request.getAttribute("User");
			out.print("Welcome, " + bean.getUsername() + " to Interface Inventory");
		%>
	</h1>
	<table>
		<tr>
			<td>For any information regarding service click here -</td>
			<td><a href="search"><input type="submit" name="submit"
					value="Search"></a></td>
		</tr>
		<tr>
			<td>For edit , update , delete of a service click here -</td>
			<td><a href="search"><input type="submit" name="submit"
					value="Modify"></a></td>
		</tr>
		<tr>
			<td>For Adding a service click here -</td>
			<td><a href="addservice"><input type="submit" name="submit"
					value="Add"></a></td>
		</tr>
	</table>
	<div class="footbar">
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>