<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = request.getParameter("msg");
	
%>
{"toClient":"클라이언트에서 메세지 받음", "msg":"<%=msg %>"}