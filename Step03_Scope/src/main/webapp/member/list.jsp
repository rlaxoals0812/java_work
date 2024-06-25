<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<MemberDto> list = (List<MemberDto>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>회원목록 입니다</h3>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>주소</th>
					</tr>
					<%for(MemberDto tmp:list) {%>
						<tr>
							<td><%=tmp.getNum() %> </td>
							<td><%=tmp.getName() %> </td>
							<td><%=tmp.getAddr() %> </td>
						</tr>
					<%} %>
				</thead>
			</table>
	</div>
</body>
</html>