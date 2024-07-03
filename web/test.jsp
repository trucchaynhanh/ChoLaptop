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
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Overview</li>
                        </ol>

                        <!-- Icon Cards-->
                        <div class="row">
                            <div class="col-xl-3 col-sm-6 mb-3">
                                <div class="card text-white bg-primary o-hidden h-100">
                                    <div class="card-body">
                                        <div class="card-body-icon">
                                            <i class="fas fa-fw fa-comments"></i>
                                        </div>
                                        <div class="mr-5">26 New Messages!</div>
                                    </div>
                                    <a class="card-footer text-white clearfix small z-1" href="#">
                                        <span class="float-left">View Details</span>
                                        <span class="float-right">
                                            <i class="fas fa-angle-right"></i>
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 mb-3">
                                <div class="card text-white bg-warning o-hidden h-100">
                                    <div class="card-body">
                                        <div class="card-body-icon">
                                            <i class="fas fa-fw fa-list"></i>
                                        </div>
                                        <div class="mr-5">11 New Tasks!</div>
                                    </div>
                                    <a class="card-footer text-white clearfix small z-1" href="#">
                                        <span class="float-left">View Details</span>
                                        <span class="float-right">
                                            <i class="fas fa-angle-right"></i>
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 mb-3">
                                <div class="card text-white bg-success o-hidden h-100">
                                    <div class="card-body">
                                        <div class="card-body-icon">
                                            <i class="fas fa-fw fa-shopping-cart"></i>
                                        </div>
                                        <div class="mr-5">123 New Orders!</div>
                                    </div>
                                    <a class="card-footer text-white clearfix small z-1" href="#">
                                        <span class="float-left">View Details</span>
                                        <span class="float-right">
                                            <i class="fas fa-angle-right"></i>
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-3 col-sm-6 mb-3">
                                <div class="card text-white bg-danger o-hidden h-100">
                                    <div class="card-body">
                                        <div class="card-body-icon">
                                            <i class="fas fa-fw fa-life-ring"></i>
                                        </div>
                                        <div class="mr-5">13 New Tickets!</div>
                                    </div>
                                    <a class="card-footer text-white clearfix small z-1" href="#">
                                        <span class="float-left">View Details</span>
                                        <span class="float-right">
                                            <i class="fas fa-angle-right"></i>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>

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
                                                <th>Description</th><!--
                                                -->                                            <th>Category</th><!--
                                                -->                                            <th>Brand</th><!--
                                                -->                                                                                        <th>Config</th>
                                                <th>Guarantee</th>
                                                <th>Old Price</th>
                                                <th>detailImage1</th><!--
                                                -->                                                                                        <th>detailImage2</th>
                                                <th>detailImage3</th>
                                                <th>detailImage4</th>
                                                <th>Config Detail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listProducts}" var="pro">
                                            <tr>
                                                <td>${pro.id}</td>
                                                <td>${pro.name}</td>
                                                <td>
                                                    <img src="${pro.image}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>${pro.quantity}</td>
                                                <td>${pro.price}</td>
                                                <td>${pro.description}</td>
                                                <td>
                                                    <c:forEach items="${listCategory}" var="cate">
                                                        <c:if test="${cate.id == pro.categoryId}">
                                                            ${cate.name}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${listBrand}" var="bran">
                                                        <c:if test="${bran.id == pro.brandId}">
                                                            ${bran.name}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>

                                                <td>${pro.config}</td>
                                                <td>${pro.guar}</td>
                                                <td>${pro.oldPrice}</td>

                                                <td>
                                                    <img src="${pro.detailImage1}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>
                                                    <img src="${pro.detailImage2}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>
                                                    <img src="${pro.detailImage3}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>
                                                    <img src="${pro.detailImage4}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>${pro.configDetail}</td>
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
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>

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
///////////////////////////////////////////////
 <td>
                                                    <c:forEach items="${listCategory}" var="cate">
                                                        <c:if test="${cate.id == pro.categoryId}">
                                                            ${cate.name}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${listBrand}" var="bran">
                                                        <c:if test="${bran.id == pro.brandId}">
                                                            ${bran.name}
                                                        </c:if>
                                                    </c:forEach>
                                                </td>

                                                <td>${pro.config}</td>
                                                <td>${pro.guar}</td>
                                                <td>${pro.oldPrice}</td>

                                                <td>
                                                    <img src="${pro.detailImage1}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>
                                                    <img src="${pro.detailImage2}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>
                                                    <img src="${pro.detailImage3}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>
                                                    <img src="${pro.detailImage4}" width="100" height="100" alt="alt"/>
                                                </td>
                                                <td>${pro.configDetail}</td>
                                                //////////////////////////////////
                                                                   <!--Category-->
                    <div class="form-group">
                        <label for="category">Loại máy: </label>
                        <div class="input-group">
                            <select class="custom-select" id="category" name="category">
                                <c:forEach items="${listCategory}" var="c">
                                    <option value="${c.id}">${c.name}</option>
                                </c:forEach>
                            </select>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button">Category</button>
                            </div>
                        </div>
                    </div>
                    <!--Brand-->
                    <div class="form-group">
                        <label for="brand">Thương hiệu: </label>
                        <div class="input-group">
                            <select class="custom-select" id="brand" name="brand">
                                <c:forEach items="${listBrand}" var="b">
                                    <option value="${b.id}">${b.name}</option>
                                </c:forEach>
                            </select>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button">Brand</button>
                            </div>
                        </div>
                    </div>
                    <!--Config-->
                    <div class="form-group">
                        <label for="config">Cấu hình:</label>
                        <textarea class="form-control" name="config"></textarea>
                    </div>
                      <!--Guarantee-->
                    <div class="form-group">
                        <label for="guar">Bảo hành:</label>
                        <input type="text" class="form-control" id="guarInput" name="guar">
                        <div id="guarError" class="error"></div>
                    </div>
                       <!--oldPrice-->
                    <div class="form-group">
                        <label for="oldPrice">Giá cũ:</label>
                        <input type="text" class="form-control" id="oldPriceInput" name="oldPrice">
                        <div id="oldPriceError" class="error"></div>
                    </div>
                    <!--Image1-->
                    <div class="form-group">
                        <label for="detailImage1">Image Detail 1: </label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Upload</span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="detailImage1" name="detailImage1" onchange="displayImage(this)">
                                <label class="custom-file-label" >Choose file</label>
                            </div>
                        </div>
                        <img id="previewImage" src="#" alt="Preview"
                             style="display: none; max-width: 300px; max-height: 300px;">

                    </div>
                    <!--Image2-->
                    <div class="form-group">
                        <label for="detailImage2">Image Detail 2: </label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Upload</span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="detailImage2" name=detailImage2" onchange="displayImage(this)">
                                <label class="custom-file-label" >Choose file</label>
                            </div>
                        </div>
                        <img id="previewImage" src="#" alt="Preview"
                             style="display: none; max-width: 300px; max-height: 300px;">

                    </div>
                    <!--Image3-->
                    <div class="form-group">
                        <label for="detailImage3">Image Detail 3: </label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Upload</span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="detailImage3" name="detailImage3" onchange="displayImage(this)">
                                <label class="custom-file-label" >Choose file</label>
                            </div>
                        </div>
                        <img id="previewImage" src="#" alt="Preview"
                             style="display: none; max-width: 300px; max-height: 300px;">

                    </div>
                    <!--Image4-->
                    <div class="form-group">
                        <label for="detailImage4">Image Detail 4: </label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Upload</span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="detailImage4" name="detailImage4" onchange="displayImage(this)">
                                <label class="custom-file-label" >Choose file</label>
                            </div>
                        </div>
                        <img id="previewImage" src="#" alt="Preview"
                             style="display: none; max-width: 300px; max-height: 300px;">

                    </div>
                    <!--Config-->
                    <div class="form-group">
                        <label for="configDetail">Detail config:</label>
                        <textarea class="form-control" name="configDetail"></textarea>
                    </div>