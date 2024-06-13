<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num =Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	MemberDto dto = new MemberDto(num, name, addr);
	boolean isSuccess = new MemberDao().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("수정");
			location.href = "${pageContext.request.contextPath }/member/list.jsp";
		<%}else{%>
			alert("실패");
			location.href = "${pageContext.request.contextPath }/member/updateform.jsp?num=<%=num%>"
		<%}%>
		
	</script>
</body>
</html>