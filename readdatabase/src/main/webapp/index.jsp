<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "companyinfo";
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
<font><strong>Read data From database using web
dyanamic project </strong></font>
</h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

 </tr>
<tr>


<td><b>cName</b></td>
<td><b>cEmail</b></td>
</tr>
<%
try {
connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM Companyinfo";

 resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr>

 <td><%=resultSet.getString("cName")%></td>
<td><%=resultSet.getString("cEmail")%></td>


 </tr>

 <%
}

 } catch (Exception e) {
e.printStackTrace();
}
%>
</table>