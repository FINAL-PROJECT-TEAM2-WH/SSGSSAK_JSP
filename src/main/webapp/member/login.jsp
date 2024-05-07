<<<<<<< HEAD
<%@page import="com.util.SessionConst"%>
=======

>>>>>>> c9aa3862187e10a06b8ed81b2ac9ed8fe6219fb3
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String id = (String)session.getAttribute("auth");
    
  
	String result = String.format("{" + "\"id\":\"%s\"" + "}",id);
	System.out.print(result);
%>
<%= result %>