<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//폼전송되는 아이디 비번을 읽어와서
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//로그인 성공여부를 담을 변수 선언, 초기값 false부여
	boolean isLoginSuccess = false;
	
	//가상으로 로그인처리
	if(id.equals("gura") && pwd.equals("1234")){
		//만일 아이디 비번이 모두 일치시 로그인 처리(session영역에 id라는 키값으로 로그인 된 아이디를 담는다)
		session.setAttribute("id",id);
		
		isLoginSuccess = true;
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<div class="container">
		<%if(isLoginSuccess){ %>
			<p>
				<strong>id</strong>님 로그인 되었습니다
				<a href="${pageContext.request.contextPath }/">확인</a>
			</p>
		<%}else{ %>
			<p>
				아이디 혹은 비번이 틀림
				<a href="${pageContext.request.contextPath }/user/loginForm.jsp">다시 로그인</a>
			</p>
		<%} %>
	</div>
</body>
</html>