<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 18/10/2022
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>AdminLTE 3 | Contacts</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="../../asset/dist/css/adminlte.min.css" />
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="../include/ad_header.jsp"%>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../../admin.jsp" class="brand-link">
      <img src="../../asset/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: 0.8;" />
      <span class="brand-text font-weight-light">Apple Store</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Sản phẩm
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../ad_products/product.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tất cả sản phẩm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../ad_adds/add_product.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm sản phẩm</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../ad_products/category.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh mục</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Khách hàng
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../ad_accounts/user.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tất cả khách hàng</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- Đơn hàng -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Đơn hàng
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../pages/ad_orders/order.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tất cả đơn hàng</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../../pages/ad_orders/newOrders.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Đơn hàng mới</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Bài viết
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../ad_products/blog.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tất cả bài viết</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../ad_adds/add_blog.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Viết bài mới</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../ad_products/chuyen_muc.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Chuyên mục</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Contacts</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../../admin.jsp">Home</a></li>
              <li class="breadcrumb-item active">Tất cả khách hàng</li>
            </ol>
          </div>
        </div>
      </div>
      <!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body pb-0">
          <div class="row">
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Digital Strategist
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Nguyễn Huỳnh Khoa</b></h2>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Địa chỉ: chung cư R7 đức khải, bình khánh quận 2
                        </li>
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> SDT: 0869950090
                        </li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../asset/dist/img/user1-128x128.jpg" alt="user-avatar" class="img-circle img-fluid" />
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="./account.jsp" class="btn btn-sm btn-primary"> <i class="fas fa-user"></i> View Profile </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Digital Strategist
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Lê Đức Long</b></h2>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Địa chỉ: 484 Lê Văn Việt quận Thủ Đức
                        </li>
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> SDT: 0756483937
                        </li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../asset/dist/img/user2-160x160.jpg" alt="user-avatar" class="img-circle img-fluid" />
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="#" class="btn btn-sm btn-primary"> <i class="fas fa-user"></i> View Profile </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Digital Strategist
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Bùi Quốc Định</b></h2>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Địa chỉ: 1 Võ Văn Ngân quận Thủ Đức
                        </li>
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> SDT: 0748493837
                        </li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../asset/dist/img/user1-128x128.jpg" alt="user-avatar" class="img-circle img-fluid" />
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="#" class="btn btn-sm btn-primary"> <i class="fas fa-user"></i> View Profile </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Digital Strategist
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Nicole Pearson</b></h2>
                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover</p>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ
                        </li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../asset/dist/img/user1-128x128.jpg" alt="user-avatar" class="img-circle img-fluid" />
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="#" class="btn btn-sm btn-primary"> <i class="fas fa-user"></i> View Profile </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Digital Strategist
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Nicole Pearson</b></h2>
                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover</p>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ
                        </li>
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52
                        </li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../asset/dist/img/user1-128x128.jpg" alt="user-avatar" class="img-circle img-fluid" />
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="#" class="btn btn-sm btn-primary"> <i class="fas fa-user"></i> View Profile </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Digital Strategist
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Nicole Pearson</b></h2>
                      <p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover</p>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ
                        </li>
                        <li class="small">
                          <span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52
                        </li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../asset/dist/img/user2-160x160.jpg" alt="user-avatar" class="img-circle img-fluid" />
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="#" class="btn btn-sm btn-primary"> <i class="fas fa-user"></i> View Profile </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          <nav aria-label="Contacts Page Navigation">
            <ul class="pagination justify-content-center m-0">
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">6</a></li>
              <li class="page-item"><a class="page-link" href="#">7</a></li>
              <li class="page-item"><a class="page-link" href="#">8</a></li>
            </ul>
          </nav>
        </div>
        <!-- /.card-footer -->
      </div>
      <!-- /.card -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<%--  <footer class="main-footer">--%>
<%--    <div class="float-right d-none d-sm-block"><b>Version</b> 3.2.0</div>--%>
<%--    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.--%>
<%--  </footer>--%>
  <%@include file="../include/ad_footer.jsp"%>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../asset/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../asset/dist/js/demo.js"></script>
</body>
</html>

