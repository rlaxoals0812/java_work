<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<script>
		alert("로그아웃됨");
		location.href="${pageContext.request.contextPath }/";
	</script>
</body>
</html>