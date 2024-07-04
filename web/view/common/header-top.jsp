<%-- 
    Document   : header-top
    Created on : 1 Jul 2024, 02:12:32
    Author     : yeuda
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="header-top d-flex align-items-center w-100">
        <div class="header-left">
            <p class="top-message ls-0 text-uppercase text-white d-none d-sm-block">FREE Returns. Standard Shipping Orders $99+</p>
        </div>
        <!-- End .header-left -->

        <div class="header-right header-dropdowns w-sm-100">
            <div class="header-dropdown dropdown-expanded d-none d-lg-block mr-2">
                <a href="#">Links</a>
                <div class="header-menu">
                    <ul>

                        <c:if test="${account == null}">
                            <li>
                                <a href="authen?action=login">Đăng nhập</a>
                            </li>
                            <li>
                                <a href="authen?action=sign-up">Đăng kí</a>
                            </li>
                        </c:if>
                        <c:if test="${account != null}">
                            <li>
                                <a href="${pageContext.request.contextPath}/authen?action=log-out">Đăng xuất</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
                <!-- End .header-menu -->
            </div>
            <!-- End .header-dropown -->

            <span class="separator"></span>


            <!-- End .header-dropown -->

            <div class="header-dropdown mr-auto mr-sm-3 mr-md-0">
                <a href="#">Quản lí</a>
                <div class="header-menu">
                    <ul>
                        <li><c:if test="${account != null}">
                                <!--Nguoi dung-->
                                <c:if test="${account.roleId == 2}">
                                <li>
                                    <a href="userDashboard">Đơn hàng</a>
                                </li>
                            </c:if>
                            <!--Admin-->
                            <c:if test="${account.roleId == 1}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/dashboard">Quản lí</a>
                                </li>
                            </c:if>
                        </c:if></li>
                        <li><a href="confirm">Tài khoản</a></li>
                    </ul>
                </div>
                <!-- End .header-menu -->
            </div>
            <!-- End .header-dropown -->

            <span class="separator"></span>

            <div class="social-icons">
                <a href="https://www.facebook.com/hac.nguyet.10" class="social-icon social-facebook icon-facebook" target="_blank"></a>
                <a href="https://github.com/trucchaynhanh/ChoLaptop.git" class="social-icon social-twitter icon-twitter" target="_blank"></a>
                <a href="https://www.instagram.com/nguyengiatruc139?fbclid=IwZXh0bgNhZW0CMTAAAR3TOgrWW0vkV2wSQna4zRrcrhg45-XYtFxz69x2PKxAuixLpp_eBKR3P4o_aem_5Cs5938J2Meh8zzN05GdiA" class="social-icon social-instagram icon-instagram" target="_blank"></a>
            </div>
            <!-- End .social-icons -->
        </div>
        <!-- End .header-right -->
    </div>
    <!-- End .container -->
</div>
<!-- End .header-top -->