<%@page import="org.json.JSONObject"%>
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

<title>Thông tin</title>

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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Library bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- Library for bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script src="../../../static/js/nhanVienHoaDon.js"></script>

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
			<div id="content" class="p-4">
				<div class="row">
				<div class="col-sm-10 container border">
					
							<div class="row head-receipt p-4 bg-secondary text-white mt-2">
								<div class="col-lg-6"><h2>HOÁ ĐƠN</h2></div>
								<div class="col-lg-6">
									<p>Tên hoá đơn: ${thongtinhoadon.thang} - ${thongtinhoadon.nam}</p>
								</div>
							</div>
							<div class="container">
								<div class="content-receipt">
								<div class="row">
									<h4 class="my-4">Thông tin nhân viên</h4>
									  <div class="mb-4 px-4">
										<div class="card-body">
										  <div class="row">
										  <hr>
											  <div class="row">
												<table class="table">
												  <thead>
												  </thead>
												  <tbody class="js-client-modal-table">
												    <tr>
												      <td><p class="px-2">Họ tên: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.nhanVien.ho_ten}" readonly="true"></td>
												    </tr>
												    <tr>
												      <td><p class="px-2">Sdt: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.nhanVien.sdt}" readonly="true"></td>
												    </tr>
												    <tr>
												      <td><p class="px-2">CCCD: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.nhanVien.cccd}" readonly="true"></td>
												    </tr>
												  </tbody>
												</table>
											  </div>
											<hr class="mt-4	mr-2">
										  <div class="row">
											<div class="col-lg-6">
												<h4>Người nhận</h4>
												<table class="table">
												  <thead>
												  </thead>
												  <tbody class="js-client-modal-table">
												    <tr>
												      <td><p class="px-2">Họ tên: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.maCanHo.chuSoHuu.ho_ten }" readonly="true"></td>
												    </tr>
												    <tr>
												      <td><p class="px-2">Sdt: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.maCanHo.chuSoHuu.sdt  }" readonly="true"></td>
												    </tr>
												    <tr>
												      <td><p class="px-2">CCCD: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.maCanHo.chuSoHuu.cccd  }" readonly="true"></td>
												    </tr>
												  </tbody>
												</table>
											</div>
											<div class="col-lg-6">
												<h4>Căn hộ:</h4>
												<table class="table">
												  <thead>
												  </thead>
												  <tbody class="js-house-modal-table">
												    <tr>
												      <td><p class="px-2">Mã căn hộ: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.maCanHo.ma_can_ho }" readonly="true"></td>
												    </tr>
												    <tr>
												      <td><p class="px-2">Khu: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.maCanHo.khu }" readonly="true"></td>
												    </tr>
												    <tr>
												      <td><p class="px-2">Tầng: </p></td>
												      <td><input type="text" class="form-control" value="${thongtinhoadon.maCanHo.tang }" readonly="true"></td>
												    </tr>
												  </tbody>
												</table>
											</div>
										  </div>
										</div>
									  </div>
										</div>
									<div class="row container">
										<hr>										
									</div>
									
									<div class="container mt-3">
										<form action="/admin/quanlihoadon/laphoadon/${thongtinhoadon.maCanHo.ma_can_ho }" method="post" id="formHoadon">
											<h4>Thông tin dịch vụ</h4>
											<hr>
											
											<table class="table table-striped">
												<thead>
													<tr>
														<th>Stt</th>
														<th>Mã dịch vụ</th>
														<th>Tên dịch vụ</th>
														<th>Thuế VAT</th>
														<th>Đơn giá</th>
														<th>Đơn vị</th>
														<th>Số lượng</th>
														<th>Tổng</th>
													</tr>
												</thead>
												<c:set var="count" value="1" scope="session" />
												<tbody id="remove-modal">
												<c:forEach var="p" items="${chitiethoadon}">
													<tr id="${p.get("ma_dich_vu")}">
														<td>${count}</td>
														<td><input type="text" class="form-control" name="dichvu" value="${p.get("ma_dich_vu").trim()}" readonly="true"></td>
														<td>${p.get("ten_dich_vu")}</td>
														<td>${p.get("vat")}</td>
														<td>${p.get("don_gia")}</td>
														<td>${p.get("don_vi")}</td>
														<td>
															<input type="text" class="form-control" name="soluong" value="${p.get("so_luong")}">
														<td>${p.get("tong")}</td>
													</tr>
													<c:set var="count" value="${count = count + 1}" scope="session" />
												</c:forEach>
												</tbody>
												<tr>
													<th>Tiền nợ</th>
													<td>${thongtinhoadon.tien_no}</td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<th>Tổng cộng</th>
													<td>${thongtinhoadon.tien_thang}</td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</table>
											
											<hr>
											<hr>
		 								<div class="row footer-receipt">
											<div class="col-lg-6">
												<p>Cám ơn đã sử dụng tại chung cư</p>
												<p>Vui lòng đóng phí trước ngày 15 hàng tháng</p>
												<p>Liên hệ ban quản lí nếu có thắc mắc:</p>
											</div>
											<div class="col-lg-6">
												<p>CHUNG CƯ PTIT</p>
												<p>Email: nhom22@gmail.com</p>
												<p>Sdt:(+84) 000 000 0000</p>
											</div>
										</div>
										<button type="submit" class="btn btn-primary d-flex ml-auto mb-4">Lập hoá đơn</button>
										</form>
										</div>
										</div>
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
</body>
</html>