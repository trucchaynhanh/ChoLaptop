<%-- 
    Document   : header-bottom
    Created on : 23 Jun 2024, 15:27:50
    Author     : yeuda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header-bottom sticky-header d-lg-block d-none" data-sticky-options="{'mobile': false}">
                    <div class="container">
                        <div class="header-left">
                            <a href="demo2.html" class="logo">
                                <img src="${pageContext.request.contextPath}/images/logoCL/Cholaptop (2).png" alt="Porto Logo">
                            </a>
                        </div>
                        <div class="header-center">
                            <nav class="main-nav w-100">
                                <ul class="menu">
                                    <li>
                                        <a href="home">Trang chủ</a>
                                    </li>
                               
                                    <li>
                                        <a href="demo2-product.html">SẢN PHẨM</a>
                                        <div class="megamenu megamenu-fixed-width megamenu-3cols">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <a href="#" class="nolink">PRODUCT PAGES</a>
                                                    <ul class="submenu">
                                                        <li><a href="product.html">SIMPLE PRODUCT</a></li>
                                                        <li><a href="product-variable.html">VARIABLE PRODUCT</a></li>
                                                        <li><a href="product.html">SALE PRODUCT</a></li>
                                                        <li><a href="product.html">FEATURED & ON SALE</a></li>
                                                        <li><a href="product-custom-tab.html">WITH CUSTOM TAB</a></li>
                                                        <li><a href="product-sidebar-left.html">WITH LEFT SIDEBAR</a></li>
                                                        <li><a href="product-sidebar-right.html">WITH RIGHT SIDEBAR</a></li>
                                                        <li><a href="product-addcart-sticky.html">ADD CART STICKY</a></li>
                                                    </ul>
                                                </div>
                                                <!-- End .col-lg-4 -->

                                                <div class="col-lg-4">
                                                    <a href="#" class="nolink">PRODUCT LAYOUTS</a>
                                                    <ul class="submenu">
                                                        <li><a href="product-extended-layout.html">EXTENDED LAYOUT</a></li>
                                                        <li><a href="product-grid-layout.html">GRID IMAGE</a></li>
                                                        <li><a href="product-full-width.html">FULL WIDTH LAYOUT</a></li>
                                                        <li><a href="product-sticky-info.html">STICKY INFO</a></li>
                                                        <li><a href="product-sticky-both.html">LEFT & RIGHT STICKY</a></li>
                                                        <li><a href="product-transparent-image.html">TRANSPARENT IMAGE</a>
                                                        </li>
                                                        <li><a href="product-center-vertical.html">CENTER VERTICAL</a></li>
                                                        <li><a href="#">BUILD YOUR OWN</a></li>
                                                    </ul>
                                                </div>
                                                <!-- End .col-lg-4 -->

                                                <div class="col-lg-4 p-0">
                                                    <div class="menu-banner menu-banner-2">
                                                        <figure>
                                                            <img src="${pageContext.request.contextPath}/images/menu-banner-1.jpg" alt="Menu banner" class="product-promo" width="380" height="790">
                                                        </figure>
                                                        <i>OFF</i>
                                                        <div class="banner-content">
                                                            <h4>
                                                                <span class="">UP TO</span><br />
                                                                <b class="">50%</b>
                                                            </h4>
                                                        </div>
                                                        <a href="demo2-shop.html" class="btn btn-sm btn-dark">SHOP NOW</a>
                                                    </div>
                                                </div>
                                                <!-- End .col-lg-4 -->
                                            </div>
                                            <!-- End .row -->
                                        </div>
                                        <!-- End .megamenu -->
                                    </li>
                                    
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
                                    <li><a href="demo2-contact.html">Contact Us</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="header-right">
                            <div class="header-search header-icon header-search-inline header-search-category w-lg-max">
                                <a href="#" class="search-toggle" role="button"><i class="icon-search-3"></i></a>
                                <form action="#" method="get">
                                    <div class="header-search-wrapper">
                                        <input type="search" class="form-control" name="q" id="qqq" placeholder="Search..." required>
                                        <div class="select-custom">
                                            <select id="cat" name="cat">
                                                <option value="">All Categories</option>
                                                <option value="4">Fashion</option>
                                                <option value="12">- Women</option>
                                                <option value="13">- Men</option>
                                                <option value="66">- Jewellery</option>
                                                <option value="67">- Kids Fashion</option>
                                                <option value="5">Electronics</option>
                                                <option value="21">- Smart TVs</option>
                                                <option value="22">- Cameras</option>
                                                <option value="63">- Games</option>
                                                <option value="7">Home &amp; Garden</option>
                                                <option value="11">Motors</option>
                                                <option value="31">- Cars and Trucks</option>
                                                <option value="32">- Motorcycles &amp; Powersports</option>
                                                <option value="33">- Parts &amp; Accessories</option>
                                                <option value="34">- Boats</option>
                                                <option value="57">- Auto Tools &amp; Supplies</option>
                                            </select>
                                        </div>
                                        <!-- End .select-custom -->
                                        <button class="btn p-0 icon-search-3" type="submit"></button>
                                    </div>
                                    <!-- End .header-search-wrapper -->
                                </form>
                            </div>
                            <!-- End .header-search -->

                            <a href="login.html" class="header-icon "><i class="icon-user-2"></i></a>

                            <a href="wishlist.html" class="header-icon"><i class="icon-wishlist-2"></i></a>

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
                                            <div class="product">
                                                <div class="product-details">
                                                    <h4 class="product-title">
                                                        <a href="demo2-product.html">Ultimate 3D Bluetooth Speaker</a>
                                                    </h4>

                                                    <span class="cart-product-info">
                                                        <span class="cart-product-qty">1</span> × $99.00
                                                    </span>
                                                </div>
                                                <!-- End .product-details -->

                                                <figure class="product-image-container">
                                                    <a href="demo2-product.html" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/images/products/product-1.jpg" alt="product" width="80" height="80">
                                                    </a>

                                                    <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                                </figure>
                                            </div>
                                            <!-- End .product -->

                                            <div class="product">
                                                <div class="product-details">
                                                    <h4 class="product-title">
                                                        <a href="demo2-product.html">Brown Women Casual HandBag</a>
                                                    </h4>

                                                    <span class="cart-product-info">
                                                        <span class="cart-product-qty">1</span> × $35.00
                                                    </span>
                                                </div>
                                                <!-- End .product-details -->

                                                <figure class="product-image-container">
                                                    <a href="demo2-product.html" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/images/products/product-2.jpg" alt="product" width="80" height="80">
                                                    </a>

                                                    <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                                </figure>
                                            </div>
                                            <!-- End .product -->

                                            <div class="product">
                                                <div class="product-details">
                                                    <h4 class="product-title">
                                                        <a href="demo2-product.html">Circled Ultimate 3D Speaker</a>
                                                    </h4>

                                                    <span class="cart-product-info">
                                                        <span class="cart-product-qty">1</span> × $35.00
                                                    </span>
                                                </div>
                                                <!-- End .product-details -->

                                                <figure class="product-image-container">
                                                    <a href="demo2-product.html" class="product-image">
                                                        <img src="${pageContext.request.contextPath}/images/products/product-3.jpg" alt="product" width="80" height="80">
                                                    </a>
                                                    <a href="#" class="btn-remove" title="Remove Product"><span>×</span></a>
                                                </figure>
                                            </div>
                                            <!-- End .product -->
                                        </div>
                                        <!-- End .cart-product -->

                                        <div class="dropdown-cart-total">
                                            <span>SUBTOTAL:</span>

                                            <span class="cart-total-price float-right">$134.00</span>
                                        </div>
                                        <!-- End .dropdown-cart-total -->

                                        <div class="dropdown-cart-action">
                                            <a href="cart.html" class="btn btn-gray btn-block view-cart">View
                                                Cart</a>
                                            <a href="checkout.html" class="btn btn-dark btn-block">Checkout</a>
                                        </div>
                                        <!-- End .dropdown-cart-total -->
                                    </div>
                                    <!-- End .dropdownmenu-wrapper -->
                                </div>
                                <!-- End .dropdown-menu -->
                            </div>
                            <!-- End .dropdown -->
                        </div>
                    </div>
                    <!-- End .container -->
                </div>
                <!-- End .header-bottom -->
