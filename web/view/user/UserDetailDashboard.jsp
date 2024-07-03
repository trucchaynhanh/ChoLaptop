<%-- 
    Document   : UserDetailDashboard
    Created on : 3 Jul 2024, 08:00:20
    Author     : yeuda
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colReorder-bootstrap4.css">

    </head>

    <body id="page-top">

        <jsp:include page="../common/top-dashboard.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="../common/navbar-dashboard.jsp"></jsp:include>
                <!-- Sidebar -->

                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!-- Breadcrumbs-->
                    <jsp:include page="../common/breadcrumb-dashboard.jsp"></jsp:include>


                        <!-- Icon Cards-->
                    <jsp:include page="../common/iconcard-dashborad.jsp"></jsp:include>




                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i> Irregular Verbs
                            </div>
                            <div class="card-body">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá niêm yết</th>
                                            <th>Số lượng</th>
                                            <th>Chi tiết</th>
                                            

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${odetailList}" var="o">
                                        <tr>
                                            <td>${o.productId}</td>
                                           
                                            <td>
                                                <c:forEach items="${listProduct}" var="pro">
                                                    <c:if test="${pro.id == o.productId}">
                                                        ${pro.name}
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                            <td>
                                                <c:forEach items="${listProduct}" var="pro">
                                                    <c:if test="${pro.id == o.productId}">
                                                        ${pro.price}
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                            <td>
                                              ${o.quantity}
                                            </td>
                                            <td>
                                                <c:forEach items="${listProduct}" var="pro">
                                                    <c:if test="${pro.id == o.productId}">
                                              <a href="product-detail?id=${pro.id}">Xem</a>
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                        </tr>  
                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                </div>

            </div>
            <!-- /.container-fluid -->

            <!-- Sticky Footer -->
            <footer class="sticky-footer">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Your Website 2019</span>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <jsp:include page="../common/logout-dashboard.jsp"></jsp:include>

    <jsp:include page="addProductModal.jsp"></jsp:include>
    <jsp:include page="deleteProductModal.jsp"></jsp:include>
    <jsp:include page="editProductModal.jsp"></jsp:include>

        <!-- Bootstrap core JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>
    <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="${pageContext.request.contextPath}/js/demo/datatables-demo.js"></script>
    <script src="${pageContext.request.contextPath}/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>
    <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>


</body>

</html>