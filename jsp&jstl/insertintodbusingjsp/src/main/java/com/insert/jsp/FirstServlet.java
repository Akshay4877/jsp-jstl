package com.insert.jsp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String cName = request.getParameter("cName");
	String cEmail = request.getParameter("cEmail");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/companyinfo","root","root");
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	}

}
