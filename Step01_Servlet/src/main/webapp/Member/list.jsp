<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDto dto= new MemberDto();
	List<MemberDto> mems = new ArrayList<>();	
	mems.add(new MemberDto(1,"gura","a"));
	mems.add(new MemberDto(2,"gura2","b"));
	mems.add(new MemberDto(3,"gura3","c"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/Member/list.jsp</title>
</head>
<body>
	<h3>맴버 목록입니다</h3>
	<table>
		<thread>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
		</thread>
		<tbody>
			<%for(MemberDto tmp:mems){ %>
				<tr>
					<th><%=tmp.getNum() %></th>
					<th><%=tmp.getName() %></th>
					<th><%=tmp.getAddr() %></th>
				</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>