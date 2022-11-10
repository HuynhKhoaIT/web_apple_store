<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 17/10/2022
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | DataTables</title>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${root}plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="${root}plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="${root}plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="${root}plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${root}asset/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="${root}asset/dist/css/style.css">
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
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="${root}admin.jsp">Home</a></li>
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
                  <a href="../admin/add_category.jsp" class="">
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
  <%@include file="./ad_footer.jsp"%>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<!-- jQuery -->
<%@include file="./jqueryScript.jsp"%>
<!-- js cho danh mục con ne Khoa Dung XOa nha -->
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