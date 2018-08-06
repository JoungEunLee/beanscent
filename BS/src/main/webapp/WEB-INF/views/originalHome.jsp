<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<style type="text/css">
#c1{
	display: inline-block;
	background: url('/resources/image/coffee_sample.PNG') 0 0 transparent no-repeat;
	width: 200px;
	height: 150px;
}
</style>
	<title>Home</title>
</head>
<body>


<c:choose>
	<c:when test="${session == null}">
		<a href="/member/login.do">로그인</a>
	</c:when>
	<c:otherwise>
		${session} 님이 로그인중입니다.
		<a href="/member/logout.do">로그아웃</a>
	</c:otherwise>
</c:choose>





 <div>
<a href="/product/productList.do" id="list">상품목록보기</a>	
</div>

 
</body>
</html>
  