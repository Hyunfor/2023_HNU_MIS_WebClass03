<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키</title>
</head>
<body>
	<%
		// 1. Cookie 객체 생성
		Cookie c = new Cookie("id", "admin");
		// 2. 유효기간 설정
		c.setMaxAge(365 * 24 * 60 * 60);
		// 3. 클라이언트에 쿠키 전송
		response.addCookie(c);
		// 4. 쿠키를 생성하여 클라이언트에 전송
		response.addCookie(new Cookie("pwd", "test1234"));
		response.addCookie(new Cookie("age", "20"));
	%>
	<h3>쿠키 설정</h3>
</body>
</html>