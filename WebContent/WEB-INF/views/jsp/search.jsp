<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
<title>Search</title>
<script>          
            function check()
        	{
        	     if(SearchForm.serviceId.value.length==0)
        	     {
        	        document.getElementById('search').innerHTML="Please Enter Numeric Value"; 
        	        return false;
        	     }
        	     if(isNaN(SearchForm.serviceId.value))
        	     {
        	        document.getElementById('search').innerHTML="Please Enter Numeric Value";  
        	        return false;
        	     }
        	     else{
        	    	 return true;
        	     }
        	     }       	

        </script>
</head>
<body style="font-family: 'Amaranth';">
	
	<header>
		<img alt="header" src="./resources/Banner_3.JPG" style="width: 100%; height: 150px;">
		
	</header>
	<div align="right">
		<h4 style="font-family:Comic Sans MS;">
		<a href="welcome">Home</a>
		<!-- <a href="AboutInterfaceInventory">About Interface Inventory</a> -->
		<a href="login">Logout</a> 
	</h4>
	</div>
	
	<h1 align="center">Search Inventory</h1>
	<br>
	<form action="performSearch" name="SearchForm" method="post">
		<div align="center">
		<label>Enter Service ID :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input style="font-family: 'Aclonica'; width: 150px;" type="text" name="serviceId" id="serviceId" onblur="return check()"/>
		<br/>
		<label>Please Choose Release :</label>
						<select name ="dropDown" id="dropdown">
								<option value = "-1" disabled selected hidden>Please Choose...</option>
								<option id="scope_r1" value="r1">Release 1</option>
								<option id="scope_r1" value="r2">Release 2</option>
						</select>
						<br/><br/>
		<input style="font-family: 'Aclonica';" value="Search" type="submit" onclick="return check()"/>
		<input style="font-family: 'Aclonica';" value="Reset" type="reset"><br>
		<br/>
			<span id="search"></span>
			<br/>
			<br/>
			<%
				if (request.getAttribute("message") != null)
					out.print(request.getAttribute("message"));
			%>
		</div>
		
	</form>
	
	
	
	
	
	<div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>