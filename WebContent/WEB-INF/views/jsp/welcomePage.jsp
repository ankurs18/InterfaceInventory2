<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.acc.interfaceinventory.entity.LoginBean"%>  
<!DOCTYPE html>
<html lang="en">
<head>
<title>Spring MVC</title>

</head>
<body style="background-color: skyblue">
	<div class="container">
		<header>
			<img alt="header"
				src="C:\Users\dipak.p.patil\Documents\Final\InterfaceInventory2\WebContent\WEB-INF\views\jsp\resources\logo_internal.png"
				style="width: 100%">
		</header>
	</div>
	
	<h1><%  
LoginBean bean=(LoginBean)request.getAttribute("User");  
out.print("Welcome, "+bean.getUsername()+" to Interface Inventory");  
%></h1>
	<div>
		<h4>This tool is for searching or modifying any particular
			service.</h4>
		<h4>
			For Searching any particular service <a href="search">Click Here!</a>
		</h4>
	</div>
	<div class="container">
		<hr>
		<footer>
			<p>&copy; Accenture 2017</p>
		