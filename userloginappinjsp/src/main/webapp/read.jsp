<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "mydb";
String userId = "root";
String password = "root";

try {
	Class.forName(driverName);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center">
	<font><strong>All Employee Data </strong></font>
			
</h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
	<tr>

	</tr>
	<tr>


		<td><b>username</b></td>
		<td><b>password</b></td>
		<td><b>enabled</b></td>
		<td><b>email</b></td>
	</tr>
	<%
	try {
		connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
		statement = connection.createStatement();
		String sql = "SELECT * FROM users";

		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
	%>
	<tr>

		<td><%=resultSet.getString("username")%></td>
		<td><%=resultSet.getString("password")%></td>
		<td><%=resultSet.getString("enabled")%></td>
		<td><%=resultSet.getString("email")%></td>
	</tr>

	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</table>