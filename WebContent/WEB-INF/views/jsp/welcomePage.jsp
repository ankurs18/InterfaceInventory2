<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.acc.interfaceinventory.entity.LoginBean"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
<title>Spring MVC</title>

</head>
<body style="font-family: 'Amaranth';">
	<header>
		<img alt="header" src="./resources/Banner_3.JPG" style="width: 100%; height: 150px;">
		
	</header>
	<h4 align="right">
		<!-- <a href="AboutInterfaceInventory">About Interface Inventory</a> -->
		<a href="login">Logout</a> 
	</h4>	
	<div>
		
	</div>
	<div align="Center">
	
	<h1>
		<%	
			LoginBean bean = (LoginBean) request.getAttribute("User");
		if(bean!=null)	
		out.print("Welcome, " + bean.getUsername() + " to Interface Inventory");
		else
			out.print("Welcome, user1 to Interface Inventory");
		%>
	</h1> 
	<table>
		
		<tr>
			<td>Search Inventory for Interface</td>
			<td><a href="search"><input type="submit" name="submit" style="width:100px; font-family: 'Aclonica'"
					value="Search"></a></td>
		</tr>
		<tr>
			<td>Add Interface details to Inventory</td>
			<td><a href="addservice"><input type="submit" name="submit" style="width:100px; font-family: 'Aclonica'"
					value="Add"></a></td>
		</tr>
	</table>
	
	</div>
	<div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>