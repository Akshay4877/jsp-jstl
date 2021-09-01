<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
</head>
<body>
<%  
String name=request.getParameter("username"); 
String pass=request.getParameter("password");
out.print("Welcome user, you entered your name as "+name); 
%> 
</body>
</html>