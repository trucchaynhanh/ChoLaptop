<%-- 
    Document   : cart
    Created on : 2 Jul 2024, 00:40:01
    Author     : yeuda
--%>

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
                    <div class="container">
                        <ul class="checkout-progress-bar d-flex justify-content-center flex-wrap">
                            <li class="active">
                                <a href="cart.html">Shopping Cart</a>
                            </li>
                            <li>
                                <a href="checkout.html">Checkout</a>
                            </li>
                            <li class="disabled">
                                <a href="cart.html">Order Complete</a>
                            </li>
                        </ul>
                        <style>
                            .product-thumbnail {
                                width: 50px; /* Thiết lập chiều rộng mới */
                                height: auto; /* Giữ tỷ lệ hình ảnh */
                            }
                        </style>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="cart-table-container">
                                    <table class="table table-cart">
                                        <thead>
                                            <tr>
                                                <th class="thumbnail-col"></th>
                                                <th class="product-col">Sản phẩm</th>
                                                <th class="price-col">Giá</th>
                                                <th class="qty-col">Số lượng</th>
                                                <th class="text-right">Tổng</th>
                                                <th class="text-right"></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${cart.listOrderDetails}" var="od">
                                            <c:forEach items="${listProducts}" var="product">
                                                <c:if test="${product.id == od.productId}">
                                                    <c:set var="p" value="${product}"></c:set>
                                                </c:if>
                                            </c:forEach>
                                            <tr class="product-row">
                                                <td>
                                                    <figure class="product-image-container">
                                                        <a href="product.html" class="product-image">
                                                            <img src="${p.image}" alt="product" class="product-thumbnail">
                                                        </a>

                                                    </figure>
                                                </td>
                                                <td class="product-col">
                                                    <h5 class="product-title">
                                                        <a href="#">${p.name}</a>
                                                    </h5>
                                                </td>
                                                <td>${p.price}</td>
                                                <td>
                                                    <form action="payment?action=change-quantity" method="POST">
                                                        <input type="hidden" name="id" value="${p.id}"/>
                                                        <c:choose>
                                                            <c:when test="${od.quantity > p.quantity}">
                                                                <input type="number" name="quantity" value="${p.quantity}" 
                                                                       onchange="alert('Xin lỗi, sản phẩm này chỉ còn ${p.quantity} chiếc. Vui lòng đặt số lượng không vượt quá số lượng còn lại.'); return this.closest('form').submit()"/>
                                                            </c:when>

                                                            <c:otherwise>
                                                                <input type="number" name="quantity" value="${od.quantity}"
                                                                       onchange="return this.closest('form').submit()"/>
                                                            </c:otherwise>
                                                        </c:choose>
                                                                </form>
                                                </td>
                                                <td class="text-right"><span class="subtotal-price">${p.price * od.quantity}</span></td>
                                                <td class="product-remove">
                                                    <form action="payment?action=delete" method="POST" onsubmit="return confirm('Bạn có chắc muốn xóa sản phẩm này?');">
                                                        <input type="hidden" name="id" value="${p.id}"/>
                                                        <button class="btn btn-sm" type="submit">Xóa</button>
                                                    </form>
                                                </td>


                                            </tr>
                                        </c:forEach>
                                    </tbody>


                                    <tfoot>
                                        <tr>
                                            <td colspan="5" class="clearfix">
                                                <div class="float-left">
                                                    <div class="cart-discount">
                                                        <form action="#">
                                                            <div class="input-group">
                                                                <input type="text" class="form-control form-control-sm"
                                                                       placeholder="Coupon Code" required>
                                                                <div class="input-group-append">
                                                                    <button class="btn btn-sm" type="submit">Apply
                                                                        Coupon</button>
                                                                </div>
                                                            </div><!-- End .input-group -->
                                                        </form>
                                                    </div>
                                                </div><!-- End .float-left -->

                                                <div class="float-right">

                                                </div><!-- End .float-right -->
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div><!-- End .cart-table-container -->
                        </div><!-- End .col-lg-8 -->

                        <div class="col-lg-4">
                            <div class="cart-summary">
                                <h3>Thanh toán đê</h3>

                                <table class="table table-totals">
                                    <tbody>
                                        <tr>
                                            <td class="subofsub">Tổng của tổng</td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" class="text-left">
                                                <h4>Vận chuyển</h4>

                                                <div class="form-group form-group-custom-control">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" class="custom-control-input" name="radio"
                                                               checked>
                                                        <label class="custom-control-label">FREE</label>
                                                    </div><!-- End .custom-checkbox -->
                                                </div><!-- End .form-group -->




                                            </td>
                                        </tr>
                                    </tbody>


                                </table>
                                <c:if test="${account != null}">
                                    <div class="checkout-methods">
                                        <form action="payment?action=check-out" method="POST">
                                            <a href="#"class="btn btn-block btn-dark"onclick="return this.closest('form').submit();">THANH TOÁN</a>
                                    </div>
                                </c:if>
                                <c:if test="${account == null}">
                                    <li>
                                        <a href="authen?action=login"class="btn btn-block btn-dark">Đăng nhập để thanh toán</a>
                                    </li>
                                </c:if>

                            </div><!-- End .cart-summary -->
                        </div><!-- End .col-lg-4 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->

                <div class="mb-6"></div><!-- margin -->
            </main><!-- End .main -->

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

    <script>
                                                // Lấy tất cả các phần tử có class 'subtotal-price'
                                                var subtotalPriceElements = document.querySelectorAll('.subtotal-price');

// Tính tổng giá trị
                                                var totalAmount = 0;
                                                subtotalPriceElements.forEach(function (element) {
                                                    totalAmount += parseFloat(element.textContent);
                                                });

// Hiển thị tổng giá trị
                                                var totalAmountElement = document.querySelector('td.subofsub + td');
                                                totalAmountElement.textContent = totalAmount.toFixed(2);

    </script>
    <!-- Mirrored from portotheme.com/html/porto_ecommerce/demo2-shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 19 Jun 2024 03:13:31 GMT -->
</html>