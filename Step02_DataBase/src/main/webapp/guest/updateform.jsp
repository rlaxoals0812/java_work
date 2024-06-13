<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	
	GuestDao dao = GuestDao.getInstance();
	GuestDto dto = dao.getData(num);

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/updateform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>방명록 글 수정 폼</h1>
		<form action="${pageContext.request.contextPath }/guest/update.jsp" method="post">
			<div class="mb-3 row">
				<label class="form-label" for="num">번호</label>
				<input class="form-control" type="text" id="num" name="num" value="<%=dto.getNum() %>" readonly/>
			</div>
			<div class="mb-3 row">
				<label class="form-label" for="writer">작성자</label>
				<input class="form-control" type="text" id="writer" name="writer" value="<%=dto.getWriter()%>"/>
			</div>
			<div class="mb-3 row">
				<label class="form-label" for="content">내용</label>
				<textarea class="form-control" id="content" name="content" rows="5"><%=dto.getContent() %></textarea>
			</div>
			<div class="mb-3 row">
				<label class="form-label" for="pwd">글 작성시 입력했던 비밀번호</label>
				<input class="form-control" type="password" id="pwd" name="pwd"/>
			</div>
			<button class="btn btn-outline-success btn-sm" type="submit">수정확인</button>
			<button class="btn btn-outline-danger btn-sm" type="reset">취소</button>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>