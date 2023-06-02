<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- IF문 -->
	<%
		if(10<5) {
	%>
		10은 5보다 크다!
	<%		
		}	
	%>
	<hr>
	<c:if test="${10>5 }">
		<h2>10은 5보다 작다</h2>
	</c:if>
	----------------------------<br>
	<!-- if ~ else -->
	<%
		if(10 < 5) {
			%>
			
			10은 5보다 크다
			<%
		} else {
			 %>			 
			10은 5보다 작다
			<%
		}
	 		%>
	
	<hr>
	<c:choose>
		<c:when test="${10<5 }">
			10은 5보다 크다
		</c:when>
		<c:otherwise>
			10은 5보다 작다
		</c:otherwise>	
	</c:choose>
	
	<hr>
	<!-- for문 -->
	<%
		for(int i=1;i<=10;i++) {
			out.println(i +" : 안녕하세요<br>");
		}
	
	%>
	<hr>
	<c:forEach var="i" begin="1" end="10" step="1">
		${i } : 안녕하세요 <br>
	</c:forEach>
	
	<hr>
	<%
		ArrayList arr = new ArrayList();
		
	%>
	
	<c:forEach items="${arr }" var="dto">
	
	</c:forEach>
	
	
</body>
</html>