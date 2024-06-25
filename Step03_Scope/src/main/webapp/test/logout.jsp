<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//저장된값 삭제
	//session.removeAttribute("nick");
	//전체 초기화
	session.invalidate();
%>
<p>로그아웃 됨
<a href="${pageContext.request.contextPath }/index,jsp">인덱스로</a></p>
</body>
</html>