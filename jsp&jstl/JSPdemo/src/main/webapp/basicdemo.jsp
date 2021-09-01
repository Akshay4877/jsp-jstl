<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int a=12,b=12;%>
<%out.print(a+b); %>
<%= "Welcome" +request.getParameter("uname") 

%>
<%
String name = request.getParameter("uname");
out.print("welcome"+name);
%>
</body>
</html> 