<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request 영역에 "fortuneToday" 라는 키값으로 저장된 String type 얻어내기
	MemberDto dto = (MemberDto)request.getAttribute("dto");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member.jsp</title>
</head>
<body>
	<h3>회원의 정보입니다</h3>
	<p>번호 : <strong><%=dto.getNum() %></strong></p>
	<p>이름 : <strong><%=dto.getName() %></strong></p>
	<p>주소 : <strong><%=dto.getAddr() %></strong></p>
	
	<h3>EL 사용</h3>
	<p>번호 : <strong>${dto.num }</strong></p>
	<p>이름 : <strong>${dto.name }</strong></p>
	<p>주소 : <strong>${dto.addr }</strong></p>
</body>
</html>