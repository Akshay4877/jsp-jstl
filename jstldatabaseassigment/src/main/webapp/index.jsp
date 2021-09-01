<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="mydb" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/mydb"
user="root" password="root"/>
<c:out value="${'database connected.....'}" /></body>
<sql:query var="listUsers" dataSource="${mydb}">
select * from users;
</sql:query>
<div align="center">
<table border="1" cellpadding="5">
<caption><h2>List of users</h2></caption>
<tr>
<th>username</th>
<th>password</th>
<th>enabled</th>
<th>email</th>
</tr>
<c:forEach var="user" items="${listUsers.rows}">
<tr>
<td><c:out value="${user.username}" /></td>
<td><c:out value="${user.password}" /></td>
<td><c:out value="${user.enabled}" /></td>
<td><c:out value="${user.email}" /></td>
</tr>
</c:forEach>
</body>
</html>