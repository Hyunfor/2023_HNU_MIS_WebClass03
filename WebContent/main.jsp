<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main</title>
</head>
<body>
	<%
		// Cookie에서 name과 value를 가져와 비교
		Cookie ck[] = request.getCookies();
		// 1. 클라이언트로부터 Cookie[]을 가져옴.
		String str= null;
		if(ck != null){
			// 2. 쿠키의 name을 얻어서 "username"인지 비교후 동일하면
			for(Cookie c : ck)
				{
					// 3. 쿠키의 value를 가져와 출력
					str = URLDecoder.decode(c.getValue(),"UTF-8");
				}
		out.print(str);	
	%>
		전우치님 안녕하세요!<br>
		저희 홈페이지에 방문해 주셔서 감사합니다.<br>
		즐거운 시간 되세요....<br>
		<form method="post" action="logout.jsp">
			<input type="submit" value="로그아웃">
		</form>
	<%} else { %>
		<h2>로그인에 실패했습니다.</h2>
		<p><a href="loginForm.jsp">되돌아가기</a>
	<%} %>
	
</body>
</html>