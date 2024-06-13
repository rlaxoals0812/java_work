<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//get 방식 파라미터로 전달되는 삭제할 회원의 번호를 얻어온다
	int num =Integer.parseInt(request.getParameter("num"));
	//2 MemberDao 객체를 사용해서 실제 DB에서 삭제
	new MemberDao().delete(num);
	//3 응답하기
	String cPath = request.getContextPath();
	response.sendRedirect(cPath+"/member/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/delete.jsp</title>
</head>
<body>
	
</body>
</html>