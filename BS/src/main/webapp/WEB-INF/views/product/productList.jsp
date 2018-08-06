<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품리스트 화면</title>
</head>
<body>
<h2>상품목록</h2>
    <table border="1">
        <tr>
            <th>상품ID번호</th>
            <th>상품이미지</th>
            <th>상품명</th>
            <th>가격</th>
        </tr>
        <c:forEach var="row" items="${list}">
        <tr>
            <td>
                ${row.id}
            </td>
            <td>
            <!--이미지 -->
                <a href="/product/productDetail/${row.id}">
                    <img src="/images/${row.url}" width="120px" height="110px">
                </a>
            </td>
            <td>
            <!-- 상품명 --> 
               <a href="#">${row.name}</a>
            </td>
            <td>
            <!--가격 -->
              <fmt:formatNumber value="${row.price}" pattern="###,###,###"/>
            </td>
        </tr>
        </c:forEach>
    </table>



</body>
</html>