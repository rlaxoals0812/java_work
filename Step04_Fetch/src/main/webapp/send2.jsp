<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg=request.getParameter("msg");
  	System.out.println("msg:"+msg);
%>    
{"isSuccess":true, "message":"메세지 잘 받았음"}