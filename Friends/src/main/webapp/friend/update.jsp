<%@page import="test.friend.dao.MemberDao"%>
<%@page import="test.friend.dto.MemberDto"%>
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
<title>/friend/update.jsp</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("수정");
			location.href = "${pageContext.request.contextPath }/friend/list.jsp";
		<%}else{%>
			alert("실패");
			location.href = "${pageContext.request.contextPath }/friend/updateform.jsp?num=<%=num%>";
		<%}%>
		
	</script>
</body>
</html>