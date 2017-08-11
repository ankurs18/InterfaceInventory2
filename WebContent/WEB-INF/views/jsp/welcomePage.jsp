<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.acc.interfaceinventory.entity.LoginBean"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<title>Spring MVC</title>

</head>
<body>
	<h4 style="font-family:Comic Sans MS;" align="right">
		<a href="AboutInterfaceInventory">About Interface Inventory</a>
		<a href="logoutSuccessful">Logout</a> 
	</h4>	
	<div>
		
	</div>
	<div align="Center">
	<%-- 
	<h1>
		<%
			LoginBean bean = (LoginBean) request.getAttribute("User");
			out.print("Welcome, " + bean.getUsername() + " to Interface Inventory");
		%>
	</h1>  --%>
	<table>
		
		<tr>
			<td>Search Inventory for Interface</td>
			<td><a href="search"><input type="submit" name="submit" style="width:100px;"
					value="Search"></a></td>
		</tr>
		<tr>
			<td>Add Interface details to Inventory</td>
			<td><a href="addservice"><input type="submit" name="submit" style="width:100px;"
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