<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstlcore" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="jstlfmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet" type="text/css" href="resources/css/styles.css">
<title>Insert title here</title>
</head>
<body style="background-image: url('resources/images_wel.jpg');">
	<!-- <div class="container">
		<header> <img alt="header" src="resources/logo_internal.png"
			style="width: 100%"> </header>
	</div> -->
	<div align="right">
		<table>
			<tr>
				<h4>
					<a href="login" style="color: Black"> Logout | </a> <a
						href="AboutInterfaceInventory" style="color: Black"> About
						Interface Inventory </a>
				</h4>
			</tr>
		</table>

	</div>

<div class="outer">
	<table class="content" width="auto" border="1" align="center">
		<tr>
			<th></th>
			<th>id</th>
			<th>interfacename</th>
			<th>description</th>
			<th>interface_category</th>
			<th>business_function</th>
			<th>business_process</th>
			<th>segment</th>
			<th>lob</th>
			<th>entities_exchange</th>
			<th>connection_method</th>
			<th>transport</th>
			<th>connection_frequency</th>
			<th>data_format</th>
			<th>provider_technology</th>
			<th>scope_r1</th>
			<th>r1_disposition</th>
			<th>scope_r2</th>
			<th>r2_disposition</th>
			<th>asynch_synch</th>
			<th>service_provider</th>
			<th>pattern</th>
			<th>interface_complexity</th>
			<th>provider_detail</th>
			<th>steel_thread</th>
			<th>last_modification</th>
			<th>modified_comment</th>
		</tr>
		<jstlcore:forEach items="${allServices}" var="Service"
			varStatus="loop">



			<tr>

				<td><jstlcore:out value="${loop.count}" /></td>
				<td><jstlcore:out value="${Service['id']}" /></td>
				<td><jstlcore:out value="${Service['interfacename']}" /></td>
				<td><jstlcore:out value="${Service['description']}" /></td>
				<td><jstlcore:out value="${Service['interface_category']}" /></td>
				<td><jstlcore:out value="${Service['business_function']}" /></td>
				<td><jstlcore:out value="${Service['business_process']}" /></td>
				<td><jstlcore:out value="${Service['segment']}" /></td>
				<td><jstlcore:out value="${Service['lob']}" /></td>
				<td><jstlcore:out value="${Service['entities_exchange']}" /></td>
				<td><jstlcore:out value="${Service['connection_method']}" /></td>
				<td><jstlcore:out value="${Service['transport']}" /></td>
				<td><jstlcore:out value="${Service['connection_frequency']}" /></td>
				<td><jstlcore:out value="${Service['data_format']}" /></td>
				<td><jstlcore:out value="${Service['provider_technology']}" /></td>
				<td><jstlcore:out value="${Service['scope_r1']}" /></td>
				<td><jstlcore:out value="${Service['r1_disposition']}" /></td>
				<td><jstlcore:out value="${Service['scope_r2']}" /></td>
				<td><jstlcore:out value="${Service['r2_disposition']}" /></td>
				<td><jstlcore:out value="${Service['asynch_synch']}" /></td>
				<td><jstlcore:out value="${Service['service_provider']}" /></td>
				<td><jstlcore:out value="${Service['pattern']}" /></td>
				<td><jstlcore:out value="${Service['interface_complexity']}" /></td>
				<td><jstlcore:out value="${Service['provider_detail']}" /></td>
				<td><jstlcore:out value="${Service['steel_thread']}" /></td>
				<td><jstlcore:out value="${Service['last_modification']}" /></td>
				<td><jstlcore:out value="${Service['modified_comment']}" /></td>

			</tr>

		</jstlcore:forEach>


	</table>
</div>
<div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>