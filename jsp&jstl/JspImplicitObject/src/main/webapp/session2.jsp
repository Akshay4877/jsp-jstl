<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%   
  
String name=(String)session.getAttribute("user");  
out.print("Thanks For Coming these page "+name);  
  
%>  
<a href="http://localhost:8080/JspImplicitObject/session.html"><br>go to main html page</a>
</body>
</html>