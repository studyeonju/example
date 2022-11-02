<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   String loginId = (String)session.getAttribute("loginId");
    if(loginId != null){
    	System.out.println("로그인상태!");
    	response.sendRedirect("loginSuccess.jsp"); 
    }
    else {
   String checked = "";
    String userId = "";
    Cookie[] cookie = request.getCookies();
    if(cookie != null && cookie.length > 0){
    	for(int i = 0;i<cookie.length;i++){
    		if(cookie[i].getName().equals("remember")){
    			checked = "checked";
    			userId = cookie[i].getValue();
    		}
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="loginProc.jsp"method="post">
<input type="text" name="userId" placeholder="아이디" value="<%=userId %>"><br>
<input type="password" name="userPw" placeholder="비밀번호"><br>
아이디 기억하기<input type="checkbox" name="remember" value="chk" <%=checked %>><br>
<input type="submit" value="로그인">

</form>
</body>
<%} %>
</html>