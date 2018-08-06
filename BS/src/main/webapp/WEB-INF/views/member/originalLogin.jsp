<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! String path = ""; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
</head>
<body>
<form name="formLogin" method="post" action="/member/loginChk.do">

	<table border="1" width="400px">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="account" id="account"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password" id="password"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" class="btn btn-default" value="로그인">
				<c:if test="${msg == 'fail'}">
					<div style="color:red"> 아이디 또는 비밀번호가 일치하지 않습니다.</div>
				</c:if>
				<c:if test="${msg == 'logout'}">
					<div style="color:red"> 로그아웃 되었습니다.</div>
				</c:if>
			</td>
			
		</tr>
	</table>
</form>

</body>
</html>