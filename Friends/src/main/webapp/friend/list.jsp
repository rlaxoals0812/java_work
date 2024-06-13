<%@page import="test.friend.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.friend.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao dao = new MemberDao();
	List<MemberDto> list = dao.getList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/list.jsp</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/friend/insertform.jsp">회원 추가</a>
	<a href="${pageContext.request.contextPath }/friend/insertform.jsp">회원 추가</a>
	<h3>회원 목록입니다</h3>
	<table>
		<thread>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thread>
		<tbody>
			<%for(MemberDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
					<td><a href="${pageContext.request.contextPath }/friend/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>