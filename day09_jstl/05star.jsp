<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:forEach begin="1" end="5" var="i" >
		<c:forEach begin="1" end="${i}">
			*
		</c:forEach>
		<br>
	</c:forEach>
	<hr><hr><hr>
	<c:forEach begin="1" end="5" var="i">
		<c:forEach begin="1" end="${i}">
			&nbsp;&nbsp;
		</c:forEach>
		<c:forEach begin="1" end="${6-i}">
			*
		</c:forEach>
		<br>
	</c:forEach>
	<hr><hr><hr>
	<c:forEach begin="0" end="4" var="i">
		<c:forEach begin="1" end="${5-i}">
			&nbsp;
		</c:forEach>
		<c:forEach begin="0" end="${(i*1)+i}">
			*
		</c:forEach>
		<br>
	</c:forEach>
</body>
</html>