<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nick = request.getParameter("nick");
	
	session.setAttribute("nick", nick);
	
	session.setMaxInactiveInterval(30);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><strong><%=nick %></strong>이라는 닉네임 기억</p>
	<p>30동안 요청이 없거나 웹브라우저를 닫으면 자동 삭제</p>
	<a href="../index.jsp">인덱스로 이동하기</a>
</body>
</html>