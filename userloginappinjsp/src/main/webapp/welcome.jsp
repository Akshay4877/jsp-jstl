<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="80%" height="50%" style="margin: auto;">
<tr>
<td><%@include file="header.jsp" %></td>
</tr>
<tr>
<td height="300" style="text-align: center;">
<p>
Welcome : <%=session.getAttribute("userid") %>
<br>
You are in Welcome page
</p>
</td>
</tr>
<tr>
<td><%@include file="footer.jsp" %></td>
</tr>
</table>

</body>
</html>