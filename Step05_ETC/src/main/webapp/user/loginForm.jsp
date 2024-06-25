<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<h3>loginform</h3>
		<form action="${pageContext.request.contextPath }/user/login.jsp" method="post">
			<div class="mb-2">
				<label for="id" class="form-label">아이디</label>
				<input type="text" name="id" id="id" class="form-control" />
			</div>
			<div class="mb-2">
				<label for="pwd" class="form-label">비번</label>
				<input type="password" name="pwd" id="pwd" class="form-control" />
			</div>
			<button class="btn btn-primary" type="submit">로그인</button>
		</form>
	</div>
</body>
</html>