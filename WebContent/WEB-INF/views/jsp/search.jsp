<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<script>
            function validate()
            {
                var a = document.getElementById("serviceId");
                
var c = document.getElementById("serviceId").value;

                var valid = true;
                if(serviceId.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    else{
                        if(isNaN(c)){
                            alert("Enter a number");
                    valid = false;}
                }
                return valid;
            };

        </script>
</head>
<body style="background-image: url('resources/images_wel.jpg');">
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
<h1>Please Enter the Service ID : </h1>
<form action="performSearch" name="SearchForm" method="post">
	<input type="text" name="serviceId" id="serviceId"/>	
	<input value="Search" type="submit" onclick="return validate()"/>
	<input value="Reset" type="reset">
	<%-- <table>
				<tr>
					<td>
					<h3 style="color: Red">
						<%
							if (request.getAttribute("message") != null)
								out.print(request.getAttribute("message"));
						%>
					</td>
					</h3>
				</tr>
			</table> --%>
			
			
			
	</form>
	
	
	<div class="footer"
		style="position: absolute; width: 100%; bottom: 0; color: Black">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>