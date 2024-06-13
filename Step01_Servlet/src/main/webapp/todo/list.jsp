<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//DB에서 불러온 친구 목록이라 가정
	List<String> todo = new ArrayList<>();
	todo.add("html");
	todo.add("js");
	todo.add("css");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
	<h3>할일 목록입니다</h3>
	<ul>
		<%for(String tmp:todo){ %>
			<li><%=tmp %></li>
		<%} %>
	</ul>
</body>
</html>