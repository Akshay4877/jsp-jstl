<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:out value="${'Welcome to jstl'}"/>
<c:set var="number" scope="session" value="${3000}"></c:set>
<c:out value="${number}" />
<c:if test ="${number<=2000}">
<p>number is<c:out value="${number}" ></c:out></h3>
</c:if>
<c:choose>

	<c:when test="${number <= 1000}">
	number is less than 1000
	</c:when>
	<c:when test="${number > 1000}">
	number is greater than 1000
	</c:when>
	<c:otherwise>
	invalid data
	</c:otherwise>
	
	
</c:choose>	

<c:forEach var="i" begin="1" end="10">
<br>
Integers <c:out value="${i}" />
</c:forEach>



<c:remove var="number" />
<p>
After Remove number is:
<c:out value="${number}" />
</p>



<c:set var="name" value="hello welcome to JSTL" />
<p>
the name is:
<c:out value="${name}" />
</p>



<c:if test="${fn:containsIgnoreCase(name,'Welcome')}">
<p>welcome is found</p>
</c:if>



<c:set var="date" value="<%=new java.util.Date()%>" />
<c:out value="${date}" />
<br>
<fmt:formatDate value="${date}" />
<br>
<fmt:formatDate type="both" dateStyle="medium" value="${date}" />

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>exception  : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>  

<c:forTokens items="Akshay-Shailesh-Harshada-usha" delims="-" var="name1">  
   <c:out value="${name1}"/><p>
</p></c:forTokens>

<c:set var="url" value="0" scope="request"/>  
  
     <c:redirect url="https://en.wikipedia.org/wiki/Manali,_Himachal_Pradesh"/>  
    
 
</body>
</html>