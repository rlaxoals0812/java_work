<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>폼 유효성 검증 스타일 테스트</h1>
		<form action="signup.jsp" method="post">
			<div>
				<label class="form=label" for="id">아이디</label>
				<input type="text" class="form-control is-valid" id="id" name="id"/>
				<div class="valid-feedback">잘 입력</div>
			</div>
			<div class="mb-2">
				<label for="email" class="form-label">이메일</label>
				<input type="text" class="form-control" name="email"/>
				<div class="invalid-feedback">알맞게 입력하셈</div>
				<div class="valid-feedback">잘 입력</div>
			</div>
			<button class="btn btn-primary" type="submit">가입</button>
		</form>
	</div>
</body>
</html>