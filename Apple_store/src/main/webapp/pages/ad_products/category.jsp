<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 17/10/2022
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | DataTables</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="../../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../asset/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="../../asset/dist/css/style.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../../admin.jsp" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="../../asset/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="../../asset/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="../../asset/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../../admin.jsp" class="brand-link">
      <img src="../../asset/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
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
                <a href="blog.jsp" class="nav-link">
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
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../../admin.jsp">Home</a></li>
              <li class="breadcrumb-item active">Danh mục</li>
            </ol>
          </div>
        </div>
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <!-- <div class="card-header">
                 <h3 class="card-title">DataTable with minimal features & hover style</h3>
                 </div> -->
              <!-- /.card-header -->
            </div>
            <!-- /.card -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Tất cả danh mục</h3>
                <div class="card-add">
                  <a href="../ad_adds/add_category.jsp" class="">
                    <p>Thêm danh mục</p>
                  </a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="tab">
                  <button class="tablinks" onclick="openCity(event, 'iphone')">iPhone</button>
                  <button class="tablinks" onclick="openCity(event, 'ipad')">iPad</button>
                  <button class="tablinks" onclick="openCity(event, 'mac')">MAC</button>
                  <button class="tablinks" onclick="openCity(event, 'apple-watch')">Apple Watch</button>
                  <button class="tablinks" onclick="openCity(event, 'phu-kien')">Phụ Kiện</button>
                </div>
                <!-- danh mục con của ip -->
                <div id="iphone" class="tabcontent">
                  <table id="example1" class="table table-bordered table-striped table-ip">
                    <thead>
                    <tr>
                      <th>Tên danh mục</th>
                      <th>đường dẫn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>iphone 14
                      </td>
                      <td>iphone-14</td>
                    </tr>
                    <tr>
                      <td>iphone 13
                      </td>
                      <td>iphone-13</td>
                    </tr>
                    <tr>
                      <td>iphone 12
                      </td>
                      <td>iphone-12</td>
                    </tr>
                    <tr>
                      <td>iphone 11
                      </td>
                      <td>iphone-11</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                  </table>
                </div>
                <!-- danh mục con của ipad -->
                <div id="ipad" class="tabcontent">
                  <table id="example1" class="table table-bordered table-striped table-ipad">
                    <thead>
                    <tr>
                      <th>Tên danh mục</th>
                      <th>đường dẫn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>ipad pro
                      </td>
                      <td>ipad-pro</td>
                    </tr>
                    <tr>
                      <td>ipad air
                      </td>
                      <td>ipad-air</td>
                    </tr>
                    <tr>
                      <td>ipad mini
                      </td>
                      <td>ipad-mini</td>
                    </tr>
                    <tr>
                      <td>ipad 9th Gen
                      </td>
                      <td>ipad-9th-gen</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                  </table>
                </div>
                <!-- danh mục con của mac -->
                <div id="mac" class="tabcontent">
                  <table id="example1" class="table table-bordered table-striped table-mac">
                    <thead>
                    <tr>
                      <th>Tên danh mục</th>
                      <th>đường dẫn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>macbook pro 14</td>
                      <td>macbook-pro-14</td>
                    </tr>
                    <tr>
                      <td>macbook pro 13</td>
                      <td>macbook-pro-13</td>
                    </tr>
                    <tr>
                      <td>macbook air 13</td>
                      <td>macbook-air-13</td>
                    </tr>
                    <tr>
                      <td>macbook mini</td>
                      <td>macbook-mini</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                  </table>
                </div>
                <!-- danh mục con của apple watch -->
                <div id="apple-watch" class="tabcontent">
                  <table id="example1" class="table table-bordered table-striped table-ip">
                    <thead>
                    <tr>
                      <th>Tên danh mục</th>
                      <th>đường dẫn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>Series 8
                      </td>
                      <td>series-8</td>
                    </tr>
                    <tr>
                      <td>Series 7
                      </td>
                      <td>series-7</td>
                    </tr>
                    <tr>
                      <td>Series 6
                      </td>
                      <td>series-6</td>
                    </tr>
                    <tr>
                      <td>Series se
                      </td>
                      <td>series-se</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                  </table>
                </div>
                <!-- danh mục con của phụ kiện  -->
                <div id="phu-kien" class="tabcontent">
                  <table id="example1" class="table table-bordered table-striped table-Pk">
                    <thead>
                    <tr>
                      <th>Tên danh mục</th>
                      <th>đường dẫn</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>Bao da ôp lưng</td>
                      <td>bao-da-op-lung
                      </td>
                    </tr>
                    <tr>
                      <td>Tai nghe</td>
                      <td>tai-nghe
                      </td>
                    </tr>
                    <tr>
                      <td>Cáp chuyển đổi</td>
                      <td>cap-chuyen-doi
                      </td>
                    </tr>
                    <tr>
                      <td>Sạc dự phòng</td>
                      <td>sac-du-phong
                      </td>
                    </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                  </table>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
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
<!-- DataTables  & Plugins -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../../plugins/jszip/jszip.min.js"></script>
<script src="../../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../../asset/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../asset/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {

    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
<!-- js cho danh mục con -->
<script>
  function openCity(evt, cityName) {
    console.log("1");
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }
</script>
</body>
</html>