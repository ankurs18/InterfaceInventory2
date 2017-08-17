<%@page import="com.acc.interfaceinventory.entity.Service"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstlcore" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="jstlfmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet'>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function validateForm() {
		var valid = true;

		var radios = document.getElementsByName("radioButton");
		var i = 0;
		var formValid = false;
		 while (!formValid && i < radios.length) {
		        if (radios[i].checked) 
		        	formValid = true;
		       	 i++;        
		    }

		    if (!formValid) 
		    	/* alert("Please select a service to make the update!"); */
		    {
    	        document.getElementById('radioButton').innerHTML="Please select a service to Update or Delete";  
    	        return false;
    	     }
		    return formValid;
		    
		/* if (serviceSelected == null || serviceSelected == "") {
			alert("Please select a service to update.");
			return false;
		} */

	}
</script>
<body style="font-family: 'Aclonica';">
	<h4 style="font-family:Comic Sans MS;" align="right">
		<a href="welcome">Home</a>
		<!-- <a href="AboutInterfaceInventory">About Interface Inventory</a> -->
		<a href="login">Logout</a> 
	</h4>
	<form action="update" method="post" onsubmit="return validateForm()">
		<div class="outer">
			<table class="content" width="auto" border="1" align="center">
				<tr>
					Matching Services found:
					<jstlcore:out value="${fn:length(allServices)}" />


				</tr>
				<br />
				<tr>
					<th></th>
					<th>id</th>
					<th>sourceInventory</th>
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
					<th>Scope</th>
					<th>r1_disposition</th>
					
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
					varStatus="status">



					<tr>
						<td><input type="radio" name="radioButton"
							value="${status.count}" id="serviceSelected"></td>
						<td><jstlcore:out value="${Service['id']}" /></td>
						<td><jstlcore:out value="${Service['source_inventory']}" /></td>
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
						<td>
							<jstlcore:if test="${Service['scope']}"> Release 1</jstlcore:if>
							<jstlcore:if test="${!Service['scope']}"> Release 2</jstlcore:if>
						</td>
						<td><jstlcore:out value="${Service['r1_disposition']}" /></td>
						
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
				<br />

			</table>
		</div>
		<br /> <input style="font-family: Audiowide;" value="Delete" type="submit" name="action" /> 
		<input style="font-family: Audiowide;" value="Modify" type="submit" name="action" />
		<span id="radioButton"></span>
		<tr>

			<%
				if (request.getAttribute("message") != null)
					out.print(request.getAttribute("message"));
			%>

		</tr>
	</form>
	<div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>