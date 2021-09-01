<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Hello,
	<b><%=request.getParameter("name")%></b>
	<br>
	<table border="1">
		<tr>
			<td>request method</td>
			<td><%=request.getMethod()%></td>
		</tr>

		<tr>
			<td>request URI</td>
			<td><%=request.getRequestURI()%></td>
		</tr>

		<tr>
			<td>request protocol</td>
			<td><%=request.getProtocol()%></td>
		</tr>

		<tr>
			<td>Browser</td>
			<td><%=request.getHeader("user-agent")%></td>
		</tr>

	</table>
	<%
	if (session.getAttribute("sessionvar") == null) {
		session.setAttribute("sessionvar", new Integer(0));
	}
	%>
	<table>
		<tr>
			<th align="left">Would you like to see use of remaining implicit
				object?</th>
		</tr>
		<tr>
			<form  name=pageContext action="pageContext.jsp" method="post">
				<td><input type="radio" name="other" value="Yes" />Yes</td>
				<td><input type="radio" name="other" value="No" />No</td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit" /></td>
		</tr>

		</form>



	</table>


</body>
</html>
