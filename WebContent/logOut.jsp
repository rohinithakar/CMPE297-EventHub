<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogOut</title>
</head>

<%session.invalidate();%>


<body>
document.getElementById("login-user").style.display = "inline-block";
document.getElementById("create-user").style.display = "inline-block";
document.getElementById("fblogin").style.display = "inline-block";
document.getElementById("logout-user").style.display = "none";
</body>

<% response.sendRedirect("index.jsp"); %>
</html>