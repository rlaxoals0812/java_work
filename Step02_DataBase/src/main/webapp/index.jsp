	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<%--include 페이지에게 이부분 응답하도록 함
		include 를 시킬 때 include 될 jsp 페이지에 파라미터를 전달할 수도 있음
		
		전달된 파라미터는 HttpServletRequest 객체를 이용해서 include 된 페이지에서 추출 할 수가 있다
	 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	<div class="container">
	
		<h1>인덱스 페이지 입니다</h1>
		
		<ul class="nav flex-column">
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/test.jsp">Connection 객체 얻어오기 테스트</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">회원목록 보기</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/friend/list.jsp">친구목록 보기</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/guest/list.jsp">방명록</a></li>
		</ul>
		 <div id="carouselExampleCaptions" class="carousel slide">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="images/top01.jpg" class="d-block w-100" alt="1">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>First slide label</h5>
		        <p>Some representative placeholder content for the first slide.</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <img src="images/top02.jpg" class="d-block w-100" alt="2">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Second slide label</h5>
		        <p>Some representative placeholder content for the second slide.</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <img src="images/top03.jpg" class="d-block w-100" alt="3">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Third slide label</h5>
		        <p>Some representative placeholder content for the third slide.</p>
		      </div>
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>









