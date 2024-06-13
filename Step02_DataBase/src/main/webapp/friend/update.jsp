<%@page import="test.friend.dao.FriendDao"%>
<%@page import="test.friend.dto.FriendDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼전송되는 수정할 회원의 번호, 이름, 주소를 추출한다. 
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	int callnum=Integer.parseInt(request.getParameter("callnum"));
	
	//2. DB 에 수정반영한다.
	FriendDto dto=new FriendDto(num, name, callnum);
	boolean isSuccess = new FriendDao().update(dto);
	//3. 응답하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/update.jsp</title>
</head>
<body>
	<script>
		/*
			javascript 를 로딩시켜서 Redirect 응답한 것과 같은 효과 내기 
			location.href = "이동할경로";
		*/
	
		<%if(isSuccess){%>
			alert("수정 했습니다.");
			location.href="${pageContext.request.contextPath }/friend/list.jsp";
		<%}else{%>
			alert("수정 실패!");
			location.href="${pageContext.request.contextPath }/friend/updateform.jsp?num=<%=num%>";
		<%}%>
	</script>
</body>
</html>