<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rover- Home Page</title>
<link href="images/devops.png" rel="icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">
<style>
	body{
		display: flex;
		flex-direction: column;
		align-items: center;
		font-family: 'Roboto', sans-serif;
		background-color: #FCFAF9;
		justify-content: space-between;
	}
	.title{
		background-color: #16425B;
		padding: 2rem 0;
		width: 100%;
		color: #D9DCD6;
		margin-top: 1rem;
	}
	.card{
		border: 2px solid #16425B;
		width: 50vw;
		padding: 2rem;
		margin-bottom: 0.6rem;
		align-items: center;
		text-align: center;
	}
</style>
</head>
</head>
<body>
<h1 align="center" class="title"> This is a simple web application hosted on AWS Instance</h1>
<div class="card">
	<h3>
		Server Side IP Address
	</h3>
	<% 
	String ip = "";
	InetAddress inetAddress = InetAddress.getLocalHost();
	ip = inetAddress.getHostAddress();
	out.println("Server Host Name :: "+inetAddress.getHostName()); 
	%>
	<br>
	<%out.println("Server IP Address :: "+ip);%>
</div>
<div class="card">
	<h3>
		Client Side IP Address
	</h3>
	<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
</div>

</body>
</html>
