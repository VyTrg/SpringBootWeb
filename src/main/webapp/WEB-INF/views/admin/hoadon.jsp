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
			<div id="content" class="p-4">
				<h3 class="mb-0 mt-5">TẠO HOÁ ĐƠN</h3>

				<hr class="my-4" />

				<h4>
					<strong class="mb-2">Thông tin căn hộ</strong>
				</h4>
				<p>Họ và tên: ${csh.ho_ten}</p>
				<p>Mã khách hàng: ${csh.ma_chu_so_huu}</p>
				<p>Mã căn hộ: ${ch.ma_can_ho}</p>
				<p>Hóa đơn tháng</p>
				<div class="card-body">
					<div class="row mt-5 mb-5">
						<div class="col-sm-12 container border">
							<h2>Hóa đơn dịch vụ</h2>
							<div class="row">
								<div class="container mt-3">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>#</th>
												<th>Mã dịch vụ</th>
												<th>Tên dịch vụ</th>
												<th>Thuế VAT</th>
												<th>Đơn giá</th>
												<th>Đơn vị</th>
												<th>Ngày bắt đầu</th>
												<th>Ngày kết thúc</th>
												<th>Số lượng</th>
												<th>Thành tiền</th>
											</tr>
										</thead>
										<tbody>
											<c:set var="count" value="1" scope="session" />
											<c:forEach var="p" items="${dv}">
												<tr>
													<td>${count}</td>
													<td>${p.dich_vu.ma_dich_vu}</td>
													<td>${p.dich_vu.ten_dich_vu}</td>
													<td>${p.dich_vu.vat}</td>
													<td>${p.dich_vu.don_gia}</td>
													<td>${p.dich_vu.don_vi}</td>
													<td>${p.ngay_bat_dau}</td>
													<td>${p.ngay_ket_thuc}</td>
													<td>${p.so_luong}</td>
													<td>xxx</td>
												</tr>
												<c:set var="count" value="${count = count + 1}"
													scope="session" />
											</c:forEach>
											<tr>
												<th>Tổng cộng</th>
											</tr>
										</tbody>
									</table>
									<div class="col text-center  mb-3">
										<button class="btn btn-primary">Tạo hóa đơn</button>
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