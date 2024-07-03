<%-- 
    Document   : dashboard
    Created on : 30 Jun 2024, 17:08:12
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


                        <!-- Area Chart Example-->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-chart-area"></i>
                                Area Chart Example
                            </div>
                            <div class="card-body">
                                <canvas id="myAreaChart" width="100%" height="30"></canvas>
                            </div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                Data Table Example
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Name</th>
                                                <th>Image</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th>Description</th>
                                                <th>Category</th>
                                                <th>Brand</th><!--
                                                <th>Config</th>
                                                <th>Guarantee</th>
                                                <th>Old Price</th>
                                                <th>detailImage1</th>
                                                                                                                                        <th>detailImage2</th>
                                                <th>detailImage3</th>
                                                <th>detailImage4</th>
                                                <th>Config Detail</th>-->
                                         <th>Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listProducts}" var="pro">
                                            <tr>
                                                <td name ="id">${pro.id}</td>
                                                <td name ="name">${pro.name}</td>
                                                <td name ="image">
                                                    <img src="${pro.image}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td  name ="quantity">${pro.quantity}</td>
                                                <td name ="price">${pro.price}</td>
                                                <td name ="description">${pro.description}</td>
                                                <td name ="category">
                                                    <c:forEach items="${listCategory}" var="cate">
                                                        <c:if test="${cate.id == pro.categoryId}">
                                                            ${cate.name}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td name ="brand">
                                                    <c:forEach items="${listBrand}" var="bran">
                                                        <c:if test="${bran.id == pro.brandId}">
                                                            ${bran.name}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-primary"
                                                            data-toggle="modal" 
                                                            data-target="#editProductModal"
                                                            onclick="editProductModal(this)">
                                                        Edit
                                                    </button>
                                                    <button type="button" class="btn btn-danger" 
                                                            data-toggle="modal" data-target="#delete-product-modal"
                                                            onclick="deleteProductModal(${pro.id})">
                                                        Delete
                                                    </button>
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