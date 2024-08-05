<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Thông tin chủ sở hữu</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Library bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body>
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="../layout_admin/slidebar.jsp"%>
		<!-- End of Sidebar -->


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Topbar -->
			<%@ include file="../layout_admin/head.jsp"%>
			<!-- End of Topbar -->

			<!-- Main Content -->
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10 container border">
					<div class="row">
						<h2 class="text-center">Thông tin chủ sở hữu</h2>
						<div class="container">
							<form:form action="${csh.ma_chu_so_huu}" method="post" modelAttribute="csh">
							<table class="table table-striped mt-3">
								<thead>
									<tr>
										<th>Chủ sở hữu</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Mã chủ sở hữu</td>
										<td><form:input path="ma_chu_so_huu"
												style="width: 50%" cssClass="form-control" readonly="true" /></td>
									</tr>
									<tr>
										<td>Họ tên</td>
										<td><form:input path="ho_ten" style="width: 50%"
												cssClass="form-control" /></td>
									</tr>
									<tr>
										<td>Số điện thoại</td>
										<td><form:input path="sdt" style="width: 50%"
												cssClass="form-control" /></td>
									</tr>
									<tr>
										<td>Căn cước công dân</td>
										<td><form:input path="cccd" style="width: 50%"
												cssClass="form-control" /></td>
									</tr>
									<tr>
										<td>Ngày sinh</td>
										<td><form:input path="ngay_sinh" style="width: 50%"
												cssClass="form-control" /></td>
									</tr>
									<tr>
										<td>Giới tính</td>
										<td><form:input path="phai" style="width: 50%"
												cssClass="form-control" /></td>
									</tr>
									<tr>
										<td>Tên đăng nhập</td>
										<td><form:input path="dangNhap.ten_dang_nhap"
												style="width: 50%" cssClass="form-control" readonly="true" /></td>
									</tr>
									<tr>
										<td>Mật khẩu</td>
										<td><form:input path="dangNhap.mat_khau"
												style="width: 50%" cssClass="form-control" /></td>
									</tr>
								</tbody>
								
							</table>
<%-- 							<div class="row text-center">${capnhat}</div>
 --%>							<div class="col text-center mb-3">
								<form:button type="submit" class="btn btn-primary">Cập nhật</form:button>
							</div>
							</form:form>
						</div>
					</div>

				</div>
				<div class="col-sm-1"></div>
			</div>
			<div class="row mt-5">
				<div class="col-sm-1"></div>
				<div class="col-sm-10 container border">
					<div class="row">
						<h2>Căn hộ đang sở hữu</h2>
						<div class="row">
							<div class="container mt-3">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Mã căn hộ</th>
											<th>Diện tích</th>
											<th>Khu</th>
											<th>Tầng</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:set var="count" value="1" scope="session" />
										<c:forEach var="p" items="${ch}">
											<tr>
												<td>${count}</td>
												<td>${p.ma_can_ho}</td>
												<td>${p.dien_tich}</td>
												<td>${p.khu}</td>
												<td>${p.tang}</td>
												<td><a href="/admin/canho/${p.ma_can_ho}">Chi tiết</a></td>
											</tr>
											<c:set var="count" value="${count = count + 1}"
												scope="session" />
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="../layout/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<script>
	  var capnhat = `${capnhat}`;

	  if (capnhat !== "") {
	    alert(capnhat);
	  }
</script>
</body>
</html>