<%-- 
    Document   : header-midle
    Created on : 23 Jun 2024, 15:26:13
    Author     : yeuda
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="header-middle sticky-header" data-sticky-options="{'mobile': true}">
    <div class="container">
        <div class="header-left col-lg-2 w-auto pl-0">
            <button class="mobile-menu-toggler mr-2" type="button">
                <i class="fas fa-bars"></i>
            </button>
            <a href="home" class="logoo">
                <img src="${pageContext.request.contextPath}/images/logoCL/Cholaptop (2)_1.png" alt="Porto Logo">
            </a>
        </div>
        <!-- End .header-left -->

        <div class="header-right w-lg-max ml-0">
            <div class="header-icon mb-0 header-search header-search-inline header-search-category w-lg-max pl-3 pr-1">
                <a href="#" class="search-toggle" role="button" title="Search"><i
                        class="icon-search-3"></i></a>
                <form action="home" method="get">
                    <input type="hidden" name="search" value="searchByName"/>
                    <div class="header-search-wrapper">
                        <input type="search" class="form-control bg-white" name="keyword" id="qq" placeholder="Search..." required>

                        <!-- End .select-custom -->
                        <button class="btn icon-magnifier pb-1 bg-white" type="submit" title="Search"><a href="#" onclick="return this.closest('form').submit()"><i class="fa fa-search"></i></a></button>
                    </div>
                    <!-- End .header-search-wrapper -->
                </form>
            </div>
            <!-- End .header-search -->

            <div class="header-contact d-none d-lg-flex pl-4 ml-3 mr-xl-5">
                <img alt="phone" src="${pageContext.request.contextPath}/images/phone-white.png" width="30" height="30" class="pb-1">
                <h6>Call us now<a href="tel:#" class="font1">+84848099678</a></h6>
            </div>

            <a href="authen?action=login" class="header-icon d-inline-block" title="Login"><i
                    class="icon-user-2"></i></a>

          

            <div class="dropdown cart-dropdown">
                <a href="#" title="Cart" class="dropdown-toggle dropdown-arrow cart-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                    <i class="minicart-icon"></i>
                    <span class="cart-count badge-circle">3</span>
                </a>

                <div class="cart-overlay"></div>

                <div class="dropdown-menu mobile-cart">
                    <a href="#" title="Close (Esc)" class="btn-close">×</a>

                    <div class="dropdownmenu-wrapper custom-scrollbar">
                        <div class="dropdown-cart-header">Shopping Cart</div>
                        <!-- End .dropdown-cart-header -->

                        <div class="dropdown-cart-products">

                            <c:forEach items="${cart.listOrderDetails}" var="od">
                                <c:forEach items="${listProducts}" var="product">
                                    <c:if test="${product.id == od.productId}">
                                        <c:set var="p" value="${product}"></c:set>
                                    </c:if>
                                </c:forEach>
                                <div class="product">
                                    <div class="product-details">
                                        <h4 class="product-title">
                                            <a href="demo2-product.html">"${p.name}"</a>
                                        </h4>

                                        <span class="cart-product-info">
                                            <span class="cart-product-qty">1</span> "${p.price}"
                                        </span>
                                    </div>
                                    <!-- End .product-details -->

                                    <figure class="product-image-container">
                                        <a href="demo2-product.html" class="product-image">
                                            <img src="${p.image}" alt="product" width="80" height="80">
                                        </a>

                                        <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                    </figure>
                                </div>
                                <!-- End .product -->

                            </c:forEach>
                        </div>
                        <!-- End .cart-product -->

                       
                        <!-- End .dropdown-cart-total -->

                        <div class="dropdown-cart-action">
                            <a href="payment" class="btn btn-gray btn-block view-cart">View
                                Cart</a>
                           
                        </div>
                        <!-- End .dropdown-cart-total -->
                    </div>
                    <!-- End .dropdownmenu-wrapper -->
                </div>
                <!-- End .dropdown-menu -->
            </div>
            <!-- End .dropdown -->
        </div>
        <!-- End .header-right -->
    </div>
    <!-- End .container -->
</div>
<!-- End .header-middle -->