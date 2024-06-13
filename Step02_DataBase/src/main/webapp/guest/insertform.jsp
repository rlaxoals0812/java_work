<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<ol class="breadcrumb nav-item">
			<li class="breadcrump-item">
				<a href="${pageContext.request.contextPath }/">
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  						<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z"/>
					</svg>
				</a>
			</li>
			<li class="breadcrump-item"><a href="${pageContext.request.contextPath }/guest/list.jsp">
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
		  				<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5"/>
					</svg>
				</a>
			</li>
			<li class="breadcrump-item active">글추가</li>
		</ol>
		<h1>게시글 작성</h1>
		<form action="${pageContext.request.contextPath }/guest/insert.jsp" method="post">		
				<div class="form-floating mb-3">
					<input class="form-control" placeholder="작성자 입력.." type="text" id="writer" name = "writer"/>
					<label for="writer" class="col-form-label col-sm-2">작성자</label>
				</div>
					
				<div class="form-floating mb-3">
					<textarea class="form-control" placeholder="게시글 입력..." style="height:200px" name = "content" id="content" cols="30" rows="10"/></textarea>
					<label for="content" class="col-form-label col-sm-2">게시글</label>
				</div>
					
				<div class="form-floating mb-3">
					<input class="form-control" placeholder="비번 입력..." type="password" id="pwd" name = "pwd"/>
					<label for="pwd" class="col-form-label col-sm-2">비번</label>
				</div>
				<button class="btn btn-outline-success btn-sm" type="submit">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-upload" viewBox="0 0 16 16">
					  <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
					  <path d="M7.646 1.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 2.707V11.5a.5.5 0 0 1-1 0V2.707L5.354 4.854a.5.5 0 1 1-.708-.708z"/>
					</svg>
				</button>
			</form>
		</div>
		<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>