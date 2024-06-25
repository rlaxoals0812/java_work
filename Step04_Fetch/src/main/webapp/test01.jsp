<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>
	<h3>fetch함수 테스트</h3>
	<button id="myBtn">눌러</button>
	<a href="${pageContext.request.contextPath }/index.jsp">링크도 눌러</a>
	<a href="${pageContext.request.contextPath }/test02.jsp">aa</a>
	<a href="${pageContext.request.contextPath }/test03.jsp" >asd</a>
	<script>
	//페이지 로딩 시점에 버튼을 눌렀을 때 실행할 함수가 등록된다
		document.querySelector("#myBtn").addEventListener("click",()=>{
			//버튼을 누르면 index.jsp로 요청을 한다
			fetch("${pageContext.request.contextPath }/index.jsp")
			.then((res)=>{
				//요청에 대한 응답을 받으면 여기가 실행
				
			/*서버 에서 응답한 문자열이 json 형식이면
			return res.json();
			그 이외의 형식이면 html,xml,plain text 등등
			return res.text();
			*/
				
				return res.text();
			})
			.then((data)=>{
			//위의 함수가 리턴되면 연이어서 여기가 실행
			/*위의 then()함수에서 res.json() 을 리턴하면 data는 응답된 json 문자열을 
			JSON.parse() 과정을 이미 거친 object 나 array 이다
			
			위의 then()함수에서 res.text()를 리턴하면 data는 서버가 응답한 문자열(String)이다
			*/
				console.log(data);
			});
		})
	</script>
</body>
</html>