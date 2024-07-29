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

<title>Thông tin căn hộ</title>

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
				<div class="col-sm-5 container border">
					<h2 class="text-center">Thông tin căn hộ</h2>
					<div class="row">
						<div class="container mt-3">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Căn hộ</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Mã căn hộ</td>
										<td><form:input path="ch.ma_can_ho" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Diện tích</td>
										<td><form:input path="ch.dien_tich" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Khu</td>
										<td><form:input path="ch.khu" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Tầng</td>
										<td><form:input path="ch.tang" style="width: 50%"
												cssClass="form-control" readonly="true" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Mã chủ sở hữu</td>
										<td><form:input path="ch.chuSoHuu.ma_chu_so_huu"
												style="width: 50%" cssClass="form-control" /></td>
										<td></td>
									</tr>
									<tr>
										<td>Chủ sở hữu</td>
										<td><form:input path="ch.chuSoHuu.ho_ten"
												style="width: 50%" cssClass="form-control" /></td>
										<td><a href="/thongtin/csh/${ch.chuSoHuu.ma_chu_so_huu}">Chi
												tiết</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-5 container border">
					<h2 class="text-center">Thông tin dịch vụ đã đăng kí</h2>
					<div class="row">
						<div class="container mt-3">
							<c:set var="count" value="1" scope="session" />
							<c:forEach var="p" items="${dv}">
								<table class="table table-striped">
									<thead>
										<tr>
											<th># ${count}</th>
											<th>Số lượng đăng kí: ${p.so_luong}</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Mã dịch vụ</td>
											<td>${p.dich_vu.ma_dich_vu}</td>
										</tr>
										<tr>
											<td>Tên dịch vụ</td>
											<td>${p.dich_vu.ten_dich_vu}</td>
										</tr>
										<tr>
											<td>Thuế VAT</td>
											<td>${p.dich_vu.vat}</td>
										</tr>
										<tr>
											<td>Đơn giá</td>
											<td>${p.dich_vu.don_gia}</td>
										</tr>
										<tr>
											<td>Đơn vị</td>
											<td>${p.dich_vu.don_vi}</td>
										</tr>
									</tbody>
								</table>
								<div class="col d-flex justify-content-end mb-3 me-4">
									<button class="btn btn-primary">Xóa</button>
								</div>
								<c:set var="count" value="${count = count + 1}" scope="session" />
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
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