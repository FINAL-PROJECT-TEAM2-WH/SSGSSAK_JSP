<%@page import="member.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDTO loginMember = (MemberDTO)session.getAttribute("auth");
	String id = loginMember.getId();
	String result = String.format("{" + "\"id\":\"%s\"" + "}",id);
	System.out.print(id + " \n");
	System.out.print(result);
%>
<%= result %>