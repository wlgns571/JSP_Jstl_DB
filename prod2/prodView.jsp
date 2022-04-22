<%@page import="com.study.common.util.ProductList"%>
<%@page import="com.study.common.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>상품 상세보기</title>
<style>
.btn-basic-area { padding-top: 10px; border-top: 1px dashed;  text-align: center; }
.btn-basic-area span {padding: 10px 30px 10px; min-width: 100px;}
</style>
</head>
<body>
<%
	ProdVO prod = ProductList.getProduct(request.getParameter("prodId"));
	request.setAttribute("prod", prod);
%>
<div class="container">
<h3>상품 상세보기</h3>
<table class="prod-list">
	<caption>상품 상세보기</caption>
	<colgroup>
		<col style="width: 25%;">
		<col />
	</colgroup>
	<tbody class="prod-detail">
		<tr>
			<td>제품명</td>			
			<td>${prod.prodName}</td>
		</tr>	
		<tr>
			<td>이미지</td>			
			<td><img alt="" src="/study${prod.prodImg}"></td>
		</tr>	
		<tr>
			<td>가격</td>			
			<td>${prod.prodPrice}원</td>
		</tr>
		<tr>
			<td>등록일</td>			
			<td>${prod.prodRegDate}</td>
		</tr>
		<tr>
			<td>상세설명</td>			
			<td>${prod.prodDetail}</td>
		</tr>
	</tbody>
</table>

<div class="btn-basic-area" >
	<span><a href="/study/index.jsp" >Home</a> </span>
	<span><a href="prodList.jsp" >상품목록</a> </span>
</div>

</div><!-- container -->
</body>
</html>
