<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//get 방식 파라미터로 전송되는 입력한 닉네임을 읽어온다
	String nick = request.getParameter("nick");
	
	boolean canUse=true;
	if(nick.equals("gura")){
		canUse=false;
	}
%>
{"canUse": <%=canUse %>}