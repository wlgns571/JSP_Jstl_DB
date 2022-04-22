<%@page import="com.study.login.vo.UserVO"%>
<%@page import="com.study.common.util.ProductList"%>
<%@page import="com.study.common.vo.ProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<%@include file="/WEB-INF/inc/header.jsp"%>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	로그인에서
	<%
		UserVO user = (UserVO) session.getAttribute("USER_INFO");
		if (user != null) {
	%> 
		Html태그
	<%
		} else {
	%>
		Html태그
	<%	} %>
	
	JSTL : JSP Standard Tag Library에 이런 유용한 태그들을 모아둠
	<if test = "<%=user != null %>"> HTML 태그</if>
	<if test = "<%=user == null %>"> HTML 태그</if>
	
</body>
</html>