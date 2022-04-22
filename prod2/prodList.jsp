<%@page import="com.study.common.util.ProductList"%>
<%@page import="java.util.List"%>
<%@page import="com.study.common.vo.ProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>제품 목록</title>
<style>
.prod-list tbody td {border: 1px dashed;}
.prod-list tbody ul {padding-left: 20px;}
.prod-list tbody ul li {list-style: none; line-height: 1.4em;}

.prod-title a ,
.prod-title a:active,
.prod-title a:focus   {text-overflow:ellipsis; text-decoration: none; }

.prod-image {text-align: center;}
.prod-image img {
	 height: 150px; 
}
</style>
</head>
<body>
<%
	List<ProdVO> prodList = ProductList.getProductList();
	request.setAttribute("prodList", prodList);
%>
<div class="container">
<h3>제품 목록</h3>
<table class="prod-list">
	<caption class="hidden"><em>컴퓨터 제품 목록</em></caption>
	<colgroup>
		<col style="width: 33%;">
		<col style="width: 33%;">
		<col />
	</colgroup>
	<tbody>
		<c:forEach items="${prodList}" var="prod" varStatus="status">
			<c:if test="${status.index % 3 == 0}"><tr></c:if>
				<td>
					<ul>
						<li class="prod-image"><a href="prodView.jsp?prodId=${prod.prodId}"><img alt="" src="/study${prod.prodImg}"></a>
						<li class="prod-title"><a href="prodView.jsp?prodId=${prod.prodId}">${prod.prodName}</a>
						<li class="prod-price">${prod.prodPrice }원
						<li class="prod-reg-date">등록월 ${prod.prodRegDate }
					</ul>
				</td>
			<c:if test="${status.index % 3 == 2}"></tr></c:if>
		</c:forEach>	
	</tbody>
</table>
</div>
</body>
</html>
