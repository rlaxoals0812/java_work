<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	String writer=request.getParameter("writer");
	String content=request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	boolean isSuccess = false;
	//2. DB 에 수정반영한다.
	GuestDao dao =  GuestDao.getInstance();
	String savedPwd = dao.getData(num).getPwd();
	if(pwd.equals(savedPwd)){
		GuestDto dto =new GuestDto();
		dto.setNum(num);
		dto.setWriter(writer);
		dto.setContent(content);
		dto.setPwd(pwd);
		
		dao.update(dto);
		isSuccess = dao.update(dto);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/update.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<script>
		<div class="container">
			<h3>알림</h3>
			<%if(isSuccess){ %>
				<p>
					<strong><%=writer %></strong> 님이 작성한 글이 수정되었습니다.
					<a href="list.jsp">목록보기</a>
				</p>
			<%}else{ %>
				<p>
					수정 실패!
					<a href="updateform.jsp?num=<%=num%>">다시 수정</a>
				</p>
			<%} %>
		</div>
	</script>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>