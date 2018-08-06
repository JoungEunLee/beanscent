<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
<header class="header trans_300">
<!-- Top Navigation -->
		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">
								<li class="account">
								<c:choose>
								<c:when test="${session == null}">
									<a href="/member/login.do">
										<i class="fa fa-sign-in" aria-hidden="true"></i>
										로그인										
									</a>
								</c:when>
								<c:otherwise>
									<%-- ${session} 님이 로그인중입니다. --%>
									<a href="/member/logout.do">로그아웃</a>
								</c:otherwise>
								</c:choose>
								</li>
								<c:if test="${session == null}">
									<li class="account">
									<a href="#">
									<i class="fa fa-user-plus" aria-hidden="true"></i>
										회원가입
									</a>
								</li>
								</c:if>
 				<!-- 				<li class="account">
									<a href="#">
										My Account
										<i class="fa fa-angle-down"></i>
									</a>
									<ul class="account_selection">
										<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
										<li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
									</ul>
								</li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="/">BEAN<span>SECNT</span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
								<li><a href="../product/blended.do">블랜드</a></li>
								<li><a href="../product/singleOrigin.do">싱글 오리진</a></li>
								<li><a href="../product/dutch.do">더치커피</a></li>
								<li><a href="#">이달/정기</a></li>
								<li><a href="#">EVENT</a></li>
								<li><a href="#">이용안내</a></li>
								<!-- <li><a href="contact.html">contact</a></li> -->
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items">2</span>
									</a>
								</li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>