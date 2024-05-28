<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, AdminWrap lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, AdminWrap lite design, AdminWrap lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
          content="AdminWrap Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Manage Order - Administration</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/adminwrap-lite/"/>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../admin/images/favicon.png">
    <!-- Bootstrap Core CSS -->
    <link href="../admin/node_modules/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../admin/html/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="../admin/html/css/colors/default.css" id="theme" rel="stylesheet">

    <script type="text/javascript" src="../assets/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../assets/js/jquery.validate.min.js"></script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/list.js/2.3.1/list.min.js"></script>
</head>
<body class="fix-header card-no-border fix-sidebar">
<%@ include file="header.jsp" %>
<%@ include file="slidebar.jsp" %>
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h7 class="text-themecolor">Order List</h7>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="">Home</a></li>
                    <li class="breadcrumb-item active">Order List</li>
                </ol>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <c:if test="${message != null}">
            <div align="center">
                <h3>${message}</h3>
            </div>
        </c:if>
        <div class="row">
            <!-- column -->
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <!-- <h4 class="card-title">User List</h4> -->
                        <div class="table-responsive" id="tableProduct">
                            <table class="table" id="table_id">
                                <thead>
                                <tr>
                                    <th>Index</th>
                                    <th>Order ID</th>
                                    <th>Ordered by</th>
                                    <th>Product Copies</th>
                                    <th>Total</th>
                                    <th>Payment method</th>
                                    <th>Status</th>
                                    <th>Order Date</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody class="list">
                                <c:forEach var="order" items="${listOrder}" varStatus="status">
                                    <tr>
                                        <td>${status.index + 1}</td>
                                        <td>${order.orderId}</td>
                                        <td>${order.customer.fullName}</td>
                                        <td>${order.productCopies}</td>
                                        <td>$${order.total}</td>
                                        <td>${order.paymentMethod}</td>
                                        <td>${order.status}</td>
                                        <td>${order.orderDate}</td>
                                        <td>
                                            <!-- <a class="btn waves-effect waves-light btn btn-info hidden-sm-down text-white"
                                               href="view_order?id=${order.orderId}">View</a> &nbsp;
                                            <a class="btn waves-effect waves-light btn btn-info hidden-sm-down text-white"
                                               href="edit_order?id=${order.orderId}">Edit</a> &nbsp;
                                            <button class="btn waves-effect waves-light btn btn-info hidden-sm-down text-white"
                                                    type="button" onclick="delete_order(${order.orderId})">Delete
                                            </button>
                                             -->
                                            <div class="button-container">
                                                <a class="view-button" href="view_order?id=${order.orderId}">
                                                    <svg class="edit-svgIcon" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32"><circle cx="16" cy="16" r="4" fill="currentColor"/>
                                                        <path fill="currentColor" d="M30.94 15.66A16.69 16.69 0 0 0 16 5A16.69 16.69 0 0 0 1.06 15.66a1 1 0 0 0 0 .68A16.69 16.69 0 0 0 16 27a16.69 16.69 0 0 0 14.94-10.66a1 1 0 0 0 0-.68ZM16 22.5a6.5 6.5 0 1 1 6.5-6.5a6.51 6.51 0 0 1-6.5 6.5Z"/></svg>
                                                </a>
                                                &nbsp; &nbsp;
                                                <a class="edit-button" href="edit_order?id=${order.orderId}">
                                                    <svg class="edit-svgIcon" viewBox="0 0 512 512">
                                                        <path d="M410.3 231l11.3-11.3-33.9-33.9-62.1-62.1L291.7 89.8l-11.3 11.3-22.6 22.6L58.6 322.9c-10.4 10.4-18 23.3-22.2 37.4L1 480.7c-2.5 8.4-.2 17.5 6.1 23.7s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L387.7 253.7 410.3 231zM160 399.4l-9.1 22.7c-4 3.1-8.5 5.4-13.3 6.9L59.4 452l23-78.1c1.4-4.9 3.8-9.4 6.9-13.3l22.7-9.1v32c0 8.8 7.2 16 16 16h32zM362.7 18.7L348.3 33.2 325.7 55.8 314.3 67.1l33.9 33.9 62.1 62.1 33.9 33.9 11.3-11.3 22.6-22.6 14.5-14.5c25-25 25-65.5 0-90.5L453.3 18.7c-25-25-65.5-25-90.5 0zm-47.4 168l-144 144c-6.2 6.2-16.4 6.2-22.6 0s-6.2-16.4 0-22.6l144-144c6.2-6.2 16.4-6.2 22.6 0s6.2 16.4 0 22.6z"></path>
                                                    </svg>
                                                </a>
                                            
                                                <button class="delete-button" type="button" onclick="delete_order(${order.orderId})">
                                                    <svg class="delete-svgIcon" viewBox="0 0 448 512">
                                                        <path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"></path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer"> © 2021 Adminwrap by <a href="https://www.wrappixel.com/">wrappixel.com</a></footer>
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="../admin/node_modules/jquery/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="../admin/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- slim-scrollbar scrollbar JavaScript -->
<script src="../admin/html/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="../admin/html/js/waves.js"></script>
<!--Menu sidebar -->
<script src="../admin/html/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="../admin/html/js/custom.min.js"></script>
<!-- jQuery peity -->
<script src="../admin/node_modules/peity/jquery.peity.min.js"></script>
<script src="../admin/node_modules/peity/jquery.peity.init.js"></script>

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function () {
        $('#table_id').DataTable();
    });
</script>
<script>
    function delete_order(id) {
        let orderId = id;
        if (confirm('Are you sure you want to delete the order with ID ' + orderId + '?')) {
            window.location = 'delete_order?id=' + orderId;
        }
    }
</script>
</body>
</html>