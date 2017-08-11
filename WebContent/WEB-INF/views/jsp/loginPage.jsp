<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<script>
function validate(){
	
	if(f.username.value.length==0)
{
   document.getElementById('usererrorname').innerHTML="Please Enter Username"; 
 return false;
}
}
	function validatepass(value)
	{
		if(f.password.value.length==0)
	     {
	        document.getElementById('passerrorname').innerHTML="Please Enter the Password";  
	     }    
	}
</script>
</head>
<body class="bodyStyle">
	<div align="right">
		<h4>
			<a href="AboutInterfaceInventory" style="font-family:Comic Sans MS; color: white">About
				Interface Inventory </a>
		</h4>
	</div>
	<div class="container" align="center">
		<header>
			<img alt="header" src="resources/logo_accy.png"
				style="position: relative;">
		</header>
	</div>
	<div align="center">
		<h1 style="color: White">Interface Inventory</h1>
		<h3 style="color: White">Login</h3>
		<form name='f' action="CheckLogin" method='POST'
			style="position: centre">
			<table style="position: centre">
				<tr>
					<td>UserName:</td>
					<td><input type='text' name='username' id="username" placeholder="Please Enter Username" onblur="validate()"/>
					<br>
					<span id="usererrorname" style="color: white;"></span>
					</td>
					
					
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' id="password" placeholder="Please Enter Password" onblur="validatepass()"/>
					<br>
					<span id="passerrorname" style="color: white;"></span></td>
				</tr>
				<table>
					<tr>
						<td><input name="submit" type="submit" value="submit"/></td>
						<td><input name="Clear" type="reset" value="Clear" /></td>
					</tr>
				</table>
				
				<tr>
					<td>
						<h3 class="messagecolor">
							<%
								if (request.getAttribute("message") != null)
									out.print(request.getAttribute("message"));
							%>					
					</td>
					</h3>
				</tr>
			</table>
		</form>
	</div>
	<div class="footer"
		style="position: static; width: 100%; bottom: 0; color: white">
		<hr>
		<footer> &copy; Accenture 2017 </footer>
	</div>
</body>
</html>