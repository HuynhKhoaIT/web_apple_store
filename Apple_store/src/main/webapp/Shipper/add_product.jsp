<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | General Form Elements</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${root}plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${root}asset/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="${root}asset/dist/css/style.css">
  <script src="https://cdn.tiny.cloud/1/2bx6jc8z08uypematg3cwy3p25otto1in889fkegl99djs2r/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <%@include file="./ad_header.jsp"%>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <%@include file="./sidebar.jsp"%>
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
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <form method="get" action="Ad_AddProductControl" id="LoaiSPFrom">
            <div class="form-group">
                <label >Danh mục cha</label>
                <select id="mySelect" onchange="myFunction()" class="form-control select2 select2-hidden-accessible"
                        style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="maLoai">
                   <c:forEach items="${listLoaiSP}" var="l">
                       <option value="${l.maLoai}" ${l.maLoai == maLoai ? 'selected' : ''}>${l.tenLoai}</option>
                   </c:forEach>
                </select>
            </div>
        </form>
      <form method="post" action="Ad_AddProductControl" id="AddProductForm" enctype="multipart/form-data">
          <input type="hidden" value="${maLoai}" name="maLoai">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Thông tin sản phẩm</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
<%--                <form>--%>
                  <div class="card-body">
                    <div class="form-group">
                      <label >Tên sản phẩm</label>
                      <input type="text" class="form-control" placeholder="Enter name" name="tensanpham">
                    </div>
                    <div class="form-group">
                      <label>Mô tả sản phẩm</label>
                      <textarea class="form-control tiny" rows="3" placeholder="Enter ..." name="motasanpham"></textarea>
                    </div>
                      <script type="text/javascript">
                          tinymce.init({
                              entity_encoding : "raw"
                          });
                      </script>
                    <div class="form-group">
                      <label>Giá gốc</label>
                      <input type="number" min="0" max="100000000" step="1" class="form-control" name="giagoc"/>
                    </div>
                    <div class="form-group">
                      <label>Giá bán thường</label>
                      <input type="number" min="0" max="100000000" step="1" class="form-control" name="giabanthuong"/>
                    </div>
                    <div class="form-group">
                      <label>Giá khuyến mãi</label>
                      <input type="number" min="0" max="10000000" step="1" class="form-control" name="giakhuyenmai"/>
                    </div>
                    <div class="form-group">
                      <label>Số lượng</label>
                      <input type="number" class="form-control" name="soluong">
                    </div>
                    <div class="form-group">
                      <label>Ảnh sản phẩm</label>
<%--                      <form action="/action_page.php">--%>
                      <form>
                        <input type="file" name="image"><br><br>
                      </form>
                    </div>
                    <div class="form-group">
                      <label >Danh mục con</label>
                      <select  class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true" name="maDM">
                       <c:forEach var="o" items="${listDanhMuc}">
                           <option value="${o.maDM}">${o.tenDM}</option>
                       </c:forEach>
                      </select>
                    </div>
                  </div>
                <div class="card-footer">
                  <button type="submit" form="AddProductForm" class="btn btn-primary">Submit</button>
                </div>
                  <!-- /.card-body -->
<%--                  <div class="card-footer">--%>
<%--                    <button type="submit" class="btn btn-primary">Submit</button>--%>
<%--                  </div>--%>
<%--                </form>--%>
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
<%--                  <form>--%>
                    <div class="form-group">
                      <label>Màn hình</label>
                      <input type="text" class="form-control" name="manhinhIP">
                    </div>
                    <div class="form-group">
                      <label>Camera sau</label>
                      <input type="text" class="form-control" name="camerasauIP">
                    </div>
                    <div class="form-group">
                      <label>Camera Selfie</label>
                      <input type="text" class="form-control" name="camereselfieIP">
                    </div>
                    <div class="form-group">
                      <label>Bộ nhớ trong</label>
                      <input type="text" class="form-control" name="bonhotrongIP">
                    </div>
                    <div class="form-group">
                      <label>CPU</label>
                      <input type="text" class="form-control" name="cpuIP">
                    </div>
                    <div class="form-group">
                      <label>Hệ điều hành</label>
                      <input type="text" class="form-control" name="hedieuhanhIP">
                    </div>
                    <div class="form-group">
                      <label>Xuất xứ</label>
                      <input type="text" class="form-control" name="xuatxuIP">
                    </div>
                    <div class="form-group">
                      <label>Thời gian ra mắt</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                        </div>
                        <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric" name="thoigianramatIP">
                      </div>
                    </div>
<%--                  </form>--%>
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
<%--                  <form>--%>
                    <div class="form-group">
                      <label>Màn hình</label>
                      <input type="text" class="form-control" name="manhinhIPAD">
                    </div>
                    <div class="form-group">
                      <label>Camera sau</label>
                      <input type="text" class="form-control" name="camerasauIPAD">
                    </div>
                    <div class="form-group">
                      <label>Camera Selfie</label>
                      <input type="text" class="form-control" name="cameraselfieIPAD">
                    </div>
                    <div class="form-group">
                      <label>Bộ nhớ trong</label>
                      <input type="text" class="form-control" name="bonhotrongIPAD">
                    </div>
                    <div class="form-group">
                      <label>RAM</label>
                      <input type="text" class="form-control" name="ramIPAD">
                    </div>
                    <div class="form-group">
                      <label>CPU</label>
                      <input type="text" class="form-control" name="cpuIPAD">
                    </div>
                    <div class="form-group">
                      <label>GPU</label>
                      <input type="text" class="form-control" name="gpuIPAD">
                    </div>
                    <div class="form-group">
                      <label>Hệ điều hành</label>
                      <input type="text" class="form-control" name="hedieuhanhIPAD">
                    </div>
                    <div class="form-group">
                      <label>Xuất xứ</label>
                      <input type="text" class="form-control" name="xuatxuIPAD">
                    </div>
                    <div class="form-group">
                      <label>Thời gian ra mắt</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                        </div>
                        <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric" name="thoigianramatIPAD">
                      </div>
                    </div>
<%--                  </form>--%>
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
<%--                  <form>--%>
                    <div class="form-group">
                      <label>Màn hình</label>
                      <input type="text" class="form-control" name="manhinhMAC">
                    </div>
                    <div class="form-group">
                      <label>Camera Selfie</label>
                      <input type="text" class="form-control" name="cameraselfieMAC">
                    </div>
                    <div class="form-group">
                      <label>CPU</label>
                      <input type="text" class="form-control" name="cpuMAC">
                    </div>
                    <div class="form-group">
                      <label>RAM</label>
                      <input type="text" class="form-control" name="ramMAC">
                    </div>
                    <div class="form-group">
                      <label>Ổ cứng</label>
                      <input type="text" class="form-control" name="ocungMAC">
                    </div>
                    <div class="form-group">
                      <label>Đồ họa</label>
                      <input type="text" class="form-control" name="dohoaMAC">
                    </div>
                    <div class="form-group">
                      <label>Hệ điều hành</label>
                      <input type="text" class="form-control" name="hedieuhanhMAC">
                    </div>
                    <div class="form-group">
                      <label>Trọng lượng</label>
                      <input type="text" class="form-control"name="trongluongMAC">
                    </div>
                    <div class="form-group">
                      <label>Kích thước</label>
                      <input type="text" class="form-control" name="kichthuocMAC">
                    </div>
                    <div class="form-group">
                      <label>Xuất xứ</label>
                      <input type="text" class="form-control" name="xuatxuMAC">
                    </div>
                    <div class="form-group">
                      <label>Thời gian ra mắt</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                        </div>
                        <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric" name="thoigianramatMAC">
                      </div>
                    </div>
<%--                  </form>--%>
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
<%--                  <form>--%>
                    <div class="form-group">
                      <label>Màn hình</label>
                      <input type="text" class="form-control" name="manhinhWATCH">
                    </div>
                    <div class="form-group">
                      <label>Chất liệu</label>
                      <input type="text" class="form-control" name="chatlieuWATCH">
                    </div>
                    <div class="form-group">
                      <label>Hệ điều hành</label>
                      <input type="text" class="form-control" name="hedieuhanhWATCH">
                    </div>
                    <div class="form-group">
                      <label>Thời gian sử dụng pin</label>
                      <input type="text" class="form-control" name="thoigiansudungpinWATCH">
                    </div>
                    <div class="form-group">
                      <label>Xuất xứ</label>
                      <input type="text" class="form-control" name="xuatxuWATCH">
                    </div>
                    <div class="form-group">
                      <label>Thời gian ra mắt</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                        </div>
                        <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask="" inputmode="numeric" name="thoigianramatWATCH">
                      </div>
                    </div>
<%--                  </form>--%>
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
        </div>
      </form>
        <script>
            var x = document.getElementById("mySelect").value;
            spec = document.getElementsByClassName("specifications");

            if(x=="1"){
                for (i = 0; i < spec.length; i++) {
                    spec[i].style.display = "none";
                }
                    spec[0].style.display = "block";
                }
                else if(x=="2"){
                    for (i = 0; i < spec.length; i++) {
                        spec[i].style.display = "none";
                    }
                    spec[1].style.display = "block";
                }
                else if(x=="4"){
                    for (i = 0; i < spec.length; i++) {
                        spec[i].style.display = "none";
                    }
                    spec[2].style.display = "block";
                }
                else if(x=="3"){
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
        </script>
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
<!-- bs-custom-file-input -->
<script src="${root}plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="${root}asset/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${root}asset/dist/js/demo.js"></script>
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

    if(x=="1"){
      // for (i = 0; i < spec.length; i++) {
      //   spec[i].style.display = "none";
      // }
      // spec[0].style.display = "block";
        document.getElementById("LoaiSPFrom").submit();
    }
    else if(x=="2"){
      // for (i = 0; i < spec.length; i++) {
      //   spec[i].style.display = "none";
      // }
      // spec[1].style.display = "block";
        document.getElementById("LoaiSPFrom").submit();
    }
    else if(x=="4"){
      // for (i = 0; i < spec.length; i++) {
      //   spec[i].style.display = "none";
      // }
      // spec[2].style.display = "block";
        document.getElementById("LoaiSPFrom").submit();
    }
    else if(x=="3"){
      // for (i = 0; i < spec.length; i++) {
      //   spec[i].style.display = "none";
      // }
      // spec[3].style.display = "block";
        document.getElementById("LoaiSPFrom").submit();
    }
    else{
      // for (i = 0; i < spec.length; i++) {
      //   spec[i].style.display = "none";
        document.getElementById("LoaiSPFrom").submit();
    }

  }
</script>
</body>
</html>