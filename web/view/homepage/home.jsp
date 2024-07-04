<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <style>
        .logoo img {
            width: 150px; /* Thay đổi kích thước tùy ý */

        }
        .productprice {
            color: #ff0000; /* Màu đỏ */
            font-weight: bold;
        }
        .productprice::before {
            content: "₫ ";
        }

        .productprice .price-value {
            display: inline-block;
        }

        .productprice .price-value:not(:last-child)::after {
            content: ",";
            margin-right: 3px;
        }


        .config {
            color: #add8e6; /* Màu xanh dương nhạt */
        }
        .page-number ul {
            display: flex;
            justify-content: center;
            list-style-type: none;
            padding: 0;
            margin: 20px 0;
        }

        .page-number li {
            margin: 0 5px;
        }

        .page-number li a {
            display: inline-block;
            padding: 8px 12px;
            text-decoration: none;
            color: #333;
            background-color: #add8e6;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }

        .page-number li a.active,
        .page-number li a:hover {
            background-color: #333;
            color: #fff;
        }

        .page-number li a.angle {
            font-size: 18px;
            padding: 8px 14px;
        }
    </style>
    <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo2-shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Jun 2024 03:13:29 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Porto - Bootstrap eCommerce Template</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Porto - Bootstrap eCommerce Template">
        <meta name="author" content="SW-THEMES">

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/icons/favicon.png">

        <script>
            var minPrice = document.getElementById("filter-price-range").textContent.split(" - ")[0];
            var maxPrice = document.getElementById("filter-price-range").textContent.split(" - ")[1];
            WebFontConfig = {
                google: {
                    families: ['Open+Sans:300,400,600,700,800', 'Poppins:300,400,500,600,700', 'Shadows+Into+Light:400', 'Segoe+Script:300,400,500,600']
                }
            };
            (function (d) {
                var wf = d.createElement('script'),
                        s = d.scripts[0];
                wf.src = '${pageContext.request.contextPath}/js/webfont.js';
                wf.async = true;
                s.parentNode.insertBefore(wf, s);
            })(document);
        </script>

        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

        <!-- Main CSS File -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/demo2.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/fontawesome-free/css/all.min.css">
    </head>

    <body>
        <div class="page-wrapper">
            <header class="header">

                <jsp:include page="../common/header-top.jsp"></jsp:include>
                <jsp:include page="../common/header-middle.jsp"></jsp:include>
                <jsp:include page="../common/header-bottom.jsp"></jsp:include>

                </header>
                <!-- End .header -->

                <main class="main">
                    <div class="category-banner-container bg-gray">
                        <div class="category-banner banner text-uppercase" style="background: no-repeat 60%/cover url('${pageContext.request.contextPath}/images/simple.png');">
                        <div class="container position-relative">
                            <div class="row">
                                <div class="pl-lg-5 pb-5 pb-md-0 col-sm-5 col-xl-4 col-lg-4 offset-1">
                                    <h3 style="color: white">Navicon<br>Deals</h3>
                                    <a href="demo2-shop.html" class="btn btn-dark">Get Yours!</a>
                                </div>
                                <div class="pl-lg-3 col-sm-4 offset-sm-0 offset-1 pt-3">
                                    <div class="coupon-sale-content">
                                        <h4 class="m-b-1 coupon-sale-text bg-white text-transform-none">Exclusive COUPON
                                        </h4>
                                        <h5 style="color: white" class="mb-2 coupon-sale-text d-block ls-10 p-0"><i class="ls-0">UP TO</i><b class="text-dark">$100</b> OFF</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <nav aria-label="breadcrumb" class="breadcrumb-nav">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="demo2.html"><i class="icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#">Men</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Accessories</li>
                        </ol>
                    </nav>

                    <div class="row">
                        <div class="col-lg-9 main-content">
                            <nav class="toolbox sticky-header" data-sticky-options="{'mobile': true}">
                                <div class="toolbox-left">
                                    <a href="#" class="sidebar-toggle"><svg data-name="Layer 3" id="Layer_3"
                                                                            viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                                        <line x1="15" x2="26" y1="9" y2="9" class="cls-1"></line>
                                        <line x1="6" x2="9" y1="9" y2="9" class="cls-1"></line>
                                        <line x1="23" x2="26" y1="16" y2="16" class="cls-1"></line>
                                        <line x1="6" x2="17" y1="16" y2="16" class="cls-1"></line>
                                        <line x1="17" x2="26" y1="23" y2="23" class="cls-1"></line>
                                        <line x1="6" x2="11" y1="23" y2="23" class="cls-1"></line>
                                        <path
                                            d="M14.5,8.92A2.6,2.6,0,0,1,12,11.5,2.6,2.6,0,0,1,9.5,8.92a2.5,2.5,0,0,1,5,0Z"
                                            class="cls-2"></path>
                                        <path d="M22.5,15.92a2.5,2.5,0,1,1-5,0,2.5,2.5,0,0,1,5,0Z" class="cls-2"></path>
                                        <path d="M21,16a1,1,0,1,1-2,0,1,1,0,0,1,2,0Z" class="cls-3"></path>
                                        <path
                                            d="M16.5,22.92A2.6,2.6,0,0,1,14,25.5a2.6,2.6,0,0,1-2.5-2.58,2.5,2.5,0,0,1,5,0Z"
                                            class="cls-2"></path>
                                        </svg>
                                        <span>Filter</span>
                                    </a>

                                    <div class="toolbox-item toolbox-sort">
                                        <label>Sắp xếp:</label>
                                        <div class="select-custom">
                                            <div class="d-flex justify-content-end mb-3">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Sắp xếp
                                                    </button>
                                                    <c:set var="categoryIdN" value="${param.categoryId}" />
                                                    <c:set var="brandIdN" value="${param.brandId}" />
                                                    <c:set var="keyword" value="${param.keyword}" />
                                                    <c:set var="minPrice" value="${param.minPrice}" />
                                                    <c:set var="maxPrice" value="${param.maxPrice}" />

                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <c:choose>
                                                            <c:when test="${param.categoryId != null}">

                                                                <a href="${pageContext.request.contextPath}/home?search=category&categoryId=${categoryIdN}&sort=price-asc">Giá tăng dần</a>
                                                                <br/>
                                                                <a href="${pageContext.request.contextPath}/home?search=category&categoryId=${categoryIdN}&sort=price-dsec">Giá giảm dần</a>
                                                            </c:when>
                                                            <c:when test="${param.brandId != null}">
                                                                <a href="${pageContext.request.contextPath}/home?search=brand&brandId=${brandIdN}&sort=price-asc">Giá tăng dần</a>
                                                                <br/>
                                                                <a href="${pageContext.request.contextPath}/home?search=brand&brandId=${brandIdN}&sort=price-dsec">Giá giảm dần</a>
                                                            </c:when>
                                                            <c:when test="${param.keyword != null}">
                                                                <a href="${pageContext.request.contextPath}/home?search=searchByName&keyword=${keyword}&sort=price-asc">Giá tăng dần</a>
                                                                <br/>
                                                                <a href="${pageContext.request.contextPath}/home?search=searchByName&keyword=${keyword}&sort=price-dsec">Giá giảm dần</a>
                                                            </c:when>
                                                            <c:when test="${param.minPrice != null && param.maxPrice != null}">
                                                                <a href="${pageContext.request.contextPath}/home?search=searchByRange&minPrice=${minPrice}&maxPrice=${maxPrice}&sort=price-asc">Giá tăng dần</a>
                                                                <br/>
                                                                <a href="${pageContext.request.contextPath}/home?search=searchByRange&minPrice=${minPrice}&maxPrice=${maxPrice}&sort=price-asc">Giá giảm dần</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a href="${pageContext.request.contextPath}/home?sort=price-asc">Giá tăng dần</a>
                                                                <br/>
                                                                <a href="${pageContext.request.contextPath}/home?sort=price-dsec">Giá giảm dần</a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End .toolbox-left -->


                                    <!-- End .toolbox-right -->
                            </nav>

                            <div class="row products-group">
                                <c:forEach items="${listProducts}" var="pro">
                                    <div class="col-6 col-sm-4">
                                        <div class="product-default inner-quickview inner-icon">
                                            <figure class="img-effect">
                                                <a href="product-detail?id=${pro.id}">
                                                    <img src=${pro.image} width="205" height="205" alt="product">
                                                    <img src=${pro.detailImage1} width="205" height="205" alt="product">
                                                </a>
                                                <div class="label-group">
                                                    <div class="product-label label-hot">HOT</div>
                                                    <div class="product-label label-sale">SUMMER SALE</div>
                                                </div>
                                                <div class="btn-icon-group">
                                                    <form id="my-form" action="payment?action=add-product" method="POST" onsubmit="return checkQuantityAndSubmit();">
                                                        <input type="hidden" name="id" value="${pro.id}" />
                                                        <div class="product-single-qty" style="display: none;">
                                                            <input class="horizontal-quantity form-control" type="text" name="quantity" value="1">
                                                        </div>
                                                        <c:if test="${pro.quantity > 0}">
                                                             <a href="#" class="btn-icon btn-add-cart product-type-simple" onclick="return this.closest('form').submit();">
                                                            <i class="icon-shopping-cart"></i>
                                                        </a>
                                                        </c:if>
                                                    </form>
                                                </div>

                                                <script>
                                                    function checkQuantityAndSubmit() {
                                                        // Lấy giá trị của quantity
                                                        var quantityInput = document.querySelector('#my-form input[name="quantity"]');
                                                        var quantity = parseInt(quantityInput.value);

                                                        // Kiểm tra nếu quantity nhỏ hơn hoặc bằng 0
                                                        if (quantity <= 0) {
                                                            alert('Sản phẩm đã hết hàng.');
                                                            return false; // Ngăn không cho form được submit
                                                        }

                                                        // Nếu quantity hợp lệ, tiếp tục submit form
                                                        return true;
                                                    }
                                                </script>


                                                <a href="ajax/product-quick-view.html" class="btn-quickview" title="Quick View">Quick View
                                                </a>
                                            </figure>
                                            <div class="product-details">
                                                <div class="category-wrap">
                                                    <!--                                                    <div class="category-list">
                                                                                                            <a href="home" class="product-category">${cate.category}</a>
                                                                                                        </div>-->
                                                    <a href="wishlist.html" title="Wishlist" class="btn-icon-wish"><i
                                                            class="icon-heart"></i></a>
                                                </div>
                                                <h3 class="product-title">
                                                    <a href="product-detail?id=${pro.id}">${pro.name}</a>
                                                </h3>
                                                <div class="ratings-container">

                                                    <!-- End .product-ratings -->
                                                </div>
                                                <!-- End .product-container -->
                                                <span class="config">${pro.config}</span>
                                                <div class="price-box">
                                                    <span class="old-price">${pro.oldPrice}</span>
                                                    <c:choose>
                                                        <c:when test="${pro.quantity == 0}">
                                                            <span class="product-price" style="color:red;">HẾT HÀNG</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="product-price">${pro.price}</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <!-- End .price-box -->
                                            </div>
                                            <!-- End .product-details -->
                                        </div>

                                    </div>
                                    <!-- End .col-sm-4 -->

                                </c:forEach>
                            </div>
                            <!-- End .row -->

                            <nav class="toolbox toolbox-pagination">

                                <div class="page-number">
                                    <ul>
                                        <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                                            <!--<li><a href="#" class="active">1</a></li>-->
                                            <li class="${pageNumber == pageControl.page ? 'active' : ''}">
                                                <a href="${pageControl.urlPattern}page=${pageNumber}">${pageNumber}</a>
                                            </li>
                                        </c:forEach>
                                        <li><a href="#" class="angle"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <!-- End .col-lg-9 -->

                        <div class="sidebar-overlay"></div>
                        <aside class="sidebar-shop col-lg-3 order-lg-first mobile-sidebar">
                            <div class="sidebar-wrapper">
                                <div class="widget">
                                    <h3 class="widget-title">
                                        <a data-toggle="collapse" href="#widget-body-2" role="button" aria-expanded="true" aria-controls="widget-body-2">Phân Loại</a>
                                    </h3>

                                    <div class="collapse show" id="widget-body-2">
                                        <div class="widget-body">
                                            <ul class="cat-list">
                                                <li>
                                                    <a href="#widget-category-1" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="widget-category-1">
                                                        Loại Máy<span class="products-count">(4)</span>
                                                        <span class="toggle"></span>
                                                    </a>
                                                    <div class="collapse show" id="widget-category-1">
                                                        <c:forEach items="${listCategory}" var ="cate">
                                                            <ul class="cat-sublist">
                                                                <li><span class="products-count"><a href="home?search=category&categoryId=${cate.id}">${cate.name}<span>(15)</span></a></span></li>
                                                                <!--                                                            <li>Mỏng nhẹ<span class="products-count">(2)</span></li>
                                                                                                                            <li>Xoay gập<span class="products-count">(3)</span></li>
                                                                                                                            <li>Đồ họa<span class="products-count">(4)</span></li>-->
                                                            </ul>
                                                        </c:forEach>
                                                    </div>
                                                </li>
                                                <li>
                                                    <a href="#widget-category-2" class="collapsed" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="widget-category-2">
                                                        Thương Hiệu<span class="products-count">(5)</span>
                                                        <span class="toggle"></span>
                                                    </a>
                                                    <div class="collapse" id="widget-category-2">
                                                        <c:forEach items="${listBrand}" var ="bran">
                                                            <ul class="cat-sublist">
                                                                <li><span class="products-count"><a href="home?search=brand&brandId=${bran.id}">${bran.name}<span>(15)</span></a></li>
                                                            </ul>
                                                        </c:forEach>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                        <!-- End .widget-body -->
                                    </div>
                                    <!-- End .collapse -->
                                </div>
                                <!-- End .widget -->

                                <div class="widget">
                                    <h3 class="widget-title">
                                        <a data-toggle="collapse" href="#widget-body-3" role="button" aria-expanded="true" aria-controls="widget-body-3">Lọc giá</a>
                                    </h3>

                                    <style>
                                        .filter-button {
                                            background-color: #0188cc; /* Màu nền xanh dương */
                                            color: white; /* Chữ trắng */
                                            padding: 4px 8px; /* Khoảng cách xung quanh nội dung nhỏ hơn */
                                            border: none;
                                            border-radius: 4px;
                                            cursor: pointer;
                                            font-size: 14px; /* Kích thước chữ nhỏ hơn */
                                        }

                                        .filter-button:hover {
                                            background-color: #0056b3; /* Màu nền xanh dương nhạt hơn khi hover */
                                        }
                                    </style>

                                    <div class="price-filter">
                                        <form action="home" method = "get">
                                            <input type="hidden" name="search" value="searchByRange"/>
                                            <label for="min-price" style="color: #808080;">Giá tối thiểu:</label>
                                            <input type="number" id="min-price" name="minPrice" placeholder="Nhập giá tối thiểu">

                                            <label for="max-price" style="color: #808080;">Giá tối đa:</label>
                                            <input type="number" id="max-price" name="maxPrice" placeholder="Nhập giá tối đa">
                                            <br/>
                                            <br/>
                                            <button id="filter-btn" class="filter-button">Lọc</button>
                                        </form>
                                    </div>
                                    <!-- End .collapse -->
                                </div>
                                <!-- End .widget -->


                                <!-- End .widget -->

                                <!-- End .widget -->

                                <div class="widget widget-featured">
                                    <h3 class="widget-title">Featured</h3>

                                    <div class="widget-body">
                                        <div class="owl-carousel widget-featured-products">
                                            <div class="featured-col">
                                                <c:forEach items="${listProductsStag}" var ="pro" end ="2">
                                                    <form action="home" method = "get">
                                                        <input type="hidden" name="search" value="searchTopStag"/>
                                                        <div class="product-default left-details product-widget">
                                                            <figure>
                                                                <a href="product-detail?id=${pro.id}">
                                                                    <img src=${pro.image} width="75" height="75" alt="product" />
                                                                    <img src=${pro.detailImage1} width="75" height="75" alt="product" />
                                                                </a>
                                                            </figure>
                                                            <div class="product-details">
                                                                <h3 class="product-title"> <a href="product-detail?id=${pro.id}">${pro.name}</a> </h3>
                                                                <div class="ratings-container">

                                                                    <!-- End .product-ratings -->
                                                                </div>
                                                                <!-- End .product-container -->
                                                                <div class="price-box">
                                                                    <c:choose>
                                                                        <c:when test="${pro.quantity == 0}">
                                                                            <span class="product-price" style="color:red;">HẾT HÀNG</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <span class="product-price">${pro.price}</span>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </div>
                                                                <!-- End .price-box -->
                                                            </div>
                                                            <!-- End .product-details -->
                                                        </div>
                                                    </form>
                                                </c:forEach>
                                            </div>
                                            <!-- End .featured-col -->

                                            <div class="featured-col">
                                                <div class="product-default left-details product-widget">
                                                    <figure>
                                                        <a href="demo2-product.html">
                                                            <img src="${pageContext.request.contextPath}/images/products/small/product-1.jpg" width="75" height="75" alt="product" />
                                                            <img src="${pageContext.request.contextPath}/images/products/small/product-1-2.jpg" width="75" height="75" alt="product" />
                                                        </a>
                                                    </figure>
                                                    <div class="product-details">
                                                        <h3 class="product-title"> <a href="demo2-product.html">Ultimate 3D
                                                                Bluetooth Speaker</a> </h3>
                                                        <div class="ratings-container">
                                                            <div class="product-ratings">
                                                                <span class="ratings" style="width:100%"></span>
                                                                <!-- End .ratings -->
                                                                <span class="tooltiptext tooltip-top"></span>
                                                            </div>
                                                            <!-- End .product-ratings -->
                                                        </div>
                                                        <!-- End .product-container -->
                                                        <div class="price-box">
                                                            <span class="product-price">$49.00</span>
                                                        </div>
                                                        <!-- End .price-box -->
                                                    </div>
                                                    <!-- End .product-details -->
                                                </div>

                                            </div>
                                            <!-- End .featured-col -->
                                        </div>
                                        <!-- End .widget-featured-slider -->
                                    </div>
                                    <!-- End .widget-body -->
                                </div>
                                <!-- End .widget -->

                                <div class="widget widget-block">
                                    <h3 class="widget-title">Custom HTML Block</h3>
                                    <h5>This is a custom sub-title.</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus </p>
                                </div>
                                <!-- End .widget -->
                            </div>
                            <!-- End .sidebar-wrapper -->
                        </aside>
                        <!-- End .col-lg-3 -->
                    </div>
                    <!-- End .row -->
                </div>
                <!-- End .container -->

                <div class="mb-4"></div>
                <!-- margin -->
            </main>
            <!-- End .main -->

            <jsp:include page="../common/footer-middle.jsp"></jsp:include>
            </div>
            <!-- End .page-wrapper -->

            <div class="loading-overlay">
                <div class="bounce-loader">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>

            <div class="mobile-menu-overlay"></div>
            <!-- End .mobil-menu-overlay -->

            <div class="mobile-menu-container">
                <div class="mobile-menu-wrapper">
                    <span class="mobile-menu-close"><i class="fa fa-times"></i></span>
                    <nav class="mobile-nav">
                        <ul class="mobile-menu">
                            <li><a href="demo2.html">Home</a></li>
                            <li>
                                <a href="demo2-shop.html">Categories</a>
                                <ul>
                                    <li><a href="category.html">Full Width Banner</a></li>
                                    <li><a href="category-banner-boxed-slider.html">Boxed Slider Banner</a></li>
                                    <li><a href="category-banner-boxed-image.html">Boxed Image Banner</a></li>
                                    <li><a href="https://www.portotheme.com/html/porto_ecommerce/category-sidebar-left.html">Left Sidebar</a></li>
                                    <li><a href="category-sidebar-right.html">Right Sidebar</a></li>
                                    <li><a href="category-off-canvas.html">Off Canvas Filter</a></li>
                                    <li><a href="category-horizontal-filter1.html">Horizontal Filter 1</a></li>
                                    <li><a href="category-horizontal-filter2.html">Horizontal Filter 2</a></li>
                                    <li><a href="#">List Types</a></li>
                                    <li><a href="category-infinite-scroll.html">Ajax Infinite Scroll<span
                                                class="tip tip-new">New</span></a></li>
                                    <li><a href="category.html">3 Columns Products</a></li>
                                    <li><a href="category-4col.html">4 Columns Products</a></li>
                                    <li><a href="category-5col.html">5 Columns Products</a></li>
                                    <li><a href="category-6col.html">6 Columns Products</a></li>
                                    <li><a href="category-7col.html">7 Columns Products</a></li>
                                    <li><a href="category-8col.html">8 Columns Products</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="demo2-product.html">Products</a>
                                <ul>
                                    <li>
                                        <a href="#" class="nolink">PRODUCT PAGES</a>
                                        <ul>
                                            <li><a href="product.html">SIMPLE PRODUCT</a></li>
                                            <li><a href="product-variable.html">VARIABLE PRODUCT</a></li>
                                            <li><a href="product.html">SALE PRODUCT</a></li>
                                            <li><a href="product.html">FEATURED & ON SALE</a></li>
                                            <li><a href="product-sticky-info.html">WIDTH CUSTOM TAB</a></li>
                                            <li><a href="product-sidebar-left.html">WITH LEFT SIDEBAR</a></li>
                                            <li><a href="product-sidebar-right.html">WITH RIGHT SIDEBAR</a></li>
                                            <li><a href="product-addcart-sticky.html">ADD CART STICKY</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="nolink">PRODUCT LAYOUTS</a>
                                        <ul>
                                            <li><a href="product-extended-layout.html">EXTENDED LAYOUT</a></li>
                                            <li><a href="product-grid-layout.html">GRID IMAGE</a></li>
                                            <li><a href="product-full-width.html">FULL WIDTH LAYOUT</a></li>
                                            <li><a href="product-sticky-info.html">STICKY INFO</a></li>
                                            <li><a href="product-sticky-both.html">LEFT & RIGHT STICKY</a></li>
                                            <li><a href="product-transparent-image.html">TRANSPARENT IMAGE</a></li>
                                            <li><a href="product-center-vertical.html">CENTER VERTICAL</a></li>
                                            <li><a href="#">BUILD YOUR OWN</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Pages<span class="tip tip-hot">Hot!</span></a>
                                <ul>
                                    <li>
                                        <a href="wishlist.html">Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="cart.html">Shopping Cart</a>
                                    </li>
                                    <li>
                                        <a href="checkout.html">Checkout</a>
                                    </li>
                                    <li>
                                        <a href="dashboard.html">Dashboard</a>
                                    </li>
                                    <li>
                                        <a href="login.html">Login</a>
                                    </li>
                                    <li>
                                        <a href="forgot-password.html">Forgot Password</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a></li>
                            <li>
                                <a href="#">Elements</a>
                                <ul class="custom-scrollbar">
                                    <li><a href="element-accordions.html">Accordion</a></li>
                                    <li><a href="element-alerts.html">Alerts</a></li>
                                    <li><a href="element-animations.html">Animations</a></li>
                                    <li><a href="element-banners.html">Banners</a></li>
                                    <li><a href="element-buttons.html">Buttons</a></li>
                                    <li><a href="element-call-to-action.html">Call to Action</a></li>
                                    <li><a href="element-countdown.html">Count Down</a></li>
                                    <li><a href="element-counters.html">Counters</a></li>
                                    <li><a href="element-headings.html">Headings</a></li>
                                    <li><a href="element-icons.html">Icons</a></li>
                                    <li><a href="element-info-box.html">Info box</a></li>
                                    <li><a href="element-posts.html">Posts</a></li>
                                    <li><a href="element-products.html">Products</a></li>
                                    <li><a href="element-product-categories.html">Product Categories</a></li>
                                    <li><a href="element-tabs.html">Tabs</a></li>
                                    <li><a href="element-testimonial.html">Testimonials</a></li>
                                </ul>
                            </li>
                        </ul>

                        <ul class="mobile-menu mt-2 mb-2">
                            <li class="border-0">
                                <a href="#">
                                    Special Offer!
                                </a>
                            </li>
                            <li class="border-0">
                                <a href="https://1.envato.market/DdLk5" target="_blank">
                                    Buy Porto!
                                    <span class="tip tip-hot">Hot</span>
                                </a>
                            </li>
                        </ul>

                        <ul class="mobile-menu">
                            <li><a href="login.html">My Account</a></li>
                            <li><a href="demo2-contact.html">Contact Us</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="wishlist.html">My Wishlist</a></li>
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="login.html" class="login-link">Log In</a></li>
                        </ul>
                    </nav>
                    <!-- End .mobile-nav -->

                    <form class="search-wrapper mb-2" action="#">
                        <input type="text" class="form-control mb-0" placeholder="Search..." required />
                        <button class="btn icon-search text-white bg-transparent p-0" type="submit"></button>
                    </form>

                    <div class="social-icons">
                        <a href="#" class="social-icon social-facebook icon-facebook" target="_blank">
                        </a>
                        <a href="#" class="social-icon social-twitter icon-twitter" target="_blank">
                        </a>
                        <a href="#" class="social-icon social-instagram icon-instagram" target="_blank">
                        </a>
                    </div>
                </div>
                <!-- End .mobile-menu-wrapper -->
            </div>
            <!-- End .mobile-menu-container -->

            <div class="sticky-navbar">
                <div class="sticky-info">
                    <a href="demo2.html">
                        <i class="icon-home"></i>Home
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="demo2-shop.html" class="">
                        <i class="icon-bars"></i>Categories
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="wishlist.html" class="">
                        <i class="icon-wishlist-2"></i>Wishlist
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="https://www.portotheme.com/html/porto_ecommerce/my-account.html" class="">
                        <i class="icon-user-2"></i>Account
                    </a>
                </div>
                <div class="sticky-info">
                    <a href="cart.html" class="">
                        <i class="icon-shopping-cart position-relative">
                            <span class="cart-count badge-circle">3</span>
                        </i>Cart
                    </a>
                </div>
            </div>

            <a id="scroll-top" href="#top" title="Top" role="button"><i class="icon-angle-up"></i></a>

            <!-- Plugins JS File -->
            <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/plugins.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/nouislider.min.js"></script>

        <!-- Main JS File -->
        <script src="${pageContext.request.contextPath}/js/main.min.js"></script>

    </body>


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo2-shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Jun 2024 03:13:31 GMT -->
</html>