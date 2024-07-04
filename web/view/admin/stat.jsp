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

        <title>ChoLaptop</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/logoCL/Cholaptop (2)_1.png">

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
        Biểu đồ doanh số theo phân loại máy:
    </div>
    <div>
        <canvas id="myChart"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('myChart').getContext('2d');

        // Extracting data from JSP
        const labels = [];
        const data = [];
        const categoryQuantities = {}; // Object to store aggregated quantities by category

        // Initialize categoryQuantities with 0 for each category
        <c:forEach items="${listCategory}" var="cate">
            categoryQuantities['${cate.name}'] = 0;
        </c:forEach>

        // Aggregate quantities by category
        <c:forEach items="${listOrderDetails}" var="ods">
            <c:forEach items="${listProducts}" var="pro">
                <c:if test="${pro.id == ods.productId}">
                    <c:forEach items="${listCategory}" var="cate">
                        <c:if test="${cate.id == pro.categoryId}">
                            categoryQuantities['${cate.name}'] += ${ods.quantity};
                        </c:if>
                    </c:forEach>
                </c:if>
            </c:forEach>
        </c:forEach>

        // Populate labels and data arrays from categoryQuantities object
        Object.keys(categoryQuantities).forEach(function(key) {
            labels.push(key);
            data.push(categoryQuantities[key]);
        });

        // Create the chart
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Total Quantity',
                    data: data,
                    backgroundColor: 'rgba(54, 162, 235, 0.2)', // Adjust as needed
                    borderColor: 'rgba(54, 162, 235, 1)', // Adjust as needed
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Doanh số'
                        }
                    },
                    x: {
                        title: {
                            display: true,
                            text: 'Phân loại'
                        }
                    }
                }
            }
        });
    </script>


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
                                                <th>Mã đơn hàng</th><!-- order -->
                                                <th>Tên khách hàng</th> 
                                                <th>Email khách hàng</th> 
                                                <th>Địa chỉ</th>
                                                <th>Giá trị đơn hàng</th> 
                                                <th>Ngày mua</th> 
                                                <th>Chi tiết</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listOrder}" var="order">
                                                <tr>
                                                    <td>${order.id}</td>
                                                    <td>
                                                        <c:forEach items = "${listAccount}" var = "account" >
                                                            <c:if test="${account.id == order.accountId}">
                                                                ${account.username}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <c:forEach items = "${listAccount}" var = "account" >
                                                            <c:if test="${account.id == order.accountId}">
                                                                ${account.email}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <c:forEach items = "${listAccount}" var = "account" >
                                                            <c:if test="${account.id == order.accountId}">
                                                                ${account.address}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${order.amount}</td>
                                                    <td>${order.createAt}</td>
                                                    <td>
                                                        <a href = "#">Xem</a>
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