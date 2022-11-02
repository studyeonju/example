<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String loginId = (String)session.getAttribute("loginId");
    	if(loginId != null){
    	System.out.println("로그인상태!");
    	response.sendRedirect("loginSuccess.jsp"); 
    	} 
    	else {
    	String userId = request.getParameter("userId");
    	String userPw = request.getParameter("userPw");
    	String remember = request.getParameter("remember");
    	
    	if(userId.equals("admin")) {
    		System.out.println("로그인성곤!");
    		session.setAttribute("loginId",userId); //세션에 저장 
    		if(remember!=null){
    			Cookie rcookie = new Cookie("remember",userId); 
    			rcookie.setMaxAge(60 * 60);
    			response.addCookie(rcookie);
    		}
    		else{
        		Cookie rcookie = new Cookie("remember",userId); 
    			rcookie.setMaxAge(0 );
    			response.addCookie(rcookie);
        		
        	}
    		response.sendRedirect("loginSuccess.jsp");
    	}
    	else {
    		 response.sendRedirect("loginForm.jsp");
    	}
    	System.out.println("userId:"+userId);
    	System.out.println("userPw:"+userPw);
    	System.out.println("remember:"+remember);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<%}%>
</html>