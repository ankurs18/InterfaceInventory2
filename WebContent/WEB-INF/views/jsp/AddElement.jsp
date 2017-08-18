<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function validateForm() {
		
		var id = document.getElementById("ID").value;
		var interfaceName = document.getElementById("interfaceName").value;
		var LOB = document.getElementById("LOB").value;
		var ddlview = (addForm.Scope.value);
		var ProviderTechnology = document.getElementById("providerTechnology").value;
		var ServiceProvider = document.getElementById("serviceprovider").value;
		if (id == null || id == "" || isNaN(id)) {
			document.getElementById('serviceID').innerHTML="ID is Mandatory field , Please Enter Numeric Value";
			return false;
		}
		if(interfaceName == null || interfaceName ==""){
			document.getElementById('InterfaceName').innerHTML="Please provide Interface Name";
			return false;
		}
		if(LOB == null || LOB ==""){
			document.getElementById('lob').innerHTML="Line of Business is mandatory , Please provide.";
			return false;
		}
		if(ProviderTechnology == null || ProviderTechnology ==""){
			document.getElementById('ProviderTechnology').innerHTML="Please provide the technology.";
			return false;
		}
		
		if(ddlview == "-1") //for text use if(strUser1=="Select")
		{
			document.getElementById('ddlview').innerHTML="Please provide Scope.";
			
			return false;
		}
		if(ServiceProvider == null || ServiceProvider ==""){
			document.getElementById('ServiceProvider').innerHTML="please Enter service Provider.";
			return false;
		}
		
	}
</script>

<body style="font-family: 'Aclonica'">
	<div align="right">
		<h4 style="font-family:Comic Sans MS;">
		<a href="welcome">Home</a>
		<!-- <a href="AboutInterfaceInventory">About Interface Inventory</a> -->
		<a href="login">Logout</a> 
	</h4>
	<h4 style="color: red;">* is mandatory</h4>
	</div>
	<form method="post" action="AddEl" name="addForm" onsubmit="return validateForm()">
		            
		<center>
			            
			<table border="1" width="90%" cellpadding="3">
				                
				<thead>
					                    
					<tr>
						                        
						<th colspan="4"><b style="font-family: Lucida Bright;">Add New Service</b></th>                     
					</tr>
					                
				</thead>
				                
				<tbody>
					                    
					<tr>
						<td><b>ID:</b></td>
						<td><input type='text' name='ID' id="ID"/>*<span id="serviceID"></span></td>
						
					</tr>
					<tr>
						<td><b>Source Inventory:</b></td>
						<td><input type="text" name='SourceInventory'id="'SourceInventory'"/></td>
					</tr>
					<tr>
						<td><b>Interface Name:</b></td>
						<td><input type="text" name='InterfaceName' id="interfaceName"/>*<span id="InterfaceName"></span></td>
					</tr>
					<tr>
						<td><b>Description:</b></td>
						<td><input type="text" name='Description' /></td>
					</tr>
					<tr>
						<td><b>Interface Group/Category:</b></td>
						<td><input type="text" name='Interface_group' /></td>
					</tr>
					<tr>
						<td><b>Business Function:</b></td>
						<td><input type="text" name='BusinessFunction' /></td>
					</tr>
					<tr>
						<td><b>Business Process:</b></td>
						<td><input type="text" name='BusinessProcess' /></td>
					</tr>
					<tr>
						<td><b>Segment:</b></td>
						<td><input type="text" name='Segment' /></td>
					</tr>
					<tr>
						<td><b>LOB:</b></td>
						<td><input type="text" name='LOB' id="LOB" />*<span id="lob"></span> </td>
					</tr>
					<tr>
						<td><b>Entities or information Exchange:</b></td>
						<td><input type="text" name='EntitiesorinformationExchange' /></td>
					</tr>
					<tr>
						<td><b>Connection Method:</b></td>
						<td><input type="text" name='ConnectionMethod' /></td>
					</tr>
					<tr>
						<td><b>Transport:</b></td>
						<td><input type="text" name='Transport' /></td>
					</tr>
					<tr>
						<td><b>Connection Frequency(Trans Type):</b></td>
						<td><input type="text" name='ConnectionFrequency(Trans_Type)' /></td>
					</tr>
					<tr>
						<td><b>Data Format:</b></td>
						<td><input type="text" name='DataFormat' /></td>
					</tr>
					<tr>
						<td><b>Provider Technology:</b></td>
						<td><input type="text" name='Provider_Technology' id="providerTechnology" />*<span id="ProviderTechnology"></span> </td>
					</tr>
					<!-- <tr>
						<td><b>In Scope for R1:</b></td>
						<td><select style="width:width:200px;">
								<option value="" id="ddl" disabled selected hidden>Please Choose...</option>
								<option id="scope_r1" value="true">true</option>
								<option id="scope_r1" value="false">false</option>
						</select>*</td>
					</tr> -->
					<tr>
						<td><b>Scope</b></td>
						<td><select style="width:width:200px;" name="Scope">
								<option value="-1" disabled selected hidden>Please Choose...</option>
								<option id="scope_r1" value="r1">Release 1</option>
								<option id="scope_r1" value="r2">Release 2</option>
						</select>*<span id="ddlview"></span> </td>
					</tr>
					<tr>
						<td><b>R1 Disposition:</b></td>
						<td><input type="text" name='R1_Disposition' /></td>
					</tr>
					<!-- <tr>
						<td><b>In Scope for R2:</b></td>
						<td><select name="category" id="scope_r2" style="width:width:200px;">
						<option value="" disabled selected hidden>Please Choose...</option>
								<option>true</option>
								<option>false</option>
						</select>*</td>
					</tr> -->
					<tr>
						<td><b>R2 Disposition:</b></td>
						<td><input type="text" name='R2_Disposition' /></td>
					</tr>

					<tr>
						<td><b>Asynch/Synch:</b></td>
						<td><input type="text" name='Asynch_Synch' /></td>
					</tr>
					<tr>
						<td><b>Service Provider:</b></td>
						<td><input type="text" name='Service_Provider' id ="serviceprovider"/>*<span id="ServiceProvider"></span> </td>
					</tr>

					<tr>
						<td><b>Pattern:</b></td>
						<td><input type="text" name='Pattern' /></td>
					</tr>

					<tr>
						<td><b>Interface_Complexity:</b></td>
						<td><input type="text" name='Complexity' /></td>
					</tr>
					<tr>
						<td><b>Provider Adapter Details:</b></td>
						<td><input type="text" name='ProviderDetail' /></td>
					</tr>
					<tr>
						<td><b>Steel Thread:</b></td>
						<td><input type="text" name='Steel_Thread' /></td>
					</tr>

					<tr>
						<td><b>Modified Comment:</b></td>
						<td><input type="text" name='ModifiedComment' /></td>
					</tr>
					                
				</tbody>
				            
			</table>
			            
		</center>
		<table align="center">
		<tr>
			
			<td><input type="submit" name="submit" value="Add Inventory"></td>
							<%
								if (request.getAttribute("message") != null)
									out.print(request.getAttribute("message"));
							%>	
		</tr>
	</table>
		 
	</form>
	<!-- <div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>        -->
</body>
</html>