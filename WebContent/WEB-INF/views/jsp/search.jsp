<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
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
<body>
	<div align="right">
		<h4 style="font-family:Comic Sans MS;">
		<a href="welcome">Home</a>
		<a href="AboutInterfaceInventory">About Interface Inventory</a>
		<a href="logoutSuccessful">Logout</a> 
	</h4>
	</div>
	<div align="center">
<h1>Please Enter the Service ID : </h1>
<form action="performSearch" name="SearchForm" method="post">
	<input type="text" name="serviceId" id="serviceId" onblur="return check()"/>	
	<input value="Search" type="submit" onclick="return check()"/>
	<input value="Reset" type="reset"><br>
	<span id="search"></span>
</form>
	
	</div>
	<div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>