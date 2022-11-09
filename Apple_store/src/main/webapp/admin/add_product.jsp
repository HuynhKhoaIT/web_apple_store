
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | General Form Elements</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../asset/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="../../asset/dist/css/style.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="../include/ad_header.jsp"%>
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
      <!-- Sidebar user panel (optional) -->



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
            <h1>Thêm sản phẩm mới</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../../admin.jsp">Home</a></li>
              <li class="breadcrumb-item active">Thêm sản phẩm</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-8">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Thông tin sản phẩm</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                  <div class="form-group">
                    <label >Tên sản phẩm</label>
                    <input type="text" class="form-control" placeholder="Enter name">
                  </div>
                  <div class="form-group">
                    <label>Mô tả sản phẩm</label>
                    <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                  </div>
                  <div class="form-group">
                    <label>Giá gốc</label>
                    <input type="number" min="0.00" max="10000.00" step="0.01" class="form-control"/>
                  </div>
                  <div class="form-group">
                    <label>Giá bán thường</label>
                    <input type="number" min="0.00" max="10000.00" step="0.01" class="form-control"/>
                  </div>
                  <div class="form-group">
                    <label>Giá khuyến mãi</label>
                    <input type="number" min="0.00" max="10000.00" step="0.01" class="form-control"/>
                  </div>
                  <div class="form-group">
                    <label>Số lượng</label>
                    <input type="number" class="form-control" >
                  </div>
                  <div class="form-group">
                    <label>Ảnh sản phẩm</label>
                    <form action="/action_page.php">
                      <input type="file" name="myfile"><br><br>
                    </form>
                  </div>
                  <div class="form-group">
                    <label >Danh mục cha</label>
                    <select id="mySelect" onchange="myFunction()" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                      <option selected="selected" value="iphone">iphone</option>
                      <option value="ipad">ipad</option>
                      <option value="mac">mac</option>
                      <option value="apple-watch">apple-watch</option>
                      <option value="phu_kien">Phụ kiện</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label >Danh mục con</label>
                    <select id="mySelect" onchange="myFunction()" class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                      <option selected="selected" value="iphone">iphone</option>
                      <option value="ipad">ipad</option>
                      <option value="mac">mac</option>
                      <option value="apple-watch">apple-watch</option>
                    </select>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
          <!-- begin -->
          <!-- Thông số IP -->
          <div class="col-md-4 specifications spec-ip" style="display: block;">
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Thông số kỹ thuật iphone</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form>
                  <div class="form-group">
                    <label>Màn hình</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Camera sau</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Camera Selfie</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Bộ nhớ trong</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>CPU</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Hệ điều hành</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Xuất xứ</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Thời gian ra mắt</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                      </div>
                      <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <!-- Thông số Ipad -->
          <div class="col-md-4 specifications spec-ipad">
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Thông số kỹ thuật ipad</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form>
                  <div class="form-group">
                    <label>Màn hình</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Camera sau</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Camera Selfie</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Bộ nhớ trong</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>RAM</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>CPU</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>GPU</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Hệ điều hành</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Xuất xứ</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Thời gian ra mắt</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                      </div>
                      <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <!-- Thông số Mac -->
          <div class="col-md-4 specifications spec-mac">
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Thông số kỹ thuật mac</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form>
                  <div class="form-group">
                    <label>Màn hình</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Camera Selfie</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>CPU</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>RAM</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Ổ cứng</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Đồ họa</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Hệ điều hành</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Trọng lượng</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Kích thước</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Xuất xứ</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Thời gian ra mắt</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                      </div>
                      <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <!-- Thông số apple watch -->
          <div class="col-md-4 specifications spec-watch">
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Thông số kỹ thuật apple watch</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form>
                  <div class="form-group">
                    <label>Màn hình</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Chất liệu</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Hệ điều hành</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Thời gian sử dụng pin</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Xuất xứ</label>
                    <input type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Thời gian ra mắt</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                      </div>
                      <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric">
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <!-- end -->
          <!-- Thông số phụ kiện -->
          <div class="col-md-4 specifications spec-pk">
            <div class="card card-warning">
              <!-- /.card-body -->
            </div>
          </div>
          <!-- end -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
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
<!-- bs-custom-file-input -->
<script src="../../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="../../asset/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../asset/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    bsCustomFileInput.init();
  });
</script>

<!-- active spec -->
<script>
  function myFunction() {

    var x = document.getElementById("mySelect").value;
    spec = document.getElementsByClassName("specifications");

    if(x=="iphone"){
      for (i = 0; i < spec.length; i++) {
        spec[i].style.display = "none";
      }
      spec[0].style.display = "block";
    }
    else if(x=="ipad"){
      for (i = 0; i < spec.length; i++) {
        spec[i].style.display = "none";
      }
      spec[1].style.display = "block";
    }
    else if(x=="mac"){
      for (i = 0; i < spec.length; i++) {
        spec[i].style.display = "none";
      }
      spec[2].style.display = "block";
    }
    else if(x=="apple-watch"){
      for (i = 0; i < spec.length; i++) {
        spec[i].style.display = "none";
      }
      spec[3].style.display = "block";
    }
    else{
      for (i = 0; i < spec.length; i++) {
        spec[i].style.display = "none";
      }
    }
  }
</script>

</body>
</html>
