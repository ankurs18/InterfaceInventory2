<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Spring MVC</title>
</head>
<div class="jumbotron">
	<div class="container">
	
	<p>
			<c:if test="${empty name}">
			<h3>Welcome to ComPAS Interface Inventory!</h3>
		</c:if>
	</p>
	</div>
</div>
<div class="container">
	<hr>
	<footer>
		<p>&copy; Accenture 2017</p>
	</footer>
</div>

<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<header>
			<img alt="header"
				src="/InterfaceInventory2/WebContent/WEB-INF/views/jsp/resources/logo_internal.png"
				style="width: 100%">
		</header>

	</div>
</nav> -->






</body>
</html>