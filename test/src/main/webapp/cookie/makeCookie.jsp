<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    Cookie cookie1 = new Cookie("name","yeonju");
    Cookie cookie2 = new Cookie("age","28");
    System.out.println("name:"+cookie1.getValue());
    System.out.println("age:"+cookie2.getValue());
    
    response.addCookie(cookie1);
    response.addCookie(cookie2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키생ㅅㅓㅇ!
</body>
</html>