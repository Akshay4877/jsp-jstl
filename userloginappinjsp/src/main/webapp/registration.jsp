<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String enabled=request.getParameter("enabled");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(username,password,enabled,email)values('"+username+"','"+password+"','"+enabled+"','"+email+"')");
out.println("Data  inserted  Successfully");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
