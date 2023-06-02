<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDto" class="com.gyojincompany.jstl.MemberDto"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="id" name="memberDto" value="tiger" />
	<jsp:setProperty property="passwd" name="memberDto" value="12345" />
	<jsp:setProperty property="email" name="memberDto" value="tiger@abc.com" />
	
	아이디 : <jsp:getProperty property="id" name="memberDto"/>
	
	<hr>
	
	아이디 : ${memberDto.id }<br>
	비밀번호 : ${memberDto.passwd }<br>
	이메일 : ${memberDto.email }
	
	<hr>
	
	아이디 : <%= memberDto.getId() %>
</body>
</html>