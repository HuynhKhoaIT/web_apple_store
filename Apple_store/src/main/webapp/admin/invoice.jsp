<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 18/10/2022
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>AdminLTE 3 | DataTables</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${root}plugins/fontawesome-free/css/all.min.css" />
  <!-- DataTables -->
  <link rel="stylesheet" href="${root}plugins/datatables-bs4/css/dataTables.bootstrap4.min.css" />
  <link rel="stylesheet" href="${root}plugins/datatables-responsive/css/responsive.bootstrap4.min.css" />
  <link rel="stylesheet" href="${root}plugins/datatables-buttons/css/buttons.bootstrap4.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="${root}asset/dist/css/adminlte.min.css" />
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="./ad_header.jsp"%>
    

  <!-- Main Sidebar Container -->
 <%@include file="./sidebar.jsp"%>

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
              <li class="breadcrumb-item active">Tất cả đơn hàng</li>
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
            <div class="callout callout-info">
              <h5><i class="fas fa-info"></i> Ghi chú:</h5>
              Trang này đã được cải tiến để in. Bấm vào nút in ở cuối hóa đơn để kiểm tra.
            </div>


            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <i class="fas fa-globe"></i> AdminLTE, Inc.
                    <small class="float-right">Date: 2/10/2014</small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  Từ
                  <address>
                    <strong>Admin, Inc.</strong><br>
                    1 Võ Văn Ngân<br>
                    Quận Thủ Đức<br>
                    Phone: 0869950090<br>
                    Email: info@gmail.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  Đến
                  <address>
                    <strong>${khachHang.tenKH}</strong><br>
                    ${khachHang.diaChi} <br>
                    Phone:  ${khachHang.soDT}<br>
                    Email: huynhkhoa@gmail.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  <b>Hóa Đơn #${donHang.maDH}</b><br>
                  <br>
                  <b>ID đặt hàng:</b> ${khachHang.maKH}<br>
                  <b>Thanh toán:</b> ${donHang.thoiGian} <br>
                  <b>Tài khoản:</b> 087589494 Chưa làm chỗ này
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>SL</th>
                      <th>Tên sản phẩm</th>
                      <th>Mã sản phẩm #</th>
                      <th>Mô tả</th>
                      <th>Thành tiền</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>1</td>
                      <td>Điện thoại ip 13 pro max</td>
                      <td>455-981-221</td>
                      <td>El snort testosterone trophy driving gloves handsome</td>
                      <td>$64.50</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>apple watch series 7</td>
                      <td>247-925-726</td>
                      <td>Wes Anderson umami biodiesel</td>
                      <td>$50.00</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Macbook pro M2</td>
                      <td>735-845-642</td>
                      <td>Terry Richardson helvetica tousled street art master</td>
                      <td>$10.70</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Củ sạc iP</td>
                      <td>422-568-642</td>
                      <td>Tousled lomo letterpress</td>
                      <td>$25.99</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <div class="col-6">
                  <p class="lead">Amount Due 2/22/2014</p>

                  <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Tổng tiền:</th>
                        <td>$250.30</td>
                      </tr>
                      <tr>
                        <th>phí ship:</th>
                        <td>$5.00</td>
                      </tr>
                      <tr>
                        <th>Tổng đơn hàng:</th>
                        <td>$255.30</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <a href="invoice-print.html" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                  <button type="button" class="btn btn-success float-right"> Xác nhận đơn hàng
                  </button>

                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card"></div>
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Tất cả đơn hàng</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Mã Khách Hàng</th>
                    <th>Mã Đơn Hàng</th>
                    <th>Tổng Tiền</th>
                    <th>Thời Gian</th>
                    <th>Tình Trạng</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>
                      <a href="../ad_accounts/account.jsp">
                        0869950090
                      </a>
                    </td>
                    <td>
                      <a href="./invoices.jsp">
                        1
                      </a>
                    </td>
                    <td>1300000</td>
                    <td>13/04/2022</td>
                    <td>Đã giao</td>
                  </tr>
                  </tbody>

                  <tfoot></tfoot>
                </table>
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
  <%@include file="./ad_footer.jsp"%>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${root}plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${root}plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="${root}plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${root}plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="${root}plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="${root}plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="${root}plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="${root}plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="${root}plugins/jszip/jszip.min.js"></script>
<script src="${root}plugins/pdfmake/pdfmake.min.js"></script>
<script src="${root}plugins/pdfmake/vfs_fonts.js"></script>
<script src="${root}plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="${root}plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="${root}plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="${root}asset/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${root}asset/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1")
            .DataTable({
              responsive: true,
              lengthChange: false,
              autoWidth: false,
              buttons: ["copy", "csv", "excel", "pdf", "print", "colvis"],
            })
            .buttons()
            .container()
            .appendTo("#example1_wrapper .col-md-6:eq(0)");
    $("#example2").DataTable({
      paging: true,
      lengthChange: false,
      searching: false,
      ordering: true,
      info: true,
      autoWidth: false,
      responsive: true,
    });
  });
</script>
</body>
</html>
