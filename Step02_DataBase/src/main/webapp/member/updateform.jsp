<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 회원의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));

	//2. DB 에서 해당 회원의 정보를 얻어온다. 
	MemberDto dto=new MemberDao().getData(num);
	//3. 회원 수정 양식을 응답한다 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/updateform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h3>회원정보 수정 양식</h3>
		<form action="${pageContext.request.contextPath }/member/update.jsp" method="post">
			<div class="mb-3 row">
				<label class="form-label" for="num">번호</label>
				<input class="form-control" type="text" name="num" id="num" value="<%=dto.getNum() %>" readonly/>
			</div>
			<div class="mb-3 row">
				<label class="form-label" for="name">이름</label>
				<input class="form-control" type="text" name="name" id="name" value="<%=dto.getName() %>"/>
			</div>
			<div class="mb-3 row">
				<label class="form-label" for="addr">주소</label>
				<input class="form-control" type="text" name="addr" id="addr" value="<%=dto.getAddr() %>"/>
			</div>
			<button class="btn btn-outline-success btn-sm" type="submit">수정확인</button>
			<button class="btn btn-outline-danger btn-sm" type="reset">취소</button>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>






</html>