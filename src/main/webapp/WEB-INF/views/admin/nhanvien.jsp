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

<title>Thông tin nhân viên</title>

<!-- Custom fonts for this template-->
<link href="../../../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Library bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>
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
			<div id="content" class="p-3">
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-2">
						<div class="card">
							<img src="../../static/images/avatar.png" alt="" class="">
							<div class="card-body">
								<h4 class="card-title">${nv.ho_ten}</h4>
							</div>
						</div>
					</div>

					<div class="col-sm-8 border">
						<div class="row">
							<h2 class="text-center">Thông tin nhân viên</h2>
							<div class="container mt-3">
								<h4>Thông tin tài khoản</h4>
								<table class="table table-striped mt-3">
									<thead>
									</thead>
									<tbody>
										<tr>
											<th>Tên đăng nhập</th>
											<td><form:input path="nv.dangNhap.ten_dang_nhap"
													style="width: 50%" cssClass="form-control" readonly="true" /></td>
											<td><a href="/admin/doimk">Đổi mật khẩu</a></td>
										</tr>
										<%-- <tr>
											<th>Mật khẩu</th>
											<td><form:input path="nv.dangNhap.mat_khau"
													style="width: 50%" cssClass="form-control" /></td>
											<td><a href="/admin/doimk">Đổi mật khẩu</a></td>
										</tr> --%>

									</tbody>
								</table>
								<h4>Thông tin cá nhân</h4>
								${message}
								<form:form action="/admin/nv/${nv.ma_nhan_vien}"
									modelAttribute="nv" enctype="multipart/form-data">
									<form:hidden path="dangNhap.ten_dang_nhap"
										cssClass="form-control" />
									<table class="table table-striped mt-3">
										<thead>
										</thead>
										<tbody>
											<tr>
												<th>Mã nhân viên</th>
												<td><form:input path="ma_nhan_vien" style="width: 50%"
														cssClass="form-control" readonly="true" /></td>
											</tr>
											<tr>
												<th>Họ và tên</th>
												<td><form:input path="ho_ten" style="width: 50%"
														cssClass="form-control" /></td>
											</tr>
											<tr>
												<th>Số điện thoại</th>
												<td><form:input path="sdt" style="width: 50%"
														cssClass="form-control" /></td>
											<tr>
												<th>Căn cước công dân</th>
												<td><form:input path="cccd" style="width: 50%"
														cssClass="form-control" /></td>
											</tr>
											<tr>
												<th>Ngày sinh</th>
												<td><form:input path="ngay_sinh" style="width: 50%"
														cssClass="form-control" /></td>
											</tr>
											<tr>
												<th>Giới tính</th>
												<td><form:input path="Phai" style="width: 50%"
														cssClass="form-control" /></td>
											</tr>
											<tr>
												<th>Mã phòng ban</th>
												<td><form:input path="phongBan.ma_phong_ban"
														style="width: 50%" cssClass="form-control" /></td>
											</tr>
										</tbody>
									</table>
									<div class="col text-center mb-3">
										<button class="btn btn-primary">Chỉnh sửa</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-1"></div>
				<!-- End of Main Content -->
				<!-- Footer -->
				<%@ include file="../layout_admin/footer.jsp"%>
				<!-- End of Footer -->
			</div>
			<!-- End of Content Wrapper -->
		</div>
</body>
</html>