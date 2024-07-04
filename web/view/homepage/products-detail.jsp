<%-- 
    Document   : product-detail
    Created on : 23 Jun 2024, 15:00:28
    Author     : yeuda
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo2-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Jun 2024 03:13:28 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>ChoLaptop</title>

        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Porto - Bootstrap eCommerce Template">
        <meta name="author" content="SW-THEMES">

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logoCL/Cholaptop (2)_1.png">

        <script>
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
        <link rel="stylesheet" type="text/css" href="assets/vendor/simple-line-icons/css/simple-line-icons.min.css">
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
                    <div class="container">
                        <nav aria-label="breadcrumb" class="breadcrumb-nav">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home"><i class="icon-home"></i></a></li>
                                <li class="breadcrumb-item"><a href="#">${product.name} </a></li>
                            </ol>
                        </nav>
                        <div class="product-single-container product-single-default">
                            <div class="cart-message d-none">
                                <strong class="single-cart-notice">${product.name}</strong>
                            <span>đã được thêm vào giỏ hàng !</span>
                        </div>

                        <div class="row">
                            <div class="col-lg-5 col-md-6 product-single-gallery">
                                <div class="product-slider-container">
                                    <div class="label-group">
                                        <div class="product-label label-hot">HOT</div>
                                        <!---->
                                        <div class="product-label label-sale">
                                            -16%
                                        </div>
                                    </div>

                                    <div class="product-single-carousel owl-carousel owl-theme show-nav-hover">
                                        <div class="product-item">
                                            <img class="product-single-image" src=${product.image} data-zoom-image=${product.image} width="468" height="468" alt="product" />
                                        </div>
                                        <div class="product-item">
                                            <img class="product-single-image" src=${product.detailImage1} data-zoom-image=${product.detailImage1} width="468" height="468" alt="product" />
                                        </div>
                                        <div class="product-item">
                                            <img class="product-single-image" src=${product.detailImage2} data-zoom-image=${product.detailImage2} width="468" height="468" alt="product" />
                                        </div>
                                        <div class="product-item">
                                            <img class="product-single-image" src=${product.detailImage3} data-zoom-image=${product.detailImage3} width="468" height="468" alt="product" />
                                        </div>
                                        <div class="product-item">
                                            <img class="product-single-image" src=${product.detailImage4} data-zoom-image=${product.detailImage4} width="468" height="468" alt="product" />
                                        </div>
                                    </div>
                                    <!-- End .product-single-carousel -->
                                    <span class="prod-full-screen">
                                        <i class="icon-plus"></i>
                                    </span>
                                </div>

                                <div class="prod-thumbnail owl-dots">
                                    <div class="owl-dot">
                                        <img src=${product.image} width="110" height="110" alt="product-thumbnail" />
                                    </div>
                                    <div class="owl-dot">
                                        <img src=${product.detailImage1} width="110" height="110" alt="product-thumbnail" />
                                    </div>
                                    <div class="owl-dot">
                                        <img src=${product.detailImage2} width="110" height="110" alt="product-thumbnail" />
                                    </div>
                                    <div class="owl-dot">
                                        <img src=${product.detailImage3} width="110" height="110" alt="product-thumbnail" />
                                    </div>
                                    <div class="owl-dot">
                                        <img src=${product.detailImage4} width="110" height="110" alt="product-thumbnail" />
                                    </div>
                                </div>
                            </div>
                            <!-- End .product-single-gallery -->

                            <div class="col-lg-7 col-md-6 product-single-details">
                                <h1 class="product-title">${product.name}</h1>

                                <div class="product-nav">
                                    <div class="product-prev">
                                        <a href="#">
                                            <span class="product-link"></span>

                                            <span class="product-popup">
                                                <span class="box-content">
                                                    <img alt="product" width="150" height="150"
                                                         src="${pageContext.request.contextPath}/images/products/product-3.jpg"
                                                         style="padding-top: 0px;">

                                                    <span>Circled Ultimate 3D Speaker</span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>

                                    <div class="product-next">
                                        <a href="#">
                                            <span class="product-link"></span>

                                            <span class="product-popup">
                                                <span class="box-content">
                                                    <img alt="product" width="150" height="150"
                                                         src="${pageContext.request.contextPath}/images/products/product-4.jpg"
                                                         style="padding-top: 0px;">

                                                    <span>Blue Backpack for the Young</span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                </div>

                                <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:60%"></span>
                                        <!-- End .ratings -->
                                        <span class="tooltiptext tooltip-top"></span>
                                    </div>
                                    <!-- End .product-ratings -->

                                    <a href="#" class="rating-link">( 6 Reviews )</a>
                                </div>
                                <!-- End .ratings-container -->

                                <hr class="short-divider">

                                <div class="price-box">
                                    <span class="old-price">${product.oldPrice}</span>

                                    <c:choose>
                                        <c:when test="${product.quantity == 0}">
                                            <span class="product-price" style="color:red;">HẾT HÀNG</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="product-price">${product.price}</span>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <!-- End .price-box -->

                                <div class="product-desc">
                                    <p>
                                        ${product.config}
                                    </p>
                                </div>
                                <!-- End .product-desc -->

                                <div class="product-filters-container">
                                    <div class="product-single-filter select-custom">
                                        <label>Bảo hành:</label>
                                        <select name="orderby" class="form-control">
                                            <option value="" selected="selected">CHOOSE AN OPTION
                                            </option>
                                            <option value="1">${product.guar} tháng</option>

                                        </select>
                                    </div>



                                    <div class="product-single-filter">
                                        <label></label>
                                        <a class="font1 text-uppercase clear-btn" href="#">Clear</a>
                                    </div>
                                    <!---->
                                </div>

                                <div class="product-action">
                                    <form id = "my-form" action="payment?action=add-product" method="POST">
                                        <input type="hidden" name="id" value="${product.id}"/>


                                        <div class="product-single-qty">
                                            <input class="horizontal-quantity form-control" type="text" name="quantity" value="1">
                                        </div>
                                        <!-- End .product-single-qty -->
                                        <c:if test="${product.quantity > 0}">
                                            <a href="#" class="btn btn-dark add-cart mr-2" onclick="return this.closest('form').submit();">Add to cart</a>
                                        </c:if>
                                        <c:if test="${product.quantity <= 0}">
                                            <a class="btn btn-dark  mr-2" >Add to cart</a>
                                        </c:if>
                                    </form>
                                </div>
                                <!-- End .product-action -->

                                <hr class="divider mb-0 mt-0">

                                <div class="product-single-share mb-2">
                                    <label class="sr-only">Share:</label>

                                    <div class="social-icons mr-2">
                                        <a href="#" class="social-icon social-facebook icon-facebook" target="_blank" title="Facebook"></a>
                                        <a href="#" class="social-icon social-twitter icon-twitter" target="_blank" title="Twitter"></a>
                                        <a href="#" class="social-icon social-linkedin fab fa-linkedin-in" target="_blank" title="Linkedin"></a>
                                        <a href="#" class="social-icon social-gplus fab fa-google-plus-g" target="_blank" title="Google +"></a>
                                        <a href="#" class="social-icon social-mail icon-mail-alt" target="_blank" title="Mail"></a>
                                    </div>
                                    <!-- End .social-icons -->

                                    <a href="wishlist.html" class="btn-icon-wish add-wishlist" title="Add to Wishlist"><i
                                            class="icon-wishlist-2"></i><span>Add to
                                            Wishlist</span></a>
                                </div>
                                <!-- End .product single-share -->
                            </div>
                            <!-- End .product-single-details -->
                        </div>
                        <!-- End .row -->
                    </div>
                    <!-- End .product-single-container -->

                    <div class="product-single-tabs">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="product-tab-desc" data-toggle="tab" href="#product-desc-content" role="tab" aria-controls="product-desc-content" aria-selected="true">Description</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="product-tab-size" data-toggle="tab" href="#product-size-content" role="tab" aria-controls="product-size-content" aria-selected="true">Config</a>
                            </li>


                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="product-desc-content" role="tabpanel" aria-labelledby="product-tab-desc">
                                <div class="product-desc-content">
                                    <!--                                    <p class="mb-2">
                                                                        </p>-->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p>
                                                ${product.description}
                                            </p>

                                            <!--                                            <ul>
                                                                                            <li>Any Product types that You want - Simple, Configurable</li>
                                                                                            <li>Downloadable/Digital Products, Virtual Products</li>
                                                                                            <li>Inventory Management with Backordered items</li>
                                                                                        </ul>-->
                                        </div>

                                        <div class="col-md-6 d-flex align-items-center justify-content-center">
                                            <img src="${product.detailImage4}" class="pt-0" width="276" height="275" alt="image desc" />
                                        </div>
                                    </div>

                                    <div class="row justify-content-center">
                                        <div class="col-sm-6 col-xl-4">
                                            <div class="feature-box feature-box-simple text-center">
                                                <div class="feature-icon">
                                                    <i class="fa fa-star"></i>
                                                </div>

                                                <div class="feature-box-content">
                                                    <h3>Dedicated Service</h3>
                                                    <p>Consult our specialists for help with an order, customization, or design advice</p>
                                                </div>
                                                <!-- End .feature-box-content -->
                                            </div>
                                            <!-- End .feature-box -->
                                        </div>
                                        <!-- End .col-md-4 -->

                                        <div class="col-sm-6 col-xl-4">
                                            <div class="feature-box feature-box-simple text-center">
                                                <div class="feature-icon">
                                                    <i class="fa fa-reply"></i>
                                                </div>

                                                <div class="feature-box-content">
                                                    <h3>Free Returns</h3>
                                                    <p>Consult our specialists for help with an order, customization, or design advice</p>
                                                </div>
                                                <!-- End .feature-box-content -->
                                            </div>
                                            <!-- End .feature-box -->
                                        </div>
                                        <!-- End .col-md-4 -->

                                        <div class="col-sm-6 col-xl-4">
                                            <div class="feature-box feature-box-simple text-center">
                                                <div class="feature-icon">
                                                    <i class="fa fa-paper-plane"></i>
                                                </div>

                                                <div class="feature-box-content">
                                                    <h3>International Shipping</h3>
                                                    <p>Consult our specialists for help with an order, customization, or design advice</p>
                                                </div>
                                                <!-- End .feature-box-content -->
                                            </div>
                                            <!-- End .feature-box -->
                                        </div>
                                        <!-- End .col-md-4 -->
                                    </div>
                                    <!-- End .row -->

                                    <p class="mb-2 pb-2">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                                        in reprehenderit in voluptate velit esse cillum dolore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                        dolore.
                                    </p>
                                </div>
                                <!-- End .product-desc-content -->
                            </div>
                            <!-- End .tab-pane -->

                            <div class="tab-pane fade" id="product-size-content" role="tabpanel" aria-labelledby="product-tab-size">
                                <div class="product-size-content">
                                    <div class="row">

                                        <p>
                                            ${product.configDetail}
                                        </p>
                                    </div>
                                    <!-- End .row -->
                                </div>
                                <!-- End .product-size-content -->
                            </div>
                            <!-- End .tab-pane -->


                            <!-- End .tab-pane -->
                        </div>
                        <!-- End .tab-content -->
                    </div>
                    <!-- End .product-single-tabs -->

                    <div class="products-section pt-0 pb-2">
                        <h2 class="section-title pb-3">Related Products</h2>

                        <div class="products-slider owl-carousel owl-theme dots-top dots-small">
                            <c:forEach items="${listProductsStag}" var ="pro" end ="5">
                                <div class="product-default inner-quickview inner-icon">
                                    <figure class="img-effect">
                                        <a href="product-detail?id=${pro.id}">
                                            <img src="${pro.detailImage1}" width="265" height="265" alt="product" />
                                            <img src="${pro.detailImage2}" width="265" height="265" alt="product" />
                                        </a>
                                        <div class="label-group">
                                            <div class="product-label label-hot">HOT</div>
                                            <div class="product-label label-sale">27%</div>
                                        </div>
                                        <div class="btn-icon-group">
                                            <a href="#" class="btn-icon btn-add-cart product-type-simple"><i
                                                    class="icon-shopping-cart"></i></a>
                                        </div>
                                     
                                    </figure>
                                    <div class="product-details">
                                       
                                        <h3 class="product-title">
                                            <a href="demo2-product.html">${pro.name}</a>
                                        </h3>
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
                                            <span class="old-price">${pro.oldPrice}</span>
                                            <span class="product-price">${pro.price}</span>
                                        </div>
                                        <!-- End .price-box -->
                                    </div>
                                    <!-- End .product-details -->
                                </div>
                                </c:forEach>

                                </div>
                                <!-- End .products-slider -->
                            </div>
                            <!-- End .products-section -->

                            <hr class="mt-0 m-b-5" />


                            <!-- End .row -->
                        </div>
                        <!-- End .container -->
                    </main>
                    <!-- End .main -->

                    <footer class="footer bg-dark position-relative">
                        <div class="footer-middle">
                            <div class="container position-static">
                                <div class="footer-ribbon bg-primary text-white ls-0">
                                    Get in touch
                                </div>
                                <!-- End .footer-ribbon -->
                                <div class="row">
                                    <div class="col-lg-3 col-md-4">
                                        <div class="widget">
                                            <h4 class="widget-title font-weight-bold">Contact Info</h4>
                                            <ul class="contact-info">
                                                <li>
                                                    <span class="contact-info-label">Address:</span>123 Street Name, City, England
                                                </li>
                                                <li>
                                                    <span class="contact-info-label">Phone:</span><a href="tel:">(123)
                                                        456-7890</a>
                                                </li>
                                                <li>
                                                    <span class="contact-info-label">Email:</span> <a href="https://portotheme.com/cdn-cgi/l/email-protection#aec3cfc7c2eecbd6cfc3dec2cb80cdc1c3"><span class="__cf_email__" data-cfemail="9df0fcf4f1ddf8e5fcf0edf1f8b3fef2f0">[email&#160;protected]</span></a>
                                                </li>
                                                <li>
                                                    <span class="contact-info-label">Working Days/Hours:</span> Mon - Sun / 9:00 AM - 8:00 PM
                                                </li>
                                            </ul>
                                            <div class="social-icons">
                                                <a href="#" class="social-icon social-facebook icon-facebook" target="_blank" title="Facebook"></a>
                                                <a href="#" class="social-icon social-twitter icon-twitter" target="_blank" title="Twitter"></a>
                                                <a href="#" class="social-icon social-linkedin fab fa-linkedin-in" target="_blank" title="Linkedin"></a>
                                            </div>
                                            <!-- End .social-icons -->
                                        </div>
                                        <!-- End .widget -->
                                    </div>
                                    <!-- End .col-lg-3 -->

                                    <div class="col-lg-9 col-md-8">
                                        <div class="widget widget-newsletter">
                                            <h4 class="widget-title">Subscribe newsletter</h4>
                                            <div class="row align-items-center">
                                                <div class="col-lg-6 col-md-12 mb-1">
                                                    <p class="mb-0">Get all the latest information on Events, Sales and Offers. Sign up for newsletter today.</p>
                                                </div>
                                                <!-- End .col-lg-6 -->

                                                <div class="col-lg-6 col-md-12 mb-1">
                                                    <form action="#" class="d-flex mb-0 w-100">
                                                        <input type="email" class="form-control mb-0" placeholder="Email Address" required>

                                                        <input type="submit" class="btn btn-primary shadow-none" value="Subscribe">
                                                    </form>
                                                </div>
                                                <!-- End .col-lg-6 -->
                                            </div>
                                            <!-- End .row -->
                                        </div>
                                        <!-- End .widget -->

                                        <div class="row">
                                            <div class="col-sm-5">
                                                <div class="widget">
                                                    <h4 class="widget-title mb-1">Customer Service</h4>

                                                    <div class="links link-parts row">
                                                        <ul class="link-part col-lg-6 col-md-12 mb-0">
                                                            <li><a href="demo2-about.html">About us</a></li>
                                                            <li><a href="demo2-contact.html">Contact us</a></li>
                                                            <li><a href="login.html">My account</a></li>
                                                        </ul>
                                                        <ul class="link-part col-lg-6 col-md-12">
                                                            <li><a href="#">Order history</a></li>
                                                            <li><a href="#">Advanced search</a></li>
                                                            <li><a href="login.html">Login</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- End .widget -->
                                            </div>
                                            <!-- End .col-sm-6 -->

                                            <div class="col-sm-7">
                                                <div class="widget">
                                                    <h4 class="widget-title mb-1">About Us</h4>

                                                    <div class="links link-parts row">
                                                        <ul class="link-part col-lg-6 col-md-12 mb-0">
                                                            <li><a href="#">Super Fast Html Template</a></li>
                                                            <li><a href="#">1st Fully working Ajax Theme</a></li>
                                                            <li><a href="#">36 Unique Shop Layouts</a></li>
                                                        </ul>
                                                        <ul class="link-part col-lg-6 col-md-12">
                                                            <li><a href="#">Powerful Admin Panel</a></li>
                                                            <li><a href="#">Mobile & Retina Optimized</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- End .widget -->
                                            </div>
                                            <!-- End .col-sm-6 -->
                                        </div>
                                        <!-- End .row -->
                                    </div>
                                    <!-- End .col-lg-9 -->
                                </div>
                                <!-- End .row -->
                            </div>
                            <!-- End .container -->
                        </div>
                        <!-- End .footer-middle -->

                        <div class="container">
                            <div class="footer-bottom d-sm-flex align-items-center">
                                <div class="footer-left">
                                    <span class="footer-copyright">© Porto eCommerce. 2021. All Rights Reserved</span>
                                </div>

                                <div class="footer-right ml-auto mt-1 mt-sm-0">
                                    <div class="payment-icons mr-0">
                                        <span class="payment-icon visa" style="background-image: url(${pageContext.request.contextPath}/images/payments/payment-visa.svg)"></span>
                                        <span class="payment-icon paypal" style="background-image: url(${pageContext.request.contextPath}/images/payments/payment-paypal.svg)"></span>
                                        <span class="payment-icon stripe" style="background-image: url(${pageContext.request.contextPath}/images/payments/payment-stripe.png)"></span>
                                        <span class="payment-icon verisign" style="background-image:  url(${pageContext.request.contextPath}/images/payments/payment-verisign.svg)"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End .footer-bottom -->
                    </footer>
                    <!-- End .footer -->
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
                <script src="${pageContext.request.contextPath}/js/jquery.plugin.min.js"></script>

                <!-- Main JS File -->
                <script src="${pageContext.request.contextPath}/js/main.min.js"></script>
                <script>
                                                    // Kiểm tra tham số action trong URL
                                                    const urlParams = new URLSearchParams(window.location.search);
                                                    if (urlParams.has('action') && urlParams.get('action') === 'payment?action=add-product') {
                                                        // Tự động gửi biểu mẫu
                                                        document.getElementById('my-form').submit();
                                                    }
                </script>

            </body>


            <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo2-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Jun 2024 03:13:29 GMT -->
        </html>