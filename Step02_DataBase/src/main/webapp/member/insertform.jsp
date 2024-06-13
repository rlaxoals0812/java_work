<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<nav>
			<ol class="breadcrumb nav-item">
				<li class="breadcrump-item"><a href="${pageContext.request.contextPath }/"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z"/>
</svg></a></li>
				<li class="breadcrump-item"><a href="${pageContext.request.contextPath }/member/list.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5"/>
</svg></a></li>
				<li class="breadcrump-item active">회원수정</li>
			</ol>
		</nav>
		<h3>회원 추가 양식</h3>
		<div>
			<form action="${pageContext.request.contextPath }/member/insert.jsp" method="post">
				<div class="mb-3 row">
					<label for="name" class="col-form-label col-sm-2">이름</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" name="name" id="name"/>				
					</div>
					<label for="addr" class="col-form-label col-sm-2">주소</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" name="addr" id="addr"/>	
					</div>
					<button class="btn btn-outline-primary btn-sm" type="submit">추가</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>









