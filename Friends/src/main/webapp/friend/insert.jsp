
<%@page import="test.friend.dao.MemberDao"%>
<%@page import="test.friend.dto.MemberDto"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1 폼 전송되는 이름과 주소를 추출
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	MemberDto dto = new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	//2 DB에 저장
	MemberDao dao = new MemberDao();
	boolean isSuccess = dao.insert(dto);
		
	//3 응답
	
%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/insert.jsp</title>
</head>
<body>
	<div class="container">
		<h3>알림</h3>
		<%if(isSuccess){%>
			<p><strong><%=name %></strong>님의 정보를 저장함</p>
			<a href="${pageContext.request.contextPath }/friend/list.jsp">목록보기</a>
		<%}else{ %>
			<p>회원 정보 저장 실패</p>
			<a href="${pageContext.request.contextPath }/friend/insertform.jsp">다시 작성</a>
		<%} %>	
	</div>
</body>
</html>