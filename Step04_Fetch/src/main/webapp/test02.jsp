<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test2</title>
</head>
<body>
	<input type="text" id="msg" placeholder="메세지입력"/>
	<button id="sendBtn">
		전송
	</button>
	<button id="sendBtn2">전송2</button>
	<button id="sendBtn3">전송3</button>
	<script>
		document.querySelector("#sendBtn").addEventListener("click",()=>{
			const msg = document.querySelector("#msg").value;
			
			fetch("send.jsp?msg="+msg)
			.then(res=>res.text())
			.then((data)=>{
				console.log(data)
			})
		})
		document.querySelector("#sendBtn2").addEventListener("click",()=>{
			const msg = document.querySelector("#msg").value;
			
			fetch("send2.jsp?msg="+msg)
			.then(res=>res.text())
			.then((data)=>{
				console.log(data)
				//data는 json형식의 문자열이기 때문에 제대로 활용하려면 object로 바꿔야함
				const result = JSON.parse(data);
				//result는 object임
			})
		})
		document.querySelector("#sendBtn3").addEventListener("click",()=>{
			const msg = document.querySelector("#msg").value;
			
			fetch("send2.jsp?msg="+msg)
			.then(res=>res.text())
			.then((data)=>{
				//data는 응답된 json 문자열이 object로 바뀐 data이다
				console.log(data)
			})
		})
	</script>
</body>
</html>