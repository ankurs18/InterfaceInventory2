<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./resources/css/styles.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
<title>About Interface Inventory</title>
</head>
<body style="font-family: 'Amaranth'">
<div align="right">
		<h4>
		<a href="login">Home</a>
	
	</h4>
	</div>
	<div>
		<h1 align="center">All About Interface Inventory</h1>
	</div>
	<div>
	<h4 >
	An Interface is a connection between two independent systems that exchange data. A subset of the interfaces are service interfaces. A service interface is where the consumer and provider meet.
	<br/>
	Consumer : Consumer is an application/system that consumes the service response.
	<br/>
	Provider : Provider is an application/system that provides the service response based on the request sent by consumer.
<br/>
<br/>
Connection Method:
<br/>
        1. Web service : SOA as SOAP over Http interfaces compliant with W3 standards.
<br/>
        2. MQ service : SOA over MQ. Most often this is asynchronous.
<br/>
        3. MQ Other (pipes and filters) : This exchange of data between two independent applications via messaging, but not in the context of SOA.
<br/>
        4. Http service : SOA over Http (no SOAP). For example servlets, Http post.
<br/>
        5. Http UI : Browser based Integration.
<br/>
        6. File : The exchange of data between two independent applications sent via file. This includes FTP, NAS, email.
<br/>
        7. ETL : The data is extracted as a block of data and represents point of view.
<br/>
        8. Database Integration (Shared Db) : Two intendant systems that each invoke CRUD like operation on database. This includes materialized views, Direct SQL, Store Process.
<br/>
        9. Other : This includes direct API calls and other forms of integrations that do not belong to any of the methods listed above.
<br/>
<br/>
Interface Patterns:
<br/>
1. Web service : A request response message exchange where the requester is the service consumer and responder is the service provider. When this is chosen we will assume it will be either SOAP over MQ or SOAP over Http Category.
<br/>
2. Event : Application has performed some work and the result of the work is communicated to interested systems as a notification event. This is one way message exchange.
<br/>
3. Ordered Event : A event when the sender requires a synchronizing response. Ordered event is assumed to be a request response message exchange.
<br/>
4. Pub Sub : Used when a event must be distributed to more than one interested systems. This is not available for ordered event.
<br/>
5. File : Send a receive files via FTP.
<br/>
6. ETL : The data is extracted as a block of data and represents point of view.

<br/>
<br/>
Interface Disposition:
	<br/>
	# 1 - retire
	<br/>
	# 2 - reuse
	<br/>
	# 3 - modify
	<br/>
	# 4 - new

	
	</h4>
	</div>
</body>
</html>