<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<title>Colo Shop Categories</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/categories_styles.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/categories_responsive.css">
</head>

<body>
<div class="super_container">

<!-- Header -->
  <%@ include file="../common/header.jsp" %>
  <div class="fs_menu_overlay"></div>
  <%@ include file="../common/hamburger.jsp" %>
  <div class="container product_section_container">
    <div class="row">
      <div class="col product_section clearfix">

        <!-- Breadcrumbs -->

        <div class="breadcrumbs d-flex flex-row align-items-center">
          <ul>
            <li><a href="index.html">Home</a></li>
            <li class="active"><a href="index.html"><i class="fa fa-angle-right" aria-hidden="true"></i>블랜드</a></li>
          </ul>
        </div>
        <!-- Main Content -->

        <div class="main_content">

          <!-- Products -->

          <div class="products_iso">
            <div class="row">
              <div class="col">

                <!-- Product Sorting -->

                <div class="product_sorting_container product_sorting_container_top">
                  <ul class="product_sorting">
                    <li>
                      <span class="type_sorting_text">Default Sorting</span>
                      <i class="fa fa-angle-down"></i>
                      <ul class="sorting_type">
                        <li class="type_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Default Sorting</span></li>
                        <li class="type_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
                        <li class="type_sorting_btn" data-isotope-option='{ "sortBy": "name" }'><span>Product Name</span></li>
                      </ul>
                    </li>
                    <li>
                      <span>Show</span>
                      <span class="num_sorting_text">6</span>
                      <i class="fa fa-angle-down"></i>
                      <ul class="sorting_num">
                        <li class="num_sorting_btn"><span>6</span></li>
                        <li class="num_sorting_btn"><span>12</span></li>
                        <li class="num_sorting_btn"><span>24</span></li>
                      </ul>
                    </li>
                  </ul>
                  <div class="pages d-flex flex-row align-items-center">
                    <div class="page_current">
                      <span>1</span>
                      <ul class="page_selection">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                      </ul>
                    </div>
                    <div class="page_total"><span>of</span> 3</div>
                    <div id="next_page" class="page_next"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                  </div>

                </div>

                <!-- Product Grid -->

                <div class="product-grid">

                  <!-- Product 1 -->
                  <c:forEach var="row" items="${list}">

                  <div class="product-item">
                    <div class="product discount product_filter">
                      <div class="product_image">
                        <img src="/images/${row.url}" alt="">
                      </div>
                      <div class="favorite favorite_left"></div>
                      <div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>best</span></div>
                      <div class="product_info">
                        <h6 class="product_name"><a href="product/blendedDetail/${row.id}">${row.name}</a></h6>
                        <h5 class="product_detail">${row.detail}</h5>
                        <div class="product_price"><fmt:formatNumber value="${row.price}" pattern="###,###,###"/></div>
                      </div>
                    </div>
                    <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                  </div>
                  </c:forEach>

                 
 

                  
                <!-- Product Sorting -->
<!-- 
                <div class="product_sorting_container product_sorting_container_bottom clearfix">
                  <ul class="product_sorting">
                    <li>
                      <span>Show:</span>
                      <span class="num_sorting_text">04</span>
                      <i class="fa fa-angle-down"></i>
                      <ul class="sorting_num">
                        <li class="num_sorting_btn"><span>01</span></li>
                        <li class="num_sorting_btn"><span>02</span></li>
                        <li class="num_sorting_btn"><span>03</span></li>
                        <li class="num_sorting_btn"><span>04</span></li>
                      </ul>
                    </li>
                  </ul>
                  <span class="showing_results">Showing 1–3 of 12 results</span>
                  <div class="pages d-flex flex-row align-items-center">
                    <div class="page_current">
                      <span>1</span>
                      <ul class="page_selection">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                      </ul>
                    </div>
                    <div class="page_total"><span>of</span> 3</div>
                    <div id="next_page_1" class="page_next"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                  </div>

                </div> -->

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
</div>
      
      
      
      
      
		
		
  
		
		

<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/styles/bootstrap4/popper.js"></script>
<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/resources/plugins/easing/easing.js"></script>
<script src="/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="/resources/js/categories_custom.js"></script>


</body>
</html>