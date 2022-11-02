<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키목록<br>
<%
Cookie[] cookies = request.getCookies();
for(Cookie cookie: cookies ){
System.out.println(cookie.getName()+":"+cookie.getValue()); 
	
 
}
%>
</body>
</html>